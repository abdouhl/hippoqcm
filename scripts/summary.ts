// Lesson summary tooling for the /summary skill. A summary is a standalone page next to its lesson PDF's path:
//   public/lessons/s1/physiology/foo.pdf  →  public/summaries/s1/physiology/foo.html
//                                             public/summaries/s1/physiology/foo/<figure>.jpg
// styled by public/summaries/summary.css. The app shows a "Summary" tab on a lesson whose pdf is listed in
// public/summaries/index.json (rebuilt by `index`).
//
// Usage:
//   bun scripts/summary.ts index      rebuild public/summaries/index.json from the summary pages on disk
//   bun scripts/summary.ts missing    lesson PDFs that have no summary yet

import { existsSync, readdirSync, statSync, writeFileSync } from "node:fs";
import { join, relative } from "node:path";

const LESSONS = "public/lessons";
const SUMMARIES = "public/summaries";

function walk(dir: string, ext: string): string[] {
  if (!existsSync(dir)) return [];
  return readdirSync(dir).flatMap((name) => {
    const path = join(dir, name);
    if (statSync(path).isDirectory()) return walk(path, ext);
    return name.endsWith(ext) ? [path] : [];
  });
}

// Lesson pdf paths (as stored in lessons.pdf) that have a summary page.
const summarized = () =>
  walk(SUMMARIES, ".html")
    .map((p) => relative(SUMMARIES, p).replace(/\.html$/, ".pdf"))
    .sort();

const [cmd] = process.argv.slice(2);
if (cmd === "index") {
  const pdfs = summarized();
  writeFileSync(join(SUMMARIES, "index.json"), JSON.stringify(pdfs, null, 2) + "\n");
  console.log(`${SUMMARIES}/index.json: ${pdfs.length} summaries`);
  for (const pdf of pdfs) console.log(`  ${pdf}`);
} else if (cmd === "missing") {
  const done = new Set(summarized());
  const todo = walk(LESSONS, ".pdf").map((p) => relative(LESSONS, p)).filter((pdf) => !done.has(pdf)).sort();
  for (const pdf of todo) console.log(`${LESSONS}/${pdf}`);
  console.log(`${todo.length} lesson PDFs without a summary`);
} else {
  console.error("usage: bun scripts/summary.ts index|missing");
  process.exit(1);
}
