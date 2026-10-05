// Converts a question-bank JSON file (see data/) into a D1 migration.
// Usage: bun scripts/json-to-migration.ts data/<file>.json migrations/<NNNN_name>.sql

type Bank = {
  semester: 1 | 2;
  module: string;
  source: string;
  questions: { stem: string; options: string[]; answer: string; explanation?: string; image?: string }[];
};

const [inPath, outPath] = process.argv.slice(2);
if (!inPath || !outPath) throw new Error("usage: json-to-migration.ts <in.json> <out.sql>");

const bank: Bank = await Bun.file(inPath).json();
const LABELS = ["A", "B", "C", "D", "E"];
const q = (s: string | null | undefined) => (s == null ? "NULL" : `'${s.replaceAll("'", "''")}'`);
const moduleId = `(SELECT id FROM modules WHERE semester = ${bank.semester} AND name = ${q(bank.module)})`;

const lines = [`-- Generated from ${inPath} — ${bank.questions.length} questions.`];
bank.questions.forEach((question, i) => {
  if (question.options.length < 4 || question.options.length > 5) throw new Error(`Q${i + 1}: expected 4 or 5 options`);
  if (![...question.answer].every((l) => LABELS.indexOf(l) >= 0 && LABELS.indexOf(l) < question.options.length)) throw new Error(`Q${i + 1}: bad answer "${question.answer}"`);
  lines.push(
    `\n-- Q${i + 1}`,
    `INSERT INTO questions (module_id, stem, explanation, source, image) VALUES (${moduleId}, ${q(question.stem)}, ${q(question.explanation)}, ${q(`${bank.source} Q${i + 1}`)}, ${q(question.image)});`,
    `INSERT INTO options (question_id, label, text, is_correct) VALUES\n` +
      question.options
        .map((text, j) => `  ((SELECT MAX(id) FROM questions), '${LABELS[j]}', ${q(text)}, ${question.answer.includes(LABELS[j]) ? 1 : 0})`)
        .join(",\n") +
      ";",
  );
});

await Bun.write(outPath, lines.join("\n") + "\n");
console.log(`Wrote ${bank.questions.length} questions to ${outPath}`);
