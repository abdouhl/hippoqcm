// Past exam papers, rebuilt from question sources like "EMD1 2024-2025 Q17".
import type { Option, Paper, Scoring } from "./types";

const SOURCE = /^(.+) Q(\d+)$/;

/** The paper a past-exam question comes from and its number in it, or null for other sources. */
export function paperOf(source: string | null): { paper: string; number: number } | null {
  const m = source?.match(SOURCE);
  return m ? { paper: m[1], number: Number(m[2]) } : null;
}

const yearOf = (paper: string) => Number(paper.match(/(\d{4})-\d{4}/)?.[1] ?? 0);

/** A module's papers, newest first, each with its question count and the numbers missing from it. */
export function listPapers(sources: (string | null)[]): Paper[] {
  const numbers = new Map<string, number[]>();
  for (const s of sources) {
    const p = paperOf(s);
    if (!p) continue;
    if (!numbers.has(p.paper)) numbers.set(p.paper, []);
    numbers.get(p.paper)!.push(p.number);
  }
  return [...numbers]
    .map(([paper, ns]) => {
      const have = new Set(ns);
      const missing: number[] = [];
      for (let n = 1; n <= Math.max(...ns); n++) if (!have.has(n)) missing.push(n);
      return { paper, count: have.size, missing };
    })
    .sort((a, b) => yearOf(b.paper) - yearOf(a.paper) || a.paper.localeCompare(b.paper));
}

/** Sort a paper's questions into their order on the paper. */
export const byPaperOrder = <T extends { source: string | null }>(qs: T[]): T[] =>
  [...qs].sort((a, b) => (paperOf(a.source)?.number ?? 0) - (paperOf(b.source)?.number ?? 0));

/**
 * Points (0–1) one answer earns.
 * - all-or-nothing: exactly the true options, else 0.
 * - partial: no false option ticked, then the share of the true options found; any false option = 0.
 */
export function points(options: Option[], picked: string[], scoring: Scoring): number {
  if (picked.length === 0) return 0;
  const truth = options.filter((o) => o.is_correct).map((o) => o.label as string);
  if (picked.some((l) => !truth.includes(l))) return 0;
  const found = picked.filter((l) => truth.includes(l)).length;
  if (scoring === "partial") return truth.length ? found / truth.length : 0;
  return found === truth.length ? 1 : 0;
}
