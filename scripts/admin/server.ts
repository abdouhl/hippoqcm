// Local admin panel for question content: `bun run admin`, then open http://localhost:8790.
// Never deployed. Every edit is applied to the local D1 database and appended to a pending
// migration (migrations/NNNN_admin_edits.sql), so `bun run deploy` replays it on production.
// Edits also flow back into the source-of-truth JSON in data/ where the question can be found.

import { Database } from "bun:sqlite";
import { appendFileSync, existsSync, readFileSync, readdirSync, statSync } from "node:fs";
import index from "./index.html";

const PORT = 8790;
const LABELS = ["A", "B", "C", "D", "E"];
const BATCH_SUFFIX = "_admin_edits.sql";
const D1_DIR = ".wrangler/state/v3/d1/miniflare-D1DatabaseObject";

// --- Local database -------------------------------------------------------------------------

// Wrangler keeps one SQLite file per database id; an old id can leave a stale file behind.
function localDbPath() {
  const files = existsSync(D1_DIR)
    ? readdirSync(D1_DIR).filter((f) => f.endsWith(".sqlite") && f !== "metadata.sqlite").map((f) => `${D1_DIR}/${f}`)
    : [];
  const live = files
    .filter((f) => new Database(f, { readonly: true }).query("SELECT 1 FROM sqlite_master WHERE name = 'd1_migrations'").get())
    .sort((a, b) => statSync(b).mtimeMs - statSync(a).mtimeMs);
  if (!live.length) throw new Error("No local D1 database — run `bun run db:migrate:local` first");
  return live[0];
}

const db = new Database(localDbPath());
db.run("PRAGMA foreign_keys = ON"); // D1 enforces them; deletes must cascade the same way locally.

// --- SQL literals (same quoting as the migration generators) ---------------------------------

const q = (s: string | null | undefined) => (s == null ? "NULL" : `'${s.replaceAll("'", "''")}'`);
const n = (v: number | null | undefined) => (v == null ? "NULL" : String(Math.trunc(Number(v))));

// --- Production (remote D1) through wrangler -------------------------------------------------

// Wrangler runs fail when several overlap, so they queue up one at a time.
let wranglerQueue: Promise<unknown> = Promise.resolve();
function remote<T>(sql: string): Promise<T[]> {
  const run = async () => {
    const proc = Bun.spawn(["bunx", "wrangler", "d1", "execute", "DB", "--remote", "--json", "--command", sql], {
      stdout: "pipe",
      stderr: "pipe",
    });
    const [out, err] = await Promise.all([new Response(proc.stdout).text(), new Response(proc.stderr).text()]);
    if ((await proc.exited) !== 0) throw new Error((err || out).trim().split("\n").slice(-3).join(" "));
    return JSON.parse(out.slice(out.indexOf("[")))[0].results as T[];
  };
  const result = wranglerQueue.then(run, run);
  wranglerQueue = result.catch(() => {});
  return result;
}

// Migrations already applied on production, refreshed at most once a minute.
let remoteApplied: { names: Set<string>; at: number; error?: string } = { names: new Set(), at: 0 };
let refreshing: Promise<typeof remoteApplied> | null = null;
function refreshRemoteApplied(force = false) {
  if (!force && Date.now() - remoteApplied.at < 60_000) return Promise.resolve(remoteApplied);
  refreshing ??= remote<{ name: string }>("SELECT name FROM d1_migrations")
    .then((rows) => (remoteApplied = { names: new Set(rows.map((r) => r.name)), at: Date.now() }))
    .catch((e) => (remoteApplied = { names: remoteApplied.names, at: Date.now(), error: String((e as Error).message) }))
    .finally(() => (refreshing = null));
  return refreshing;
}

// --- Pending migration batch -----------------------------------------------------------------

const migrationFiles = () => readdirSync("migrations").filter((f) => /^\d{4}_.*\.sql$/.test(f)).sort();

// The batch keeps growing while it's the newest migration and production hasn't run it yet.
async function openBatch(): Promise<string | null> {
  const last = migrationFiles().at(-1);
  if (!last?.endsWith(BATCH_SUFFIX)) return null;
  const { names } = await refreshRemoteApplied();
  return names.has(last) ? null : last;
}

function batchStatus(name: string | null) {
  // One "-- Q12 …" / "-- L3 …" comment heads each recorded edit.
  const edits = name ? readFileSync(`migrations/${name}`, "utf8").split("\n").filter((l) => /^-- [QL]\d/.test(l)).length : 0;
  return { file: name, edits, remote_checked_at: remoteApplied.at || null, remote_error: remoteApplied.error ?? null };
}

// Apply statements locally and append them to the batch, creating it (and marking it as applied
// locally, so wrangler doesn't replay it) when needed.
async function record(comment: string, statements: string[]) {
  if (!statements.length) return;
  let name = await openBatch();
  const created = !name;
  if (!name) {
    const next = Number(migrationFiles().at(-1)?.slice(0, 4) ?? 0) + 1;
    name = `${String(next).padStart(4, "0")}${BATCH_SUFFIX}`;
  }
  db.transaction(() => {
    for (const s of statements) db.run(s);
    if (created) db.run("INSERT INTO d1_migrations (name) VALUES (?)", [name]);
  })();
  if (created) appendFileSync(`migrations/${name}`, "-- Edits made in the local admin panel (scripts/admin). Ids match production: both run the same migrations.\n");
  appendFileSync(`migrations/${name}`, `\n-- ${comment.replaceAll("\n", " ")}\n${statements.join("\n")}\n`);
}

// --- data/ JSON sync -------------------------------------------------------------------------

type JsonQuestion = { stem: string; options: string[]; answer: string; explanation?: string; image?: string; page?: number };
type Bank = { semester: number; module: string; source: string; questions: JsonQuestion[] };
type Draft = { semester: number; module: string; title: string; pdf: string; exam_questions: string[]; questions: JsonQuestion[] };

// The data/ files are hand-formatted (banks one question per line, drafts indented, short arrays
// inline), so edits splice just the changed span and leave the rest of the file byte for byte.

// [start, end) of each element of the JSON array whose "[" is at `open`.
function arrayItems(text: string, open: number) {
  const items: [number, number][] = [];
  const trimmedEnd = (i: number) => text.slice(0, i).trimEnd().length;
  let depth = 0, inString = false, start = -1;
  for (let i = open + 1; i < text.length; i++) {
    const c = text[i];
    if (inString) {
      if (c === "\\") i++;
      else if (c === '"') inString = false;
      continue;
    }
    if (depth === 0) {
      if (c === "]") {
        if (start >= 0) items.push([start, trimmedEnd(i)]);
        return { items, close: i };
      }
      if (c === ",") {
        items.push([start, trimmedEnd(i)]);
        start = -1;
        continue;
      }
      if (start < 0 && !/\s/.test(c)) start = i;
    }
    if (c === '"') inString = true;
    else if (c === "[" || c === "{") depth++;
    else if (c === "]" || c === "}") depth--;
  }
  throw new Error("Unterminated array");
}

// Index of the "[" opening a top-level array.
const arrayOpen = (text: string, key: string) => {
  const at = text.indexOf(`"${key}": [`);
  if (at < 0) throw new Error(`No "${key}" array`);
  return at + key.length + 4;
};

// One question object, written like its neighbours: flat on one line, or indented one key per
// line with string arrays inline when they fit.
function formatQuestion(q: JsonQuestion, flat: boolean, indent: number) {
  const pairs = Object.entries(q);
  const inline = (v: unknown) => (Array.isArray(v) ? `[${v.map((x) => JSON.stringify(x)).join(", ")}]` : JSON.stringify(v));
  if (flat) return `{${pairs.map(([k, v]) => `${JSON.stringify(k)}: ${inline(v)}`).join(", ")}}`;
  const pad = " ".repeat(indent + 2);
  const lines = pairs.map(([k, v]) => {
    const line = `${pad}${JSON.stringify(k)}: ${inline(v)}`;
    if (!Array.isArray(v) || line.length <= 110) return line;
    return `${pad}${JSON.stringify(k)}: [\n${v.map((x) => `${pad}  ${JSON.stringify(x)}`).join(",\n")}\n${pad}]`;
  });
  return `{\n${lines.join(",\n")}\n${" ".repeat(indent)}}`;
}

type JsonFile<T> = { path: string; data: T; text: string };

async function jsonFiles<T>(dir: string) {
  const out: JsonFile<T>[] = [];
  for (const f of readdirSync(dir).filter((f) => f.endsWith(".json")).sort()) {
    const text = await Bun.file(`${dir}/${f}`).text();
    out.push({ path: `${dir}/${f}`, data: JSON.parse(text), text });
  }
  return out;
}

// Rewrite question i of a file (null deletes it).
async function writeQuestion(file: JsonFile<{ questions: JsonQuestion[] }>, i: number, q: JsonQuestion | null) {
  const { text } = file;
  const { items } = arrayItems(text, arrayOpen(text, "questions"));
  const [start, end] = items[i];
  let next: string;
  if (q) {
    const lineStart = text.lastIndexOf("\n", start) + 1;
    next = text.slice(0, start) + formatQuestion(q, !text.slice(start, end).includes("\n"), start - lineStart) + text.slice(end);
  } else {
    // Take the separator with it: the comma before, or after for the first item.
    const [from, to] = i > 0 ? [items[i - 1][1], end] : items.length > 1 ? [start, items[1][0]] : [start, end];
    next = text.slice(0, from) + text.slice(to);
  }
  JSON.parse(next); // never write a broken file
  await Bun.write(file.path, next);
}

async function writeExamKeys(file: JsonFile<Draft>, keys: string[]) {
  const { text } = file;
  const open = arrayOpen(text, "exam_questions");
  const { close } = arrayItems(text, open);
  const body = keys.length ? `[\n${keys.map((k) => `    ${JSON.stringify(k)}`).join(",\n")}\n  ]` : "[]";
  const next = text.slice(0, open) + body + text.slice(close + 1);
  JSON.parse(next);
  await Bun.write(file.path, next);
}

type QuestionRow = { id: number; module_id: number; source: string | null; origin: "exam" | "generated" };
const moduleOf = (id: number) => db.query("SELECT semester, name FROM modules WHERE id = ?").get(id) as { semester: number; name: string };

// The JSON file and index holding a DB question, or why it can't be found.
async function locate(row: QuestionRow) {
  const m = moduleOf(row.module_id);
  if (row.origin === "exam") {
    const match = row.source?.match(/^(.*) Q(\d+)$/);
    if (!match) return { error: `source "${row.source}" isn't an exam key` };
    const file = (await jsonFiles<Bank>("data")).find(
      (f) => f.data.semester === m.semester && f.data.module === m.name && f.data.source === match[1],
    );
    const i = Number(match[2]) - 1;
    if (!file || !file.data.questions[i]) return { error: `no bank question for ${row.source}` };
    return { file, i };
  }
  const title = row.source?.replace(/^Lesson: /, "");
  const file = (await jsonFiles<Draft>("data/lessons")).find(
    (f) => f.data.semester === m.semester && f.data.module === m.name && f.data.title === title,
  );
  if (!file) return { error: `no lesson draft titled "${title}"` };
  const ids = (db.query("SELECT id FROM questions WHERE module_id = ? AND origin = 'generated' AND source = ? ORDER BY id")
    .all(row.module_id, row.source) as { id: number }[]).map((r) => r.id);
  // Questions only map by order while the draft and the DB hold the same set.
  if (ids.length !== file.data.questions.length) return { error: `${file.path} has ${file.data.questions.length} questions, DB has ${ids.length}` };
  return { file, i: ids.indexOf(row.id) };
}

// Apply an edit (or "delete") to the question's JSON copy.
async function syncJson(row: QuestionRow, edit: ((q: JsonQuestion) => void) | "delete"): Promise<string> {
  const found = await locate(row);
  if ("error" in found) return `JSON not updated: ${found.error}`;
  const file = found.file as JsonFile<{ questions: JsonQuestion[] }>;
  const q = file.data.questions[found.i];
  if (edit !== "delete") edit(q);
  await writeQuestion(file, found.i, edit === "delete" ? null : q);
  return `Updated ${file.path}`;
}

// --- Reads -----------------------------------------------------------------------------------

type OptionRow = { label: string; text: string; is_correct: 0 | 1 };

function questionsWhere(where: string, params: (string | number)[], limit = 300) {
  const rows = db.query(
    `SELECT q.id, q.module_id, q.stem, q.explanation, q.source, q.image, q.origin, q.pdf_page, q.flagged,
            (SELECT l.pdf FROM question_lessons ql JOIN lessons l ON l.id = ql.lesson_id
             WHERE ql.question_id = q.id ORDER BY l.position LIMIT 1) AS pdf,
            (SELECT json_group_array(lesson_id) FROM question_lessons WHERE question_id = q.id) AS lesson_ids,
            (SELECT json_group_array(json_object('label', label, 'text', text, 'is_correct', is_correct))
             FROM (SELECT * FROM options WHERE question_id = q.id ORDER BY label)) AS options,
            (SELECT COUNT(*) FROM review_log WHERE question_id = q.id) AS reviews,
            (SELECT SUM(correct) FROM review_log WHERE question_id = q.id) AS correct
     FROM questions q WHERE ${where} ORDER BY q.module_id, q.id LIMIT ${limit}`,
  ).all(...params) as Record<string, unknown>[];
  return rows.map((r) => ({ ...r, lesson_ids: JSON.parse(r.lesson_ids as string), options: JSON.parse(r.options as string) }));
}

function meta() {
  return {
    modules: db.query(
      `SELECT m.id, m.semester, m.name, COUNT(q.id) AS questions,
              COALESCE(SUM(q.origin = 'exam'), 0) AS exam, COALESCE(SUM(q.origin = 'generated'), 0) AS generated,
              COALESCE(SUM(q.flagged), 0) AS flagged
       FROM modules m LEFT JOIN questions q ON q.module_id = m.id
       GROUP BY m.id ORDER BY m.semester, m.name`,
    ).all(),
    lessons: db.query(
      `SELECT l.id, l.module_id, l.title, l.pdf, l.position, COUNT(ql.question_id) AS questions
       FROM lessons l LEFT JOIN question_lessons ql ON ql.lesson_id = l.id
       GROUP BY l.id ORDER BY l.module_id, l.position`,
    ).all(),
  };
}

// --- Writes ----------------------------------------------------------------------------------

type QuestionPatch = {
  stem?: string;
  explanation?: string | null;
  image?: string | null;
  pdf_page?: number | null;
  flagged?: boolean;
  options?: OptionRow[];
  lesson_ids?: number[];
};

const questionRow = (id: number) =>
  db.query("SELECT id, module_id, source, origin, flagged FROM questions WHERE id = ?").get(id) as (QuestionRow & { flagged: number }) | null;

async function patchQuestion(id: number, patch: QuestionPatch) {
  const row = questionRow(id);
  if (!row) throw new Error(`No question ${id}`);
  const notes: string[] = [];

  if (patch.stem !== undefined && !patch.stem.trim()) throw new Error("Stem can't be empty");
  if (patch.options) {
    const opts = patch.options;
    if (opts.length < 2 || opts.length > 5) throw new Error("A question needs 2 to 5 options");
    if (opts.some((o, i) => o.label !== LABELS[i] || !o.text.trim())) throw new Error("Options must be A, B, C… with text");
    if (!opts.some((o) => o.is_correct)) throw new Error("At least one option must be correct");
  }
  if (patch.image && !existsSync(`public/images/${patch.image}`)) notes.push(`warning: public/images/${patch.image} doesn't exist`);

  const sets: string[] = [];
  if (patch.stem !== undefined) sets.push(`stem = ${q(patch.stem)}`);
  if (patch.explanation !== undefined) sets.push(`explanation = ${q(patch.explanation || null)}`);
  if (patch.image !== undefined) sets.push(`image = ${q(patch.image || null)}`);
  if (patch.pdf_page !== undefined) sets.push(`pdf_page = ${n(patch.pdf_page)}`);
  if (patch.flagged !== undefined) sets.push(`flagged = ${patch.flagged ? 1 : 0}`);

  const statements: string[] = [];
  if (sets.length) statements.push(`UPDATE questions SET ${sets.join(", ")} WHERE id = ${id};`);
  if (patch.options) {
    statements.push(
      `DELETE FROM options WHERE question_id = ${id};`,
      `INSERT INTO options (question_id, label, text, is_correct) VALUES\n` +
        patch.options.map((o) => `  (${id}, '${o.label}', ${q(o.text)}, ${o.is_correct ? 1 : 0})`).join(",\n") + ";",
    );
  }

  // Lesson links: exam questions also live in their lessons' draft exam_questions.
  const linkChanges: { lesson: number; add: boolean }[] = [];
  if (patch.lesson_ids) {
    const own = (db.query("SELECT id FROM lessons WHERE module_id = ?").all(row.module_id) as { id: number }[]).map((r) => r.id);
    const foreign = patch.lesson_ids.filter((l) => !own.includes(l));
    if (foreign.length) throw new Error(`Lesson ${foreign.join(", ")} isn't in this question's module`);
    const current = (db.query("SELECT lesson_id FROM question_lessons WHERE question_id = ?").all(id) as { lesson_id: number }[]).map((r) => r.lesson_id);
    for (const l of patch.lesson_ids.filter((l) => !current.includes(l))) {
      statements.push(`INSERT OR IGNORE INTO question_lessons (question_id, lesson_id) VALUES (${id}, ${n(l)});`);
      linkChanges.push({ lesson: l, add: true });
    }
    for (const l of current.filter((l) => !patch.lesson_ids!.includes(l))) {
      statements.push(`DELETE FROM question_lessons WHERE question_id = ${id} AND lesson_id = ${l};`);
      linkChanges.push({ lesson: l, add: false });
    }
  }

  const what = Object.keys(patch).filter((k) => k !== "lesson_ids" || linkChanges.length);
  await record(`Q${id} [${row.source}]: ${what.join(", ")}`, statements);

  const content = patch.stem !== undefined || patch.explanation !== undefined || patch.image !== undefined || patch.pdf_page !== undefined || patch.options;
  // The DB edit is recorded by now; JSON trouble is reported, not thrown.
  const tryJson = async (fn: () => Promise<string | string[]>) => {
    try { notes.push(...[await fn()].flat()); } catch (e) { notes.push(`JSON not updated: ${(e as Error).message}`); }
  };
  if (content) {
    await tryJson(() => syncJson(row, (jq) => {
      if (patch.stem !== undefined) jq.stem = patch.stem;
      if (patch.explanation !== undefined) patch.explanation ? (jq.explanation = patch.explanation) : delete jq.explanation;
      if (patch.image !== undefined) patch.image ? (jq.image = patch.image) : delete jq.image;
      if (patch.pdf_page !== undefined && row.origin === "generated" && patch.pdf_page) jq.page = patch.pdf_page;
      if (patch.options) {
        jq.options = patch.options.map((o) => o.text);
        jq.answer = patch.options.filter((o) => o.is_correct).map((o) => o.label).join("");
      }
    }));
  }
  if (linkChanges.length && row.origin === "exam") await tryJson(() => syncLessonLinks(row, linkChanges));
  return notes;
}

async function syncLessonLinks(row: QuestionRow, changes: { lesson: number; add: boolean }[]) {
  const notes: string[] = [];
  const drafts = await jsonFiles<Draft>("data/lessons");
  for (const { lesson, add } of changes) {
    const l = db.query("SELECT l.title, m.semester, m.name FROM lessons l JOIN modules m ON m.id = l.module_id WHERE l.id = ?").get(lesson) as
      { title: string; semester: number; name: string } | null;
    const file = l && drafts.find((f) => f.data.semester === l.semester && f.data.module === l.name && f.data.title === l.title);
    if (!file) { notes.push(`JSON not updated: no draft for lesson ${lesson}`); continue; }
    const keys = file.data.exam_questions.filter((k) => k !== row.source);
    if (add) keys.push(row.source!);
    await writeExamKeys(file, keys);
    notes.push(`Updated ${file.path}`);
  }
  return notes;
}

async function deleteQuestion(id: number) {
  const row = questionRow(id);
  if (!row) throw new Error(`No question ${id}`);
  // Exam keys are positional ("… Q7"), so the bank keeps the question; a lesson draft just drops it.
  // Before the DB delete: lesson drafts map questions by their order among the lesson's DB rows.
  const note = row.origin === "generated"
    ? await syncJson(row, "delete").catch((e) => `JSON not updated: ${(e as Error).message}`)
    : "Bank JSON kept as is: exam keys are positional";
  await record(`Q${id} [${row.source}]: delete`, [`DELETE FROM questions WHERE id = ${id};`]);
  return [note];
}

async function patchLesson(id: number, patch: { title?: string; position?: number }) {
  const l = db.query("SELECT l.*, m.semester, m.name AS module FROM lessons l JOIN modules m ON m.id = l.module_id WHERE l.id = ?").get(id) as
    { id: number; module_id: number; title: string; semester: number; module: string } | null;
  if (!l) throw new Error(`No lesson ${id}`);
  const statements: string[] = [];
  const sets: string[] = [];
  if (patch.title !== undefined && patch.title.trim() && patch.title !== l.title) {
    sets.push(`title = ${q(patch.title)}`);
    // Generated questions point at their lesson by title.
    statements.push(`UPDATE questions SET source = ${q(`Lesson: ${patch.title}`)} WHERE module_id = ${l.module_id} AND origin = 'generated' AND source = ${q(`Lesson: ${l.title}`)};`);
  }
  if (patch.position !== undefined) sets.push(`position = ${n(patch.position)}`);
  if (sets.length) statements.unshift(`UPDATE lessons SET ${sets.join(", ")} WHERE id = ${id};`);
  await record(`L${id} [${l.title}]: ${Object.keys(patch).join(", ")}`, statements);

  if (sets.some((s) => s.startsWith("title"))) {
    const file = (await jsonFiles<Draft>("data/lessons")).find((f) => f.data.semester === l.semester && f.data.module === l.module && f.data.title === l.title);
    if (!file) return [`JSON not updated: no draft titled "${l.title}"`];
    const next = file.text.replace(/^(  "title": ).*,$/m, (_, key) => `${key}${JSON.stringify(patch.title)},`);
    JSON.parse(next);
    await Bun.write(file.path, next);
    return [`Updated ${file.path}`];
  }
  return [];
}

// --- HTTP ------------------------------------------------------------------------------------

const ok = (data: unknown) => Response.json(data);
const fail = (e: unknown, status = 400) => Response.json({ error: e instanceof Error ? e.message : String(e) }, { status });
const handle = (fn: (req: Bun.BunRequest) => Promise<unknown> | unknown) => async (req: Bun.BunRequest) => {
  try { return ok(await fn(req)); } catch (e) { return fail(e); }
};

const staticFile = (dir: string) => (req: Request) => {
  const path = decodeURIComponent(new URL(req.url).pathname).replace(/^\/[^/]+\//, "");
  if (path.includes("..")) return new Response("Bad path", { status: 400 });
  const file = Bun.file(`${dir}/${path}`);
  return file.size ? new Response(file) : new Response("Not found", { status: 404 });
};

const server = Bun.serve({
  hostname: "127.0.0.1",
  port: PORT,
  development: true,
  routes: {
    "/": index,
    "/images/*": staticFile("public/images"),
    "/lessons/*": staticFile("public/lessons"),
    "/api/meta": handle(() => meta()),
    "/api/batch": handle(async (req) => {
      if (new URL(req.url).searchParams.get("refresh")) await refreshRemoteApplied(true);
      return batchStatus(await openBatch());
    }),
    "/api/questions": handle((req) => {
      const p = new URL(req.url).searchParams;
      const where = ["1 = 1"];
      const params: (string | number)[] = [];
      if (p.get("module")) { where.push("q.module_id = ?"); params.push(Number(p.get("module"))); }
      if (p.get("lesson")) { where.push("q.id IN (SELECT question_id FROM question_lessons WHERE lesson_id = ?)"); params.push(Number(p.get("lesson"))); }
      if (p.get("unlinked")) where.push("NOT EXISTS (SELECT 1 FROM question_lessons WHERE question_id = q.id)");
      if (p.get("origin")) { where.push("q.origin = ?"); params.push(p.get("origin")!); }
      if (p.get("ids") !== null) {
        where.push("(q.id IN (SELECT value FROM json_each(?)) OR q.flagged = 1)");
        params.push(JSON.stringify((p.get("ids") || "").split(",").filter(Boolean).map(Number)));
      }
      const text = p.get("q")?.trim();
      if (text) {
        if (/^#?\d+$/.test(text)) { where.push("q.id = ?"); params.push(Number(text.replace("#", ""))); }
        else {
          where.push(`(q.stem LIKE ?1x OR q.explanation LIKE ?1x OR q.source LIKE ?1x OR EXISTS (SELECT 1 FROM options o WHERE o.question_id = q.id AND o.text LIKE ?1x))`.replaceAll("?1x", "?"));
          params.push(...Array(4).fill(`%${text}%`));
        }
      }
      return questionsWhere(where.join(" AND "), params);
    }),
    "/api/questions/:id": {
      PATCH: handle(async (req) => ({ notes: await patchQuestion(Number(req.params.id), await req.json()), question: questionsWhere("q.id = ?", [Number(req.params.id)])[0] })),
      DELETE: handle(async (req) => ({ notes: await deleteQuestion(Number(req.params.id)) })),
    },
    "/api/lessons/:id": {
      PATCH: handle(async (req) => ({ notes: await patchLesson(Number(req.params.id), await req.json()) })),
    },
    // Flags are raised on production (the study screen's "flag" button), so read them there.
    "/api/remote-flags": handle(async () => {
      const rows = await remote<{ id: number; source: string | null; stem: string }>("SELECT id, source, stem FROM questions WHERE flagged = 1");
      return rows.map((r) => {
        const local = db.query("SELECT stem FROM questions WHERE id = ?").get(r.id) as { stem: string } | null;
        return { id: r.id, source: r.source, matches_local: local?.stem === r.stem };
      });
    }),
  },
  fetch: () => new Response("Not found", { status: 404 }),
});

void refreshRemoteApplied(true);
console.log(`HippoQCM admin on ${server.url} (local DB: ${localDbPath().split("/").pop()})`);
