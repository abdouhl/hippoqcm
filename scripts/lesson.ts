// Lesson question tooling for the /lesson skill. A lesson draft lives in data/lessons/<file>.json:
// {
//   "semester": 1, "module": "Cytology", "title": "Plasma membrane",
//   "pdf": "s1/cytology/plasma-membrane.pdf",            // under public/lessons/
//   "exam_questions": ["EMD1 2024-2025 Q3", ...],          // past exam questions covered by this lesson
//   "exam_mental": { "EMD1 2024-2025 Q3": "tip", ... },    // optional: linked exam questions that need a calculation
//   "questions": [{ "stem", "options", "answer", "explanation", "page", "weight", "image"?, "calc"?, "mental"? }]  // generated
//   // weight = number of exam sessions that asked the question's topic (0 = never); it raises the topic's priority
//   // calc = true when answering needs a calculation (exams allow no calculator); mental = how to do it by hand,
//   // required with calc. An exam_mental entry tags that exam question the same way.
// }
//
// Usage:
//   bun scripts/lesson.ts exams   <semester> <module>         past exam questions of a module, with their keys
//   bun scripts/lesson.ts review  <draft.json>                printable review of a draft (validates it)
//   bun scripts/lesson.ts migrate <draft.json> <out.sql>      D1 migration for an approved draft

import { existsSync, readdirSync } from "node:fs";

type BankQuestion = { stem: string; options: string[]; answer: string; explanation?: string; image?: string };
type Bank = { semester: 1 | 2; module: string; source: string; questions: BankQuestion[] };
type LessonQuestion = BankQuestion & { page: number; weight?: number; calc?: boolean; mental?: string };
type Draft = {
  semester: 1 | 2;
  module: string;
  title: string;
  pdf: string;
  exam_questions: string[];
  exam_mental?: Record<string, string>;
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
  for (const [key, tip] of Object.entries(draft.exam_mental ?? {})) {
    if (!draft.exam_questions.includes(key)) errors.push(`exam_mental: "${key}" isn't in exam_questions`);
    if (!tip.trim()) errors.push(`exam_mental: empty tip for "${key}"`);
  }
  draft.questions.forEach((q, i) => {
    const n = `G${i + 1}`;
    if (q.options.length < 4 || q.options.length > 5) errors.push(`${n}: expected 4 or 5 options`);
    if (!q.answer || ![...q.answer].every((l) => LABELS.indexOf(l) >= 0 && LABELS.indexOf(l) < q.options.length))
      errors.push(`${n}: bad answer "${q.answer}"`);
    if (!Number.isInteger(q.page) || q.page < 1) errors.push(`${n}: missing page`);
    if (q.weight !== undefined && !(Number.isInteger(q.weight) && q.weight >= 0)) errors.push(`${n}: weight must be a whole number ≥ 0`);
    if (!q.explanation) errors.push(`${n}: missing explanation`);
    if (q.calc && !q.mental?.trim()) errors.push(`${n}: calc question without a mental tip`);
    if (q.mental && !q.calc) errors.push(`${n}: mental tip on a question not marked calc`);
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
    console.log(`[${key}] ${q.stem}${q.image ? `   (image ${q.image})` : ""}`);
    q.options.forEach((o, j) => console.log(`  ${LABELS[j]}. ${o}`));
    console.log(`  → ${answerOf(q) || "?"}`);
  }
  const withImage = [...exams.values()].filter((q) => q.image).length;
  console.log(`\n${exams.size} questions, ${withImage} with an image`);
} else if (cmd === "review") {
  const draft: Draft = await Bun.file(args[0]).json();
  const exams = await validate(draft);
  const lines = [
    `# ${draft.title} — S${draft.semester} ${draft.module}`,
    `${draft.exam_questions.length} past exam questions + ${draft.questions.length} generated`,
    "",
    "## Past exam questions linked",
    ...draft.exam_questions.flatMap((k) => [
      `- [${k}] ${exams.get(k)!.stem}`,
      ...(draft.exam_mental?.[k] ? [`  🧮 ${draft.exam_mental[k]}`] : []),
    ]),
    "",
    "## Generated questions",
  ];
  draft.questions.forEach((q, i) => {
    lines.push("", `G${i + 1}. ${q.stem}   (p. ${q.page}${q.image ? `, image ${q.image}` : ""}${q.calc ? ", no calculator" : ""})`);
    q.options.forEach((o, j) => lines.push(`   ${q.answer.includes(LABELS[j]) ? "✓" : " "} ${LABELS[j]}. ${o}`));
    lines.push(`   ↳ ${q.explanation}`);
    if (q.mental) lines.push(`   🧮 ${q.mental}`);
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
  for (const [key, tip] of Object.entries(draft.exam_mental ?? {})) {
    lines.push(
      `UPDATE questions SET calc = 1, mental = ${q(tip)} WHERE module_id = ${moduleId} AND origin = 'exam' AND source = ${q(key)};`,
    );
  }
  draft.questions.forEach((g, i) => {
    lines.push(
      `\n-- G${i + 1}`,
      `INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ` +
        `(${moduleId}, ${q(g.stem)}, ${q(g.explanation)}, ${q(`Lesson: ${draft.title}`)}, ${q(g.image)}, 'generated', ${g.page}, ${g.weight ?? 0}, ` +
        `${g.calc ? 1 : 0}, ${q(g.calc ? g.mental : null)});`,
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
