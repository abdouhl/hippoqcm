// Fits FSRS weights to the review log, for each user with enough reviews and for everyone together
// (used by users without enough of their own), and stores them in fsrs_params. The app picks them up
// at its next sync (fsrs_w in /api/snapshot).
//
// Usage: bun scripts/optimize.ts [--remote] [--dry-run] [--min=400] [--tz=60]
//   --remote   read and write the production database (default: the local one)
//   --dry-run  print the weights without saving them
//   --min      reviews needed before fitting (per user, and for everyone)
//   --tz       minutes east of UTC where days start at midnight (60 = Algeria)

import { computeParameters, FSRSBindingItem, FSRSBindingReview } from "@open-spaced-repetition/binding";
import { mkdtempSync, writeFileSync } from "node:fs";
import { tmpdir } from "node:os";
import { join } from "node:path";

const args = process.argv.slice(2);
const flag = (name: string) => args.includes(`--${name}`);
const option = (name: string, fallback: number) => {
  const arg = args.find((a) => a.startsWith(`--${name}=`));
  return arg ? Number(arg.split("=")[1]) : fallback;
};
const where = flag("remote") ? "--remote" : "--local";
const MIN_REVIEWS = option("min", 400);
const TZ_MS = option("tz", 60) * 60_000;
const DAY = 86_400_000;

async function d1(...cmd: string[]): Promise<unknown[]> {
  const proc = Bun.spawn(["bunx", "wrangler", "d1", "execute", "DB", where, "--json", ...cmd], { stdout: "pipe", stderr: "inherit" });
  const out = await new Response(proc.stdout).text();
  if ((await proc.exited) !== 0) throw new Error(`wrangler d1 execute failed:\n${out}`);
  return (JSON.parse(out) as { results: unknown[] }[])[0].results;
}

type Row = { user_id: number; question_id: number; rating: number; reviewed_at: number };
const rows = (await d1(
  "--command",
  "SELECT user_id, question_id, rating, reviewed_at FROM review_log WHERE user_id IS NOT NULL ORDER BY user_id, question_id, reviewed_at",
)) as Row[];
console.log(`${rows.length} reviews`);

// One training item per review after the first: the card's history up to and including it, with the
// days between reviews counted on local calendar days (same day = 0), as Anki and fsrs-rs do.
function items(reviews: Row[]): FSRSBindingItem[] {
  const out: FSRSBindingItem[] = [];
  let history: FSRSBindingReview[] = [];
  let prev: Row | null = null;
  for (const r of reviews) {
    if (!prev || prev.question_id !== r.question_id) history = [];
    const day = Math.floor((r.reviewed_at + TZ_MS) / DAY);
    const prevDay = prev && prev.question_id === r.question_id ? Math.floor((prev.reviewed_at + TZ_MS) / DAY) : day;
    history = [...history, new FSRSBindingReview(r.rating, day - prevDay)];
    // Items with only same-day reviews teach the long-term model nothing.
    if (history.length > 1 && history.some((h, i) => i > 0 && h.deltaT > 0)) out.push(new FSRSBindingItem(history));
    prev = r;
  }
  return out;
}

async function fit(label: string, reviews: Row[]): Promise<number[] | null> {
  if (reviews.length < MIN_REVIEWS) {
    console.log(`${label}: ${reviews.length} reviews, need ${MIN_REVIEWS} — skipped`);
    return null;
  }
  const train = items(reviews);
  if (train.length === 0) {
    console.log(`${label}: no reviews on different days yet — skipped`);
    return null;
  }
  const w = await computeParameters(train, { enableShortTerm: true, numRelearningSteps: 1 });
  console.log(`${label}: ${reviews.length} reviews → [${w.map((x) => x.toFixed(4)).join(", ")}]`);
  return w;
}

const byUser = new Map<number, Row[]>();
for (const r of rows) {
  if (!byUser.has(r.user_id)) byUser.set(r.user_id, []);
  byUser.get(r.user_id)!.push(r);
}

const now = Date.now();
const fitted: { user: number | null; w: number[]; reviews: number }[] = [];
const global = await fit("everyone", rows);
if (global) fitted.push({ user: null, w: global, reviews: rows.length });
for (const [user, reviews] of byUser) {
  const w = await fit(`user ${user}`, reviews);
  if (w) fitted.push({ user, w, reviews: reviews.length });
}

if (fitted.length === 0 || flag("dry-run")) {
  console.log(fitted.length === 0 ? "Nothing to save." : "Dry run: nothing saved.");
  process.exit(0);
}

const sql = fitted
  .map(({ user, w, reviews }) =>
    user == null
      ? `DELETE FROM fsrs_params WHERE user_id IS NULL;\n` +
        `INSERT INTO fsrs_params (user_id, w, reviews, updated_at) VALUES (NULL, '${JSON.stringify(w)}', ${reviews}, ${now});`
      : `INSERT INTO fsrs_params (user_id, w, reviews, updated_at) VALUES (${user}, '${JSON.stringify(w)}', ${reviews}, ${now})\n` +
        `  ON CONFLICT (user_id) DO UPDATE SET w = excluded.w, reviews = excluded.reviews, updated_at = excluded.updated_at;`,
  )
  .join("\n");
const file = join(mkdtempSync(join(tmpdir(), "fsrs-")), "params.sql");
writeFileSync(file, sql + "\n");
await d1("--file", file);
console.log(`Saved ${fitted.length} parameter set${fitted.length === 1 ? "" : "s"} (${where.slice(2)}).`);
