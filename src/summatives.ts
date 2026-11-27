// Medical English S1 summative windows, from "medical english S1 activity schedule.xlsx".
// Ticked ones are kept in settings.summativesDone (synced with the rest of the settings).
export type Summative = { id: string; subject: string; n: 1 | 2 | 3; start: string; end: string };

const W1 = ["2026-11-22", "2026-11-29"];
const W2 = ["2026-11-29", "2026-12-06"];
const W3 = ["2026-12-06", "2026-12-13"];
const W4 = ["2026-12-13", "2026-12-20"];
const W5 = ["2026-12-20", "2026-12-27"];

const rows: [string, string, ...string[][]][] = [
  ["writ", "Comprehension & written expression", W1, W2, W3],
  ["oral", "Comprehension & oral expression", W1, W2, W3],
  ["gram", "Grammar", W1, W2],
  ["phon", "Corrective & articulatory phonetics", W3, W4],
  ["skills", "University study skills", W4],
  ["read", "Reading & analysis of medical texts", W4],
  ["shs", "Social & human sciences", W5],
  ["term", "Medical terminology", W5],
];

export const SUMMATIVES: Summative[] = rows
  .flatMap(([key, subject, ...windows]) =>
    windows.map(([start, end], i) => ({ id: `${key}-${i + 1}`, subject, n: (i + 1) as 1 | 2 | 3, start, end })),
  )
  .sort((a, b) => a.start.localeCompare(b.start) || a.subject.localeCompare(b.subject));
