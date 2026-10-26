// Turns a study list (due reviews + every unseen question) into a session: new questions and
// reviews are capped per module per day (see prefs.ts), reviews go weakest first, and new
// questions are shuffled and placed among the reviews. Also shuffles each question's options so
// answers aren't remembered by their letter.
import { State } from "ts-fsrs";
import type { Label, Option, StudyQuestion } from "../shared/types";
import { examDate, importance, retentionFor, retrievability } from "./fsrs";
import { getSettings } from "./prefs";

const DONE_KEY = "hippoqcm.newToday";

/** A session of only new questions or only reviews; unset = both. */
export type StudyOnly = "new" | "reviews";

// Days since the unix epoch in the local timezone, like ActivityDay.day.
const today = () => Math.floor((Date.now() - new Date().getTimezoneOffset() * 60_000) / 86_400_000);

// Questions studied today per module, on this device. `counts` holds new ones (its name predates reviews).
type DoneToday = { day: number; counts: Record<number, number>; reviews?: Record<number, number> };

function doneToday(): Required<DoneToday> {
  try {
    const saved = JSON.parse(localStorage.getItem(DONE_KEY) ?? "null") as DoneToday | null;
    if (saved?.day === today()) return { reviews: {}, ...saved };
  } catch {}
  return { day: today(), counts: {}, reviews: {} };
}

/** Count a review toward its module's daily allowance: `fresh` = the question's first review. */
export function recordDone(moduleId: number, fresh: boolean) {
  const state = doneToday();
  const counts = fresh ? state.counts : state.reviews;
  counts[moduleId] = (counts[moduleId] ?? 0) + 1;
  try {
    localStorage.setItem(DONE_KEY, JSON.stringify(state));
  } catch {}
}

function shuffle<T>(items: T[]): T[] {
  const a = [...items];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

// Keep items while their module is under `limit`, counting from `used`.
function cap(items: StudyQuestion[], used: Record<number, number>, limit: number) {
  const left = { ...used };
  let held = 0;
  const kept = items.filter((q) => {
    const n = left[q.module_id] ?? 0;
    if (n >= limit) {
      held++;
      return false;
    }
    left[q.module_id] = n + 1;
    return true;
  });
  return { kept, held };
}

// Which review matters most now: learning steps first (they're minutes apart), then the lowest chance
// of recall — on exam day when the module has one set — nudged forward for often-examined topics.
function byPriority(questions: StudyQuestion[]): StudyQuestion[] {
  const now = Date.now();
  const key = new Map(
    questions.map((q) => {
      const learning = q.card!.state === State.Learning || q.card!.state === State.Relearning;
      return [q, learning ? -1 : retrievability(q, examDate(q.module_id, now) ?? now) - 0.1 * importance(q)];
    }),
  );
  return [...questions].sort((a, b) => key.get(a)! - key.get(b)! || a.card!.due - b.card!.due);
}

/** Questions seen before whose chance of recall on their module's exam day is under target. */
const needsCram = (q: StudyQuestion) => {
  const exam = examDate(q.module_id);
  return q.card != null && exam != null && retrievability(q, exam) < retentionFor(q);
};

/** Whether any of these questions belongs to a module with an exam date ahead. */
export const hasExam = (questions: StudyQuestion[]) => questions.some((q) => examDate(q.module_id) != null);

// The same exam question asked again in another year is a separate question with the same stem:
// seeing one gives the other away, so only the first comes up today.
function buryRepeats(questions: StudyQuestion[]): StudyQuestion[] {
  const seen = new Set<string>();
  return questions.filter((q) => {
    const stem = `${q.module_id}|${q.stem.trim().toLowerCase().replace(/\s+/g, " ")}`;
    if (seen.has(stem)) return false;
    seen.add(stem);
    return true;
  });
}

// Questions from the same lesson back to back hint at each other: move a different lesson's question
// in between when one is close behind.
function spreadLessons(queue: StudyQuestion[]): StudyQuestion[] {
  const q = [...queue];
  for (let i = 1; i < q.length; i++) {
    if (!q[i].pdf || q[i].pdf !== q[i - 1].pdf) continue;
    const j = q.findIndex((x, k) => k > i && k <= i + 10 && x.pdf !== q[i - 1].pdf);
    if (j > 0) q.splice(i, 0, ...q.splice(j, 1));
  }
  return q;
}

/**
 * Build the session. `extraNew`/`extraReviews` raise each module's allowance (the "more" buttons);
 * `all` (practice everything) skips the caps; `cram` takes, on top of today's questions, every one
 * whose recall on exam day is predicted below target; `only` keeps just new questions or just reviews.
 * `heldNew`/`heldReviews` count what was left out by the daily caps.
 */
export function buildQueue(
  questions: StudyQuestion[],
  { all, cram = false, extraNew = 0, extraReviews = 0, only }: {
    all: boolean;
    cram?: boolean;
    extraNew?: number;
    extraReviews?: number;
    only?: StudyOnly;
  },
) {
  const settings = getSettings();
  const done = doneToday();
  const now = Date.now();
  const reviewLimit = all || cram || !settings.reviewsPerDay ? Infinity : settings.reviewsPerDay + extraReviews;
  const pool = buryRepeats(questions);
  const seen = only === "new" ? [] : pool.filter((q) => q.card && (!cram || q.card.due <= now || needsCram(q)));
  const reviews = cap(byPriority(seen), done.reviews, reviewLimit);
  const fresh = cap(shuffle(only === "reviews" ? [] : pool.filter((q) => !q.card)), done.counts, all ? Infinity : settings.newPerDay + extraNew);

  const r = reviews.kept; // already in priority order
  const f = fresh.kept;
  let queue: StudyQuestion[];
  if (settings.order === "reviews-first") queue = [...r, ...f];
  else if (settings.order === "new-first") queue = [...f, ...r];
  else {
    // Spread new questions evenly: take one whenever it's proportionally behind the reviews.
    queue = [];
    let i = 0, n = 0;
    while (i < r.length || n < f.length) {
      const takeNew = n < f.length && (i >= r.length || (2 * n + 1) * r.length <= (2 * i + 1) * f.length);
      queue.push(takeNew ? f[n++] : r[i++]);
    }
  }
  return { queue: spreadLessons(queue), heldNew: fresh.held, heldReviews: reviews.held };
}

// "Statements A, B and C are correct", "A, B, C, D": the letters mean something, so keep the order.
const LETTER_REF = /\b[A-E]\s*(?:,|\band\b|\bor\b|\+|&)\s*[A-E]\b/;
// "None of the above", "All the propositions are false": shuffle the others around these.
const PINNED = /\b(?:all|none|both|neither)\b.*\b(?:above|below|these|propositions|statements|answers|options|of them)\b|^none\b/i;

/** Options in display order, each with the letter shown for its position. */
export function displayOptions(options: Option[]): (Option & { shown: Label })[] {
  const letters = options.map((o) => o.label);
  if (!getSettings().shuffleOptions || options.some((o) => LETTER_REF.test(o.text))) {
    return options.map((o) => ({ ...o, shown: o.label }));
  }
  const movable = shuffle(options.filter((o) => !PINNED.test(o.text)));
  return options.map((o, i) => ({ ...(PINNED.test(o.text) ? o : movable.shift()!), shown: letters[i] }));
}

/**
 * Roughly what today's sessions will bring up across these modules: new questions left under each
 * module's daily allowance, and reviews due now (under the review cap when there is one).
 */
export function plannedToday(modules: { id: number; new_count: number; learn_count: number; review_count: number }[]) {
  const { newPerDay, reviewsPerDay } = getSettings();
  const done = doneToday();
  let fresh = 0;
  let reviews = 0;
  for (const m of modules) {
    fresh += Math.min(m.new_count, Math.max(0, newPerDay - (done.counts[m.id] ?? 0)));
    const due = m.learn_count + m.review_count;
    reviews += reviewsPerDay ? Math.min(due, Math.max(0, reviewsPerDay - (done.reviews[m.id] ?? 0))) : due;
  }
  return { fresh, reviews };
}
