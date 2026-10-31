// Exercise (TD) tooling for the /exercises skill. A TD set is a standalone page, solved with the module's lessons:
//   public/exercises/s1/biophysics/set-1.html        the exercises and their worked solutions
//   public/exercises/s1/biophysics/set-1.pdf         the original TD sheet
//   public/exercises/s1/biophysics/set-1/<fig>.jpg   its figures
// styled by public/summaries/summary.css. The module page lists the sets in public/exercises/index.json
// (rebuilt by `index`) and opens them in an "Exercises" screen.
//
// A page declares itself in its <head>:
//   <title>Set 1 — Biophysics of solutions</title>
//   <meta name="lessons" content="s1/biophysics/biophysics-of-solutions.pdf s1/biophysics/biophysics-of-solutions-2.pdf">
// and each exercise is a <section class="exercise" id="ex1">.
//
// Usage:
//   bun scripts/exercises.ts index                 rebuild public/exercises/index.json from the pages on disk
//   bun scripts/exercises.ts laws <s1> <module>    the formulas and laws of the module's lesson summaries,
//                                                  with the lesson PDF page each one is taught on

import { existsSync, readdirSync, readFileSync, statSync, writeFileSync } from "node:fs";
import { join, relative } from "node:path";

const EXERCISES = "public/exercises";
const SUMMARIES = "public/summaries";
const LESSONS = "public/lessons";

function walk(dir: string, ext: string): string[] {
  if (!existsSync(dir)) return [];
  return readdirSync(dir).flatMap((name) => {
    const path = join(dir, name);
    if (statSync(path).isDirectory()) return walk(path, ext);
    return name.endsWith(ext) ? [path] : [];
  });
}

const text = (html: string) =>
  html
    .replace(/<sub>(.*?)<\/sub>/g, "_$1")
    .replace(/<sup>(.*?)<\/sup>/g, "^$1")
    .replace(/<[^>]+>/g, " ")
    .replace(/&nbsp;/g, " ")
    .replace(/&lt;/g, "<")
    .replace(/&gt;/g, ">")
    .replace(/&amp;/g, "&")
    .replace(/\s+/g, " ")
    .trim();

export type ExerciseSet = {
  path: string; // under /exercises, e.g. "s1/biophysics/set-1.html"
  title: string;
  count: number; // exercises on the page
  lessons: string[]; // lesson pdf paths (as in lessons.pdf) the solutions use
  pdf: string | null; // the original TD sheet, under /exercises
};

function readSet(file: string): ExerciseSet {
  const html = readFileSync(file, "utf8");
  const path = relative(EXERCISES, file);
  const pdf = path.replace(/\.html$/, ".pdf");
  const lessons = html.match(/<meta name="lessons" content="([^"]*)"/)?.[1].split(/\s+/).filter(Boolean) ?? [];
  for (const l of lessons) if (!existsSync(join(LESSONS, l))) console.warn(`  ! ${path}: lesson ${l} not in ${LESSONS}`);
  return {
    path,
    title: text(html.match(/<title>(.*?)<\/title>/s)?.[1] ?? path),
    count: html.match(/<section class="exercise"/g)?.length ?? 0,
    lessons,
    pdf: existsSync(join(EXERCISES, pdf)) ? pdf : null,
  };
}

// Formulas of one summary page, each with the last section heading and PDF page seen before it.
function laws(file: string) {
  const html = readFileSync(file, "utf8");
  const out: { section: string; page: string; formula: string }[] = [];
  let section = "";
  let page = "";
  const re = /<h[23][^>]*>(.*?)<\/h[23]>|class="page" href="([^"]+)"|<div class="formula">(.*?)<\/div>/gs;
  for (const m of html.matchAll(re)) {
    if (m[1] !== undefined) {
      section = text(m[1].replace(/<a class="page".*?<\/a>|<span class="exam">.*?<\/span>/g, ""));
      page = m[1].match(/class="page" href="([^"]+)"/)?.[1] ?? page;
    } else if (m[2] !== undefined) page = m[2];
    else out.push({ section, page, formula: text(m[3]) });
  }
  return out;
}

const [cmd, semester, module] = process.argv.slice(2);
if (cmd === "index") {
  const sets = walk(EXERCISES, ".html").map(readSet).sort((a, b) => a.path.localeCompare(b.path, undefined, { numeric: true }));
  writeFileSync(join(EXERCISES, "index.json"), JSON.stringify(sets, null, 2) + "\n");
  console.log(`${EXERCISES}/index.json: ${sets.length} exercise sets`);
  for (const s of sets) console.log(`  ${s.path} — ${s.title} (${s.count} exercises, ${s.lessons.length} lessons${s.pdf ? "" : ", no PDF"})`);
} else if (cmd === "laws" && semester && module) {
  const dir = join(SUMMARIES, semester.toLowerCase(), module.toLowerCase());
  const pages = walk(dir, ".html").sort((a, b) => a.localeCompare(b, undefined, { numeric: true }));
  const pdfs = walk(join(LESSONS, semester.toLowerCase(), module.toLowerCase()), ".pdf");
  const summarized = new Set(pages.map((p) => relative(SUMMARIES, p).replace(/\.html$/, ".pdf")));
  for (const file of pages) {
    const title = text(readFileSync(file, "utf8").match(/<h1>(.*?)<\/h1>/s)?.[1] ?? file);
    console.log(`\n## ${title} — /lessons/${relative(SUMMARIES, file).replace(/\.html$/, ".pdf")}`);
    for (const l of laws(file)) console.log(`  [${l.page.replace(/^.*#/, "") || "?"}] ${l.section}: ${l.formula}`);
  }
  const unsummarized = pdfs.map((p) => relative(LESSONS, p)).filter((p) => !summarized.has(p));
  if (unsummarized.length) {
    console.log(`\nLessons without a summary (read their PDF for the laws):`);
    for (const p of unsummarized) console.log(`  ${LESSONS}/${p}`);
  }
  if (!pages.length && !pdfs.length) console.log(`No lessons for ${semester} ${module}.`);
} else {
  console.error("usage: bun scripts/exercises.ts index | laws <s1> <module>");
  process.exit(1);
}
