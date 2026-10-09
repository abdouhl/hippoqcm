// Offline-aware API access. Online, requests go to the worker as usual. Offline (or when the
// network hangs), reads are answered from a local snapshot of every question (/api/snapshot), and
// writes wait in an outbox that is sent once the server is reachable again.
import { useEffect, useState } from "react";
import { isCode, newCode, normalizeCode } from "../shared/code";
import type { Account, Lesson, Module, ReviewInput, Snapshot, StudyQuestion } from "../shared/types";

const TIMEOUT_MS = 8000;
// Keep in sync with LEECH_LAPSES in worker/index.ts.
export const LEECH_LAPSES = 4;
const BATCH_SIZE = 50; // reviews per request when emptying the outbox

// ---- Tiny IndexedDB key-value store ----------------------------------------------------------

let dbPromise: Promise<IDBDatabase> | null = null;
function db(): Promise<IDBDatabase> {
  return (dbPromise ??= new Promise((resolve, reject) => {
    const req = indexedDB.open("hippoqcm", 1);
    req.onupgradeneeded = () => req.result.createObjectStore("kv");
    req.onsuccess = () => resolve(req.result);
    req.onerror = () => reject(req.error);
  }));
}

async function kvGet<T>(key: string): Promise<T | undefined> {
  try {
    const store = (await db()).transaction("kv").objectStore("kv");
    return await new Promise((resolve, reject) => {
      const req = store.get(key);
      req.onsuccess = () => resolve(req.result as T | undefined);
      req.onerror = () => reject(req.error);
    });
  } catch {
    return undefined;
  }
}

async function kvSet(key: string, value: unknown): Promise<void> {
  try {
    const tx = (await db()).transaction("kv", "readwrite");
    tx.objectStore("kv").put(value, key);
    await new Promise<void>((resolve, reject) => {
      tx.oncomplete = () => resolve();
      tx.onerror = () => reject(tx.error);
    });
  } catch {}
}

// ---- Sync status, for the little indicator ---------------------------------------------------

type OutboxItem = { path: string; body?: unknown };
export type SyncStatus = { online: boolean; pending: number; snapshotAt: number | null };

let snapshot: Snapshot | null = null;
let outbox: OutboxItem[] = [];
let online = navigator.onLine;
const listeners = new Set<() => void>();

const status = (): SyncStatus => ({
  online,
  pending: outbox.reduce((n, item) => n + (Array.isArray(item.body) ? item.body.length : 1), 0),
  snapshotAt: snapshot?.fetched_at ?? null,
});
const notify = () => listeners.forEach((l) => l());
const setOnline = (value: boolean) => {
  if (online !== value) {
    online = value;
    notify();
  }
};

export function useSyncStatus(): SyncStatus {
  const [s, setS] = useState(status);
  useEffect(() => {
    const update = () => setS(status());
    listeners.add(update);
    update();
    return () => void listeners.delete(update);
  }, []);
  return s;
}

// ---- Sync code: who this device studies as -----------------------------------------------------
// Kept in both localStorage and IndexedDB so that losing one doesn't lose the account.

const CODE_KEY = "hippoqcm.code";
let code = "";

function readLocalCode(): string | null {
  try {
    return localStorage.getItem(CODE_KEY);
  } catch {
    return null;
  }
}

async function storeCode(value: string) {
  code = value;
  try {
    localStorage.setItem(CODE_KEY, value);
  } catch {}
  await kvSet("code", value);
}

const auth = () => ({ Authorization: `Bearer ${code}` });

/** This device's sync code (normalized, without dashes). */
export async function getCode(): Promise<string> {
  await ready;
  return code;
}

const ready = (async () => {
  const saved = [readLocalCode(), await kvGet<string>("code")].find((c) => c && isCode(c));
  await storeCode(saved ?? newCode());
  snapshot = (await kvGet<Snapshot>("snapshot")) ?? null;
  outbox = (await kvGet<OutboxItem[]>("outbox")) ?? [];
  notify();
})();

const saveOutbox = () => kvSet("outbox", outbox);
const saveSnapshot = () => kvSet("snapshot", snapshot);

class HttpError extends Error {}

// ---- Outbox ----------------------------------------------------------------------------------

let flushing: Promise<boolean> | null = null;

/** Send queued writes. Resolves false if the server couldn't be reached. */
export function flush(): Promise<boolean> {
  return (flushing ??= (async () => {
    try {
      await ready;
      while (outbox.length > 0) {
        // Merge consecutive queued reviews into one request.
        let count = 1;
        let body = outbox[0].body;
        if (outbox[0].path === "/api/reviews") {
          const reviews: unknown[] = [];
          for (count = 0; count < outbox.length && outbox[count].path === "/api/reviews"; count++) {
            const b = outbox[count].body;
            reviews.push(...(Array.isArray(b) ? b : [b]));
            if (reviews.length >= BATCH_SIZE) {
              count++;
              break;
            }
          }
          body = reviews;
        }
        let res: Response;
        try {
          res = await fetch(outbox[0].path, {
            method: "POST",
            headers: { "Content-Type": "application/json", ...auth() },
            body: body === undefined ? undefined : JSON.stringify(body),
            signal: AbortSignal.timeout(TIMEOUT_MS),
          });
        } catch {
          setOnline(false);
          return false;
        }
        setOnline(true);
        if (res.status >= 500) return true; // server trouble: keep the writes, retry later
        outbox.splice(0, count); // sent (or rejected for good with a 4xx)
        await saveOutbox();
        notify();
      }
      return true;
    } finally {
      flushing = null;
    }
  })());
}

async function enqueue(item: OutboxItem) {
  await ready;
  outbox.push(item);
  await saveOutbox();
  notify();
  void flush();
}

// ---- Writes ----------------------------------------------------------------------------------

/** Record reviews locally right away, then send them (now or once back online). */
export async function saveReviews(reviews: ReviewInput[]): Promise<void> {
  if (reviews.length === 0) return;
  try {
    localStorage.setItem("hippoqcm.studied", "1"); // STUDIED_KEY in Account.tsx: there's progress to lose now
  } catch {}
  await ready;
  if (snapshot) {
    const byId = new Map(snapshot.questions.map((q) => [q.id, q]));
    for (const r of reviews) {
      const q = byId.get(r.question_id);
      if (q) q.card = r.card;
    }
    await saveSnapshot();
  }
  await enqueue({ path: "/api/reviews", body: reviews });
}

// ---- Account ---------------------------------------------------------------------------------

/** Progress stored under a code, or null if the server has never seen it. Needs the network. */
async function fetchAccount(forCode: string): Promise<Account | null> {
  const res = await fetch("/api/account", {
    headers: { Authorization: `Bearer ${forCode}` },
    signal: AbortSignal.timeout(TIMEOUT_MS),
  });
  if (res.status === 404) return null;
  if (!res.ok) throw new Error(`HTTP ${res.status}`);
  return (await res.json()) as Account;
}

export async function getAccount(): Promise<Account | null> {
  await ready;
  return fetchAccount(code);
}

// Cached answers belong to the old account.
async function forgetCaches() {
  snapshot = null;
  try {
    const tx = (await db()).transaction("kv", "readwrite");
    const store = tx.objectStore("kv");
    store.clear();
    store.put(code, "code");
    store.put(outbox, "outbox");
    await new Promise<void>((resolve) => (tx.oncomplete = () => resolve()));
  } catch {}
}

/** Switch this device to another code's progress. Throws a readable message if it can't. */
export async function switchCode(input: string): Promise<void> {
  const next = normalizeCode(input);
  if (!isCode(next)) throw new Error("A sync code has 16 letters and numbers, like ABCD-EFGH-JKMN-PQRS");
  await ready;
  if (next === code) return;
  // Reviews still waiting would be sent under the wrong account after the switch.
  if (!(await flush()) || outbox.length > 0) {
    throw new Error("You have reviews waiting to sync. Connect to the internet and try again");
  }
  let account: Account | null;
  try {
    account = await fetchAccount(next);
  } catch {
    throw new Error("Couldn't reach the server. Check your connection and try again");
  }
  if (!account) throw new Error("No progress found for this code. Check it for typos");
  await storeCode(next);
  await forgetCaches();
}

/** Erase this code's progress on the server and start over with a new code. */
export async function deleteProgress(): Promise<void> {
  await ready;
  const res = await fetch("/api/account", { method: "DELETE", headers: auth(), signal: AbortSignal.timeout(TIMEOUT_MS) });
  if (!res.ok) throw new Error(`Couldn't delete progress (HTTP ${res.status})`);
  outbox = [];
  await storeCode(newCode());
  await forgetCaches();
}

export async function flagQuestion(id: number): Promise<void> {
  await ready;
  if (snapshot) {
    snapshot.questions = snapshot.questions.filter((q) => q.id !== id);
    await saveSnapshot();
  }
  await enqueue({ path: `/api/questions/${id}/flag` });
}

// ---- Reads -----------------------------------------------------------------------------------

/** GET from the worker, falling back to the offline snapshot when the network is unavailable. */
export async function getJSON<T>(path: string): Promise<T> {
  // Queued reviews go first so server-side due counts include them.
  const reachable = navigator.onLine && (await flush());
  if (reachable) {
    try {
      await ready;
      const res = await fetch(path, { headers: auth(), signal: AbortSignal.timeout(TIMEOUT_MS) });
      if (!res.ok) throw new HttpError(`HTTP ${res.status}`);
      const data = (await res.json()) as T;
      setOnline(true);
      if (!isComputable(path)) void kvSet(`get:${path}`, data); // last known copy
      return data;
    } catch (e) {
      if (e instanceof HttpError) throw e;
    }
  }
  setOnline(false);
  await ready;
  const local = isComputable(path) ? offlineAnswer(path) : await kvGet<T>(`get:${path}`);
  if (local === undefined) throw new Error("You're offline and this hasn't been saved for offline use yet");
  return local as T;
}

/** Refresh the offline snapshot (and have the service worker fetch its images and PDFs). */
export async function refreshSnapshot(): Promise<void> {
  if (!navigator.onLine || !(await flush()) || outbox.length > 0) return;
  try {
    await ready;
    const res = await fetch("/api/snapshot", { headers: auth(), signal: AbortSignal.timeout(30_000) });
    if (!res.ok) return;
    snapshot = (await res.json()) as Snapshot;
    // A review made while the download was in flight would be missing from it; it'll be in the next one.
    await saveSnapshot();
    notify();
    const urls = [
      ...snapshot.questions.flatMap((q) => (q.image ? [`/images/${q.image}`] : [])),
      ...snapshot.lessons.map((l) => `/lessons/${l.pdf}`),
    ];
    navigator.serviceWorker?.ready.then((reg) => reg.active?.postMessage({ type: "cache", urls }));
  } catch {}
}

// ---- Offline answers, computed from the snapshot ---------------------------------------------
// These mirror the worker's SQL for the same routes.

type Counts = Pick<Module, "question_count" | "due_count" | "new_count" | "learn_count" | "review_count">;

function counts(questions: StudyQuestion[], now: number): Counts {
  let due = 0, fresh = 0, learn = 0, review = 0;
  for (const { card } of questions) {
    if (!card) fresh++;
    if (!card || card.due <= now) due++;
    if (card && card.due <= now && (card.state === 1 || card.state === 3)) learn++;
    if (card && card.due <= now && card.state === 2) review++;
  }
  return { question_count: questions.length, due_count: due, new_count: fresh, learn_count: learn, review_count: review };
}

function shuffle<T>(items: T[]): T[] {
  const a = [...items];
  for (let i = a.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [a[i], a[j]] = [a[j], a[i]];
  }
  return a;
}

/** Routes the snapshot can answer; anything else falls back to the last copy fetched online. */
function isComputable(path: string): boolean {
  const p = new URL(path, location.origin).pathname;
  return (
    p === "/api/modules" ||
    /^\/api\/(?:modules\/\d+\/)?lessons$/.test(p) ||
    /^\/api\/(?:(?:years|semesters|modules|lessons)\/\d+|leeches)\/study$/.test(p) ||
    /^\/api\/modules\/\d+\/exam$/.test(p)
  );
}

/** The snapshot's answer for a computable GET path, or undefined without a snapshot. */
function offlineAnswer(path: string): unknown {
  if (!snapshot || !isComputable(path)) return undefined;
  const url = new URL(path, location.origin);
  const p = url.pathname;
  const s = snapshot;
  const now = Date.now();

  if (p === "/api/modules") {
    return s.modules.map((m): Module => {
      const qs = s.questions.filter((q) => q.module_id === m.id);
      return {
        ...m,
        ...counts(qs, now),
        lesson_count: s.lessons.filter((l) => l.module_id === m.id).length,
        lesson_question_count: qs.filter((q) => q.lesson_ids.length > 0).length,
      };
    });
  }

  const lessons = p.match(/^\/api\/(?:modules\/(\d+)\/)?lessons$/);
  if (lessons) {
    const moduleId = lessons[1] ? Number(lessons[1]) : null;
    return s.lessons
      .filter((l) => moduleId === null || l.module_id === moduleId)
      .map((l): Lesson => {
        const qs = s.questions.filter((q) => q.lesson_ids.includes(l.id));
        return { ...l, ...counts(qs, now), exam_count: qs.filter((q) => q.origin === "exam").length };
      });
  }

  const exam = p.match(/^\/api\/modules\/(\d+)\/exam$/);
  if (exam) {
    const examOnly = url.searchParams.get("origin") === "exam";
    const n = Math.min(Number(url.searchParams.get("n")) || 20, 200);
    const pool = s.questions.filter((q) => q.module_id === Number(exam[1]) && (!examOnly || q.origin === "exam"));
    return shuffle(pool).slice(0, n);
  }

  const study = p.match(/^\/api\/(?:(years|semesters|modules|lessons)\/(\d+)|leeches)\/study$/)!;
  const id = Number(study[2]);
  const semesterOf = new Map(s.modules.map((m) => [m.id, m.semester]));
  const inScope = (q: Snapshot["questions"][number]): boolean => {
    switch (study[1]) {
      case "years": return Math.ceil(semesterOf.get(q.module_id)! / 2) === id;
      case "semesters": return semesterOf.get(q.module_id) === id;
      case "modules": return q.module_id === id && (url.searchParams.get("lessons") !== "1" || q.lesson_ids.length > 0);
      case "lessons": return q.lesson_ids.includes(id);
      default: return (q.card?.lapses ?? 0) >= LEECH_LAPSES;
    }
  };
  const all = url.searchParams.get("all") === "1";
  return s.questions
    .filter((q) => inScope(q) && (all || !q.card || q.card.due <= now))
    // Overdue reviews first, then unseen questions in exam order.
    .sort((a, b) => (a.card ? 0 : 1) - (b.card ? 0 : 1) || (a.card?.due ?? 0) - (b.card?.due ?? 0) || a.id - b.id);
}

/** Register the service worker and keep the snapshot fresh. Call once at startup. */
export function startOffline() {
  if (import.meta.env.PROD && "serviceWorker" in navigator) {
    navigator.serviceWorker.register("/sw.js").catch(() => {});
  }
  // Mobile browsers may evict site storage under pressure; unsynced reviews live there.
  void navigator.storage?.persist?.().catch(() => {});
  void refreshSnapshot();
  // Phones suspend backgrounded tabs, so retry the outbox whenever the app comes back.
  document.addEventListener("visibilitychange", () => {
    if (document.visibilityState === "visible" && outbox.length > 0) void flush();
  });
  window.addEventListener("online", () => {
    setOnline(true);
    void refreshSnapshot();
  });
  window.addEventListener("offline", () => setOnline(false));
}
