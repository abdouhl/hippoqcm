// Turns a study list (due reviews + every unseen question) into a session: new questions and
// reviews are capped per module per day (see prefs.ts), and new questions are shuffled and
// placed among the reviews. Also shuffles each question's options so answers aren't remembered
// by their letter.
import type { Label, Option, StudyQuestion } from "../shared/types";
import { getSettings } from "./prefs";

const DONE_KEY = "hippoqcm.newToday";

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

/**
 * Build the session. `extraNew`/`extraReviews` raise each module's allowance (the "more" buttons);
 * `all` (practice everything) skips the caps. `heldNew`/`heldReviews` count what was left out.
 */
export function buildQueue(
  questions: StudyQuestion[],
  { all, extraNew = 0, extraReviews = 0 }: { all: boolean; extraNew?: number; extraReviews?: number },
) {
  const settings = getSettings();
  const done = doneToday();
  const reviewLimit = all || !settings.reviewsPerDay ? Infinity : settings.reviewsPerDay + extraReviews;
  const reviews = cap(questions.filter((q) => q.card), done.reviews, reviewLimit);
  const fresh = cap(shuffle(questions.filter((q) => !q.card)), done.counts, all ? Infinity : settings.newPerDay + extraNew);

  const r = reviews.kept; // already in due order
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
  return { queue, heldNew: fresh.held, heldReviews: reviews.held };
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
