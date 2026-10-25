import { createEmptyCard, fsrs, get_fuzz_range, Grades, State, type Card, type FSRS, type RecordLog } from "ts-fsrs";
import type { CardRow, ReviewInput, StudyQuestion } from "../shared/types";
import { fsrsWeights, reviewDues } from "./api";
import { getSettings } from "./prefs";

const DAY = 86_400_000;

export const toCard = (row: CardRow | null): Card =>
  row
    ? {
        ...row,
        due: new Date(row.due),
        last_review: row.last_review == null ? undefined : new Date(row.last_review),
      }
    : createEmptyCard();

export const toRow = (card: Card): CardRow => ({
  due: card.due.getTime(),
  stability: card.stability,
  difficulty: card.difficulty,
  elapsed_days: card.elapsed_days,
  scheduled_days: card.scheduled_days,
  learning_steps: card.learning_steps,
  reps: card.reps,
  lapses: card.lapses,
  state: card.state,
  last_review: card.last_review?.getTime() ?? null,
});

// Days since the unix epoch in the local timezone, like ActivityDay.day.
const localDay = (ms: number) => Math.floor((ms - new Date(ms).getTimezoneOffset() * 60_000) / DAY);

/** Start of a module's exam day (unix ms, local midnight) from Settings, while that day hasn't ended. */
export function examDate(moduleId: number, now = Date.now()): number | null {
  const iso = getSettings().examDates[moduleId];
  if (!iso) return null;
  const at = new Date(`${iso}T00:00`).getTime();
  return Number.isFinite(at) && at + DAY > now ? at : null;
}

/** How much past exams cared about a question, 0–1: asked in 3 or more sessions = 1. */
export function importance(q: Pick<StudyQuestion, "exam_weight" | "origin">): number {
  return Math.min(q.exam_weight ?? (q.origin === "exam" ? 1 : 0), 3) / 3;
}

/**
 * The chance of recall a question is scheduled for. Rises as its module's exam gets close (a
 * forgotten fact costs more then), and a little more for topics past exams keep asking.
 */
export function retentionFor(q: Pick<StudyQuestion, "module_id" | "exam_weight" | "origin">, now = Date.now()): number {
  const base = getSettings().retention;
  const exam = examDate(q.module_id, now);
  const days = exam == null ? Infinity : (exam - now) / DAY;
  const target = days <= 14 ? Math.max(base, 0.95) : days <= 45 ? Math.max(base, 0.92) : base;
  return Math.min(0.97, Math.round((target + 0.02 * importance(q)) * 100) / 100);
}

// Longest interval allowed: up to the day before the exam, so every question gets a last pass first.
function maximumInterval(moduleId: number, now: number): number {
  const exam = examDate(moduleId, now);
  return exam == null ? 36500 : Math.max(1, Math.floor((exam - now) / DAY) - 1);
}

// One scheduler per (weights, retention, cap); there are only a handful of each.
const schedulers = new Map<string, FSRS>();
function schedulerWith(request_retention: number, maximum_interval: number): FSRS {
  const w = fsrsWeights();
  const key = `${w?.join(",")}|${request_retention}|${maximum_interval}`;
  let s = schedulers.get(key);
  if (!s) {
    const params = { request_retention, maximum_interval, enable_fuzz: true };
    try {
      s = fsrs(w ? { ...params, w } : params);
    } catch {
      s = fsrs(params); // weights that don't fit this ts-fsrs version
    }
    schedulers.set(key, s);
  }
  return s;
}

const schedulerFor = (q: StudyQuestion, now: number) =>
  schedulerWith(retentionFor(q, now), maximumInterval(q.module_id, now));

/** Chance of recalling a question at `at` (0 for one never seen). */
export function retrievability(q: StudyQuestion, at = Date.now()): number {
  if (!q.card || q.card.state === State.New) return 0;
  return schedulerWith(0.9, 36500).get_retrievability(toCard(q.card), new Date(at), false);
}

// Fuzz picks a day at random within a few % of the interval. Pick the day in that range with the
// fewest reviews already due instead, so busy days don't pile up. Keeps the time of day.
function balance(card: Card, now: Date, maximum: number, dues: Map<number, number>): Card {
  if (card.state !== State.Review || card.scheduled_days < 3 || dues.size === 0) return card;
  const ivl = card.scheduled_days;
  const { min_ivl, max_ivl } = get_fuzz_range(ivl, card.elapsed_days, maximum);
  const today = localDay(now.getTime());
  let best = ivl;
  for (let d = min_ivl; d <= max_ivl; d++) {
    const load = dues.get(today + d) ?? 0;
    const bestLoad = dues.get(today + best) ?? 0;
    if (load < bestLoad || (load === bestLoad && Math.abs(d - ivl) < Math.abs(best - ivl))) best = d;
  }
  if (best === ivl) return card;
  return { ...card, scheduled_days: best, due: new Date(card.due.getTime() + (best - ivl) * DAY) };
}

/** The next state of a question's card for each grade. */
export function schedule(q: StudyQuestion, now: Date): RecordLog {
  const record = schedulerFor(q, now.getTime()).repeat(toCard(q.card), now);
  const dues = new Map<number, number>();
  for (const due of reviewDues()) dues.set(localDay(due), (dues.get(localDay(due)) ?? 0) + 1);
  const maximum = maximumInterval(q.module_id, now.getTime());
  const out = {} as RecordLog;
  for (const g of Grades) out[g] = { ...record[g], card: balance(record[g].card, now, maximum, dues) };
  return out;
}

/** What the scheduler knew before an answer, logged with the review. */
export function reviewFacts(q: StudyQuestion, now: Date): Pick<ReviewInput, "state" | "elapsed_days" | "retrievability"> {
  const last = q.card?.last_review;
  return {
    state: q.card?.state ?? State.New,
    elapsed_days: last == null ? null : Math.round(((now.getTime() - last) / DAY) * 1000) / 1000,
    retrievability: q.card && q.card.state !== State.New ? Math.round(retrievability(q, now.getTime()) * 1000) / 1000 : null,
  };
}

export function formatInterval(from: Date, to: Date): string {
  const mins = Math.max(1, Math.round((to.getTime() - from.getTime()) / 60_000));
  if (mins < 60) return `${mins}m`;
  const hours = Math.round(mins / 60);
  if (hours < 24) return `${hours}h`;
  const days = Math.round(hours / 24);
  if (days < 30) return `${days}d`;
  const months = Math.round(days / 30);
  return months < 12 ? `${months}mo` : `${(days / 365).toFixed(1)}y`;
}
