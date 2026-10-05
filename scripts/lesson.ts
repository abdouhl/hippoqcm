// Lesson question tooling for the /lesson skill. A lesson draft lives in data/lessons/<file>.json:
// {
//   "semester": 1, "module": "Cytology", "title": "Plasma membrane",
//   "pdf": "s1/cytology/plasma-membrane.pdf",            // under public/lessons/
//   "exam_questions": ["EMD1 2024-2025 Q3", ...],          // past exam questions covered by this lesson
//   "questions": [{ "stem", "options", "answer", "explanation", "page", "image"? }]  // generated
// }
//
// Usage:
//   bun scripts/lesson.ts exams   <semester> <module>         past exam questions of a module, with their keys
//   bun scripts/lesson.ts review  <draft.json>                printable review of a draft (validates it)
//   bun scripts/lesson.ts migrate <draft.json> <out.sql>      D1 migration for an approved draft

import { existsSync, readdirSync } from "node:fs";

type BankQuestion = { stem: string; options: string[]; answer: string; explanation?: string; image?: string };
type Bank = { semester: 1 | 2; module: string; source: string; questions: BankQuestion[] };
type LessonQuestion = BankQuestion & { page: number };
type Draft = {
  semester: 1 | 2;
  module: string;
  title: string;
  pdf: string;
  exam_questions: string[];
  questions: LessonQuestion[];
};

const LABELS = ["A", "B", "C", "D", "E"];

// Past exam questions keyed exactly like questions.source in the DB ("EMD1 2024-2025 Q3").
async function examQuestions(semester: number, module: string) {
  const out = new Map<string, BankQuestion>();
  for (const f of readdirSync("data").filter((f) => f.endsWith(".json")).sort()) {
    const bank: Bank = await Bun.file(`data/${f}`).json();
    if (bank.semester !== semester || bank.module !== module) continue;
    bank.questions.forEach((q, i) => out.set(`${bank.source} Q${i + 1}`, q));
  }
  return out;
}

const answerOf = (q: BankQuestion) => [...q.answer].join("");

async function validate(draft: Draft) {
  const errors: string[] = [];
  const exams = await examQuestions(draft.semester, draft.module);
  if (exams.size === 0) errors.push(`no exam banks found for S${draft.semester} ${draft.module}`);
  if (!existsSync(`public/lessons/${draft.pdf}`)) errors.push(`missing PDF public/lessons/${draft.pdf}`);
  for (const key of draft.exam_questions) if (!exams.has(key)) errors.push(`unknown exam question "${key}"`);
  if (new Set(draft.exam_questions).size !== draft.exam_questions.length) errors.push("duplicate exam_questions");
  draft.questions.forEach((q, i) => {
    const n = `G${i + 1}`;
    if (q.options.length < 4 || q.options.length > 5) errors.push(`${n}: expected 4 or 5 options`);
    if (!q.answer || ![...q.answer].every((l) => LABELS.indexOf(l) >= 0 && LABELS.indexOf(l) < q.options.length))
      errors.push(`${n}: bad answer "${q.answer}"`);
    if (!Number.isInteger(q.page) || q.page < 1) errors.push(`${n}: missing page`);
    if (!q.explanation) errors.push(`${n}: missing explanation`);
    if (q.image && !existsSync(`public/images/${q.image}`)) errors.push(`${n}: missing image public/images/${q.image}`);
  });
  if (errors.length) throw new Error(`Draft is invalid:\n  ${errors.join("\n  ")}`);
  return exams;
}

const [cmd, ...args] = process.argv.slice(2);

if (cmd === "exams") {
  const [semester, module] = args;
  const exams = await examQuestions(Number(semester), module);
  if (exams.size === 0) throw new Error(`no exam banks for S${semester} ${module}`);
  for (const [key, q] of exams) {
    console.log(`[${key}] ${q.stem}`);
    q.options.forEach((o, j) => console.log(`  ${LABELS[j]}. ${o}`));
    console.log(`  → ${answerOf(q) || "?"}`);
  }
  console.log(`\n${exams.size} questions`);
} else if (cmd === "review") {
  const draft: Draft = await Bun.file(args[0]).json();
  const exams = await validate(draft);
  const lines = [
    `# ${draft.title} — S${draft.semester} ${draft.module}`,
    `${draft.exam_questions.length} past exam questions + ${draft.questions.length} generated`,
    "",
    "## Past exam questions linked",
    ...draft.exam_questions.map((k) => `- [${k}] ${exams.get(k)!.stem}`),
    "",
    "## Generated questions",
  ];
  draft.questions.forEach((q, i) => {
    lines.push("", `G${i + 1}. ${q.stem}   (p. ${q.page}${q.image ? `, image ${q.image}` : ""})`);
    q.options.forEach((o, j) => lines.push(`   ${q.answer.includes(LABELS[j]) ? "✓" : " "} ${LABELS[j]}. ${o}`));
    lines.push(`   ↳ ${q.explanation}`);
  });
  console.log(lines.join("\n"));
} else if (cmd === "migrate") {
  const [inPath, outPath] = args;
  if (!inPath || !outPath) throw new Error("usage: lesson.ts migrate <draft.json> <out.sql>");
  const draft: Draft = await Bun.file(inPath).json();
  await validate(draft);

  const q = (s: string | null | undefined) => (s == null ? "NULL" : `'${s.replaceAll("'", "''")}'`);
  const moduleId = `(SELECT id FROM modules WHERE semester = ${draft.semester} AND name = ${q(draft.module)})`;
  const lessonId = `(SELECT id FROM lessons WHERE module_id = ${moduleId} AND title = ${q(draft.title)})`;

  const lines = [
    `-- Generated from ${inPath} — lesson "${draft.title}": ${draft.exam_questions.length} exam + ${draft.questions.length} generated questions.`,
    // Re-running for an existing lesson keeps it and appends questions.
    `INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES (${moduleId}, ${q(draft.title)}, ${q(draft.pdf)}, ` +
      `(SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = ${moduleId}));`,
  ];
  if (draft.exam_questions.length) {
    lines.push(
      "\n-- Past exam questions covered by this lesson",
      `INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)\n` +
        `  SELECT id, ${lessonId} FROM questions\n` +
        `  WHERE module_id = ${moduleId} AND origin = 'exam' AND source IN (\n` +
        draft.exam_questions.map((k) => `    ${q(k)}`).join(",\n") +
        "\n  );",
    );
  }
  draft.questions.forEach((g, i) => {
    lines.push(
      `\n-- G${i + 1}`,
      `INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ` +
        `(${moduleId}, ${q(g.stem)}, ${q(g.explanation)}, ${q(`Lesson: ${draft.title}`)}, ${q(g.image)}, 'generated', ${g.page});`,
      `INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), ${lessonId});`,
      `INSERT INTO options (question_id, label, text, is_correct) VALUES\n` +
        g.options
          .map((text, j) => `  ((SELECT MAX(id) FROM questions), '${LABELS[j]}', ${q(text)}, ${g.answer.includes(LABELS[j]) ? 1 : 0})`)
          .join(",\n") +
        ";",
    );
  });
  await Bun.write(outPath, lines.join("\n") + "\n");
  console.log(`Wrote ${outPath}: lesson "${draft.title}", ${draft.exam_questions.length} exam links, ${draft.questions.length} generated questions`);
} else {
  throw new Error("usage: lesson.ts exams|review|migrate ...");
}
