import { hashCode, isCode, normalizeCode } from "../shared/code";
import type {
  Account, ActivityDay, Insights, LessonRead, Option, ReadKind, ReviewInput, Snapshot, SnapshotUpdate, StudyQuestion,
  SyncedPrefs,
} from "../shared/types";

interface Env {
  DB: D1Database;
  ASSETS: Fetcher;
}

const json = (data: unknown, status = 200) => Response.json(data, { status });

// Lesson ids from "?ids=1,2,3" (or another list parameter, like "?modules=1,2").
const idList = (url: URL, param = "ids"): number[] =>
  (url.searchParams.get(param) ?? "").split(",").map(Number).filter((n) => Number.isInteger(n) && n > 0);

// A question with this many lapses keeps slipping: it's a leech.
const LEECH_LAPSES = 4;

// The caller's sync code, from "Authorization: Bearer <code>"; null if missing or malformed.
function codeOf(request: Request): string | null {
  const match = request.headers.get("Authorization")?.match(/^Bearer (.+)$/);
  const code = match ? normalizeCode(match[1]) : "";
  return isCode(code) ? code : null;
}

// User id for reads. Unknown codes get 0, which matches no rows: a fresh account with no progress.
async function readerId(request: Request, db: D1Database): Promise<number> {
  const code = codeOf(request);
  if (!code) return 0;
  const row = await db.prepare("SELECT id FROM users WHERE token_hash = ?1").bind(await hashCode(code)).first<{ id: number }>();
  return row?.id ?? 0;
}

// User id for writes; a code's first write creates its user.
async function writerId(code: string, db: D1Database): Promise<number> {
  const row = await db.prepare(
    `INSERT INTO users (token_hash, last_seen) VALUES (?1, ?2)
     ON CONFLICT (token_hash) DO UPDATE SET last_seen = excluded.last_seen
     RETURNING id`,
  )
    .bind(await hashCode(code), Date.now())
    .first<{ id: number }>();
  return row!.id;
}

// A user's reads of each lesson, oldest first.
async function readsByLesson(db: D1Database, user: number): Promise<Map<number, LessonRead[]>> {
  const { results } = await db.prepare(
    "SELECT lesson_id, kind, read_at FROM lesson_read_log WHERE user_id = ?1 ORDER BY read_at",
  )
    .bind(user)
    .all<{ lesson_id: number; kind: ReadKind; read_at: number }>();
  const reads = new Map<number, LessonRead[]>();
  for (const { lesson_id, kind, read_at } of results) {
    if (!reads.has(lesson_id)) reads.set(lesson_id, []);
    reads.get(lesson_id)!.push({ kind, at: read_at });
  }
  return reads;
}

// FSRS weights fitted for this user by scripts/optimize.ts, else the ones fitted on everyone's reviews.
async function fsrsWeights(db: D1Database, user: number): Promise<number[] | null> {
  const row = await db.prepare(
    "SELECT w FROM fsrs_params WHERE user_id = ?1 OR user_id IS NULL ORDER BY user_id IS NULL LIMIT 1",
  )
    .bind(user)
    .first<{ w: string }>();
  return row ? (JSON.parse(row.w) as number[]) : null;
}

// Columns for a StudyQuestion row; expects `questions q LEFT JOIN cards c`.
const QUESTION_COLUMNS = `q.id, q.module_id, q.stem, q.explanation, q.source, q.image, q.origin, q.pdf_page, q.exam_weight,
  (SELECT l.pdf FROM question_lessons ql JOIN lessons l ON l.id = ql.lesson_id
   WHERE ql.question_id = q.id ORDER BY l.position LIMIT 1) AS pdf,
  c.due, c.stability, c.difficulty, c.elapsed_days, c.scheduled_days,
  c.learning_steps, c.reps, c.lapses, c.state, c.last_review`;

// Attach options to question rows. The ids go in as one JSON param — D1 caps bound parameters at 100.
async function toStudyQuestions(db: D1Database, rows: Record<string, unknown>[]): Promise<StudyQuestion[]> {
  if (rows.length === 0) return [];
  const { results: options } = await db.prepare(
    `SELECT o.question_id, o.label, o.text, o.is_correct
     FROM options o
     WHERE o.question_id IN (SELECT value FROM json_each(?1))
     ORDER BY o.question_id, o.label`,
  )
    .bind(JSON.stringify(rows.map((q) => q.id)))
    .all<{ question_id: number } & Option>();

  const byQuestion = new Map<number, Option[]>();
  for (const { question_id, ...o } of options) {
    if (!byQuestion.has(question_id)) byQuestion.set(question_id, []);
    byQuestion.get(question_id)!.push(o);
  }

  return rows.map((q) => ({
    id: q.id as number,
    module_id: q.module_id as number,
    stem: q.stem as string,
    explanation: q.explanation as string | null,
    image: q.image as string | null,
    source: q.source as string | null,
    origin: q.origin as StudyQuestion["origin"],
    pdf: q.pdf as string | null,
    pdf_page: q.pdf_page as number | null,
    exam_weight: q.exam_weight as number,
    options: byQuestion.get(q.id as number) ?? [],
    card:
      q.due == null
        ? null
        : {
            due: q.due as number,
            stability: q.stability as number,
            difficulty: q.difficulty as number,
            elapsed_days: q.elapsed_days as number,
            scheduled_days: q.scheduled_days as number,
            learning_steps: q.learning_steps as number,
            reps: q.reps as number,
            lapses: q.lapses as number,
            state: q.state as number,
            last_review: q.last_review as number | null,
          },
  }));
}

export default {
  async fetch(request, env): Promise<Response> {
    const url = new URL(request.url);
    const isApiGet = url.pathname.startsWith("/api/") && request.method === "GET";
    const user = isApiGet ? await readerId(request, env.DB) : 0;

    if (url.pathname === "/api/modules" && request.method === "GET") {
      const now = Date.now();
      const { results } = await env.DB.prepare(
        `SELECT m.id, m.semester, m.name,
                COUNT(q.id) AS question_count,
                -- Unseen questions (no card yet) count as due.
                COALESCE(SUM(CASE WHEN q.id IS NOT NULL AND (c.question_id IS NULL OR c.due <= ?1) THEN 1 ELSE 0 END), 0) AS due_count,
                COALESCE(SUM(q.id IS NOT NULL AND c.question_id IS NULL), 0) AS new_count,
                COALESCE(SUM(c.state IN (1, 3) AND c.due <= ?1), 0) AS learn_count,
                COALESCE(SUM(c.state = 2 AND c.due <= ?1), 0) AS review_count,
                COALESCE(SUM(EXISTS (SELECT 1 FROM question_lessons ql WHERE ql.question_id = q.id)), 0) AS lesson_question_count,
                (SELECT COUNT(*) FROM lessons l WHERE l.module_id = m.id) AS lesson_count
         FROM modules m
         LEFT JOIN questions q ON q.module_id = m.id AND q.flagged = 0
         LEFT JOIN cards c ON c.question_id = q.id AND c.user_id = ?2
         GROUP BY m.id
         ORDER BY m.semester, m.name`,
      )
        .bind(now, user)
        .all();
      return json(results);
    }

    // Lessons of one module, or of every module (for the deck tree).
    const lessonsMatch = url.pathname.match(/^\/api\/(?:modules\/(\d+)\/)?lessons$/);
    if (lessonsMatch && request.method === "GET") {
      const { results } = await env.DB.prepare(
        `SELECT l.id, l.module_id, l.title, l.pdf, l.position, l.completed_at,
                COUNT(q.id) AS question_count,
                COALESCE(SUM(q.origin = 'exam'), 0) AS exam_count,
                COALESCE(SUM(CASE WHEN q.id IS NOT NULL AND (c.question_id IS NULL OR c.due <= ?2) THEN 1 ELSE 0 END), 0) AS due_count,
                COALESCE(SUM(q.id IS NOT NULL AND c.question_id IS NULL), 0) AS new_count,
                COALESCE(SUM(c.state IN (1, 3) AND c.due <= ?2), 0) AS learn_count,
                COALESCE(SUM(c.state = 2 AND c.due <= ?2), 0) AS review_count
         FROM lessons l
         LEFT JOIN question_lessons ql ON ql.lesson_id = l.id
         LEFT JOIN questions q ON q.id = ql.question_id AND q.flagged = 0
         LEFT JOIN cards c ON c.question_id = q.id AND c.user_id = ?3
         WHERE ?1 IS NULL OR l.module_id = ?1
         GROUP BY l.id
         ORDER BY l.module_id, l.position`,
      )
        .bind(lessonsMatch[1] ? Number(lessonsMatch[1]) : null, Date.now(), user)
        .all();
      const reads = await readsByLesson(env.DB, user);
      return json(
        results.map((l) => {
          const r = reads.get(l.id as number) ?? [];
          return { ...l, reads: r, read_at: r.at(-1)?.at ?? null };
        }),
      );
    }

    // Reviews per local day for the activity grid. tz = Date#getTimezoneOffset() in minutes.
    if (url.pathname === "/api/activity" && request.method === "GET") {
      const offset = (Number(url.searchParams.get("tz")) || 0) * 60_000;
      const { results } = await env.DB.prepare(
        `SELECT CAST((reviewed_at - ?1) / 86400000 AS INTEGER) AS day, COUNT(*) AS count
         FROM review_log
         WHERE user_id = ?3 AND reviewed_at >= ?2
         GROUP BY day
         ORDER BY day`,
      )
        .bind(offset, Date.now() - 400 * 86_400_000, user)
        .all<ActivityDay>();
      return json(results);
    }

    // Study queue for a whole year, a semester, a module (optionally only questions tied to a
    // lesson, or to the lessons listed in ?ids=1,2), one lesson, or every leech. Year n = semesters 2n-1 and 2n.
    // ?modules=1,2 keeps only those modules' questions.
    const studyMatch = url.pathname.match(/^\/api\/(?:(years|semesters|modules|lessons)\/(\d+)|(leeches))\/study$/);
    if (studyMatch && request.method === "GET") {
      const onlyLessons = url.searchParams.get("lessons") === "1"
        ? " AND EXISTS (SELECT 1 FROM question_lessons ql WHERE ql.question_id = q.id)"
        : "";
      const scope = {
        years: "q.module_id IN (SELECT id FROM modules WHERE (semester + 1) / 2 = ?1)",
        semesters: "q.module_id IN (SELECT id FROM modules WHERE semester = ?1)",
        modules: "q.module_id = ?1" + onlyLessons,
        lessons: "q.id IN (SELECT question_id FROM question_lessons WHERE lesson_id = ?1)",
        // No id here; ?1 is still referenced so the bound parameters line up.
        leeches: `c.lapses >= ${LEECH_LAPSES} AND ?1 IS NULL`,
      }[(studyMatch[1] ?? studyMatch[3]) as "years" | "semesters" | "modules" | "lessons" | "leeches"];
      const { results } = await env.DB.prepare(
        `SELECT ${QUESTION_COLUMNS}
         FROM questions q
         LEFT JOIN cards c ON c.question_id = q.id AND c.user_id = ?4
         WHERE ${scope} AND q.flagged = 0 AND (?2 = 1 OR c.question_id IS NULL OR c.due <= ?3)
           AND (?5 IS NULL OR q.id IN (SELECT question_id FROM question_lessons
                                       WHERE lesson_id IN (SELECT value FROM json_each(?5))))
           AND (?6 IS NULL OR q.module_id IN (SELECT value FROM json_each(?6)))
         -- Overdue reviews first, then unseen questions in exam order.
         ORDER BY c.due IS NULL, c.due, q.id`,
      )
        .bind(
          studyMatch[2] ? Number(studyMatch[2]) : null,
          url.searchParams.get("all") === "1" ? 1 : 0,
          Date.now(),
          user,
          url.searchParams.has("ids") ? JSON.stringify(idList(url)) : null,
          url.searchParams.has("modules") ? JSON.stringify(idList(url, "modules")) : null,
        )
        .all<Record<string, unknown>>();
      return json(await toStudyQuestions(env.DB, results));
    }

    // Random sample of a module's questions for a mock exam, ignoring due dates; ?ids=1,2 limits it to those lessons.
    const examMatch = url.pathname.match(/^\/api\/modules\/(\d+)\/exam$/);
    if (examMatch && request.method === "GET") {
      const { results } = await env.DB.prepare(
        `SELECT ${QUESTION_COLUMNS}
         FROM questions q
         LEFT JOIN cards c ON c.question_id = q.id AND c.user_id = ?4
         WHERE q.module_id = ?1 AND q.flagged = 0 AND (?2 = 0 OR q.origin = 'exam')
           AND (?5 IS NULL OR q.id IN (SELECT question_id FROM question_lessons
                                       WHERE lesson_id IN (SELECT value FROM json_each(?5))))
         ORDER BY RANDOM()
         LIMIT ?3`,
      )
        .bind(
          Number(examMatch[1]),
          url.searchParams.get("origin") === "exam" ? 1 : 0,
          Math.min(Number(url.searchParams.get("n")) || 20, 200),
          user,
          url.searchParams.has("ids") ? JSON.stringify(idList(url)) : null,
        )
        .all<Record<string, unknown>>();
      return json(await toStudyQuestions(env.DB, results));
    }

    // Weak spots: accuracy per module and lesson, leeches, and how wrong answers go wrong.
    if (url.pathname === "/api/insights" && request.method === "GET") {
      const [modules, lessons, leeches, wrong, calibration] = await env.DB.batch([
        env.DB.prepare(
          `SELECT q.module_id, COUNT(*) AS reviews, SUM(r.correct) AS correct
           FROM review_log r JOIN questions q ON q.id = r.question_id
           WHERE r.user_id = ?1
           GROUP BY q.module_id`,
        ).bind(user),
        env.DB.prepare(
          `SELECT l.id, l.module_id, l.title, COUNT(*) AS reviews, SUM(r.correct) AS correct
           FROM review_log r
           JOIN question_lessons ql ON ql.question_id = r.question_id
           JOIN lessons l ON l.id = ql.lesson_id
           WHERE r.user_id = ?1
           GROUP BY l.id`,
        ).bind(user),
        env.DB.prepare(
          `SELECT q.id, q.module_id, q.stem, c.lapses, c.reps
           FROM cards c JOIN questions q ON q.id = c.question_id
           WHERE c.user_id = ?2 AND c.lapses >= ?1 AND q.flagged = 0
           ORDER BY c.lapses DESC, c.reps DESC`,
        ).bind(LEECH_LAPSES, user),
        env.DB.prepare(
          `SELECT r.selected,
                  (SELECT group_concat(label, '') FROM
                     (SELECT label FROM options WHERE question_id = r.question_id AND is_correct = 1 ORDER BY label)
                  ) AS answer
           FROM review_log r
           WHERE r.user_id = ?1 AND r.correct = 0`,
        ).bind(user),
        // Graduated reviews only: learning steps are minutes apart and nearly always right.
        env.DB.prepare(
          `SELECT MIN(CAST(retrievability * 10 AS INTEGER), 9) AS bucket, COUNT(*) AS reviews, SUM(correct) AS correct
           FROM review_log
           WHERE user_id = ?1 AND retrievability IS NOT NULL AND state = 2
           GROUP BY bucket
           ORDER BY bucket`,
        ).bind(user),
      ]);

      // Split wrong answers by what went wrong: ticked a false option, missed a true one, or both.
      const errors = { total: 0, extra: 0, missed: 0, both: 0 };
      for (const { selected, answer } of wrong.results as { selected: string; answer: string | null }[]) {
        const truth = answer ?? "";
        const hasExtra = [...selected].some((l) => !truth.includes(l));
        const hasMissed = [...truth].some((l) => !selected.includes(l));
        errors.total++;
        if (hasExtra && hasMissed) errors.both++;
        else if (hasExtra) errors.extra++;
        else if (hasMissed) errors.missed++;
      }

      const insights: Insights = {
        modules: modules.results as Insights["modules"],
        lessons: lessons.results as Insights["lessons"],
        leeches: leeches.results as Insights["leeches"],
        errors,
        calibration: calibration.results as Insights["calibration"],
      };
      return json(insights);
    }

    // Everything needed to study offline: the deck tree and every question with its card. With
    // ?content=<version> matching the current content, only the caller's progress.
    if (url.pathname === "/api/snapshot" && request.method === "GET") {
      const [version, prefsRow] = await env.DB.batch([
        env.DB.prepare("SELECT version FROM content_version"),
        env.DB.prepare("SELECT settings, updated_at FROM user_prefs WHERE user_id = ?1").bind(user),
      ]);
      const content_version = (version.results[0] as { version: number }).version;
      const p = prefsRow.results[0] as { settings: string; updated_at: number } | undefined;
      const prefs: SyncedPrefs = p ? { settings: JSON.parse(p.settings), updated_at: p.updated_at } : null;

      if (Number(url.searchParams.get("content")) === content_version) {
        const [cards, reads] = await env.DB.batch([
          env.DB.prepare(
            `SELECT question_id, due, stability, difficulty, elapsed_days, scheduled_days,
                    learning_steps, reps, lapses, state, last_review
             FROM cards WHERE user_id = ?1`,
          ).bind(user),
          env.DB.prepare("SELECT lesson_id, kind, read_at FROM lesson_read_log WHERE user_id = ?1 ORDER BY read_at").bind(user),
        ]);
        const update: SnapshotUpdate = {
          content_version,
          cards: cards.results as SnapshotUpdate["cards"],
          reads: reads.results as SnapshotUpdate["reads"],
          prefs,
          fsrs_w: await fsrsWeights(env.DB, user),
          fetched_at: Date.now(),
        };
        return json(update);
      }

      const [modules, lessons, links, questions] = await env.DB.batch([
        env.DB.prepare("SELECT id, semester, name FROM modules ORDER BY semester, name"),
        env.DB.prepare(
          "SELECT id, module_id, title, pdf, position, completed_at FROM lessons ORDER BY module_id, position",
        ),
        env.DB.prepare("SELECT question_id, lesson_id FROM question_lessons"),
        env.DB.prepare(
          `SELECT ${QUESTION_COLUMNS}
           FROM questions q
           LEFT JOIN cards c ON c.question_id = q.id AND c.user_id = ?1
           WHERE q.flagged = 0
           ORDER BY q.id`,
        ).bind(user),
      ]);
      const lessonIds = new Map<number, number[]>();
      for (const { question_id, lesson_id } of links.results as { question_id: number; lesson_id: number }[]) {
        if (!lessonIds.has(question_id)) lessonIds.set(question_id, []);
        lessonIds.get(question_id)!.push(lesson_id);
      }
      const reads = await readsByLesson(env.DB, user);
      const snapshot: Snapshot = {
        modules: modules.results as Snapshot["modules"],
        lessons: (lessons.results as Omit<Snapshot["lessons"][number], "reads">[]).map((l) => ({
          ...l,
          reads: reads.get(l.id) ?? [],
        })),
        questions: (await toStudyQuestions(env.DB, questions.results as Record<string, unknown>[])).map((q) => ({
          ...q,
          lesson_ids: lessonIds.get(q.id) ?? [],
        })),
        content_version,
        prefs,
        fsrs_w: await fsrsWeights(env.DB, user),
        fetched_at: Date.now(),
      };
      return json(snapshot);
    }

    // Whether a sync code has progress, checked before a device switches to it.
    if (url.pathname === "/api/account" && request.method === "GET") {
      if (!user) return json({ error: "No progress found for this code" }, 404);
      const row = await env.DB.prepare(
        `SELECT u.created_at,
                (SELECT COUNT(*) FROM review_log WHERE user_id = u.id) AS reviews,
                (SELECT COUNT(*) FROM cards WHERE user_id = u.id) AS cards
         FROM users u WHERE u.id = ?1`,
      )
        .bind(user)
        .first<Account>();
      return json(row);
    }

    // Erase the caller's progress for good.
    if (url.pathname === "/api/account" && request.method === "DELETE") {
      const code = codeOf(request);
      if (!code) return json({ error: "Sync code required" }, 400);
      await env.DB.prepare("DELETE FROM users WHERE token_hash = ?1").bind(await hashCode(code)).run();
      return json({ ok: true });
    }

    const flagMatch = url.pathname.match(/^\/api\/questions\/(\d+)\/flag$/);
    if (flagMatch && request.method === "POST") {
      await env.DB.prepare("UPDATE questions SET flagged = 1 WHERE id = ?1").bind(Number(flagMatch[1])).run();
      return json({ ok: true });
    }

    // Log one read of a lesson ({ kind, at }), or undo the read logged at { undo: at }.
    // { read, at } comes from app versions from before reads were counted.
    const readMatch = url.pathname.match(/^\/api\/lessons\/(\d+)\/read$/);
    if (readMatch && request.method === "POST") {
      const code = codeOf(request);
      if (!code) return json({ error: "Sync code required" }, 503);
      const body = (await request.json()) as { kind?: ReadKind; at?: number; undo?: number; read?: boolean };
      const userId = await writerId(code, env.DB);
      const lessonId = Number(readMatch[1]);
      const del = "DELETE FROM lesson_read_log WHERE user_id = ?1 AND lesson_id = ?2";
      await (body.undo !== undefined
        ? env.DB.prepare(`${del} AND read_at = ?3`).bind(userId, lessonId, body.undo)
        : body.read === false
          ? env.DB.prepare(del).bind(userId, lessonId)
          : env.DB.prepare(
              "INSERT INTO lesson_read_log (user_id, lesson_id, kind, read_at) VALUES (?1, ?2, ?3, ?4) ON CONFLICT DO NOTHING",
            ).bind(userId, lessonId, body.kind === "summary" ? "summary" : "pdf", body.at)
      ).run();
      return json({ ok: true });
    }

    // One review, or a batch (a finished mock exam, or reviews queued while offline).
    if (url.pathname === "/api/reviews" && request.method === "POST") {
      const code = codeOf(request);
      // An app version from before accounts: answer "try later" so it keeps its queued reviews
      // until the new version loads and sends them with a code.
      if (!code) return json({ error: "Sync code required" }, 503);
      const body = (await request.json()) as ReviewInput | ReviewInput[];
      const reviews = Array.isArray(body) ? body : [body];
      if (reviews.length === 0) return json({ ok: true });
      const userId = await writerId(code, env.DB);
      await env.DB.batch(
        reviews.flatMap((r) => {
          const c = r.card;
          const log = env.DB.prepare(
            // OR IGNORE: a batch whose response was lost is sent again.
            `INSERT OR IGNORE INTO review_log (question_id, rating, correct, selected, reviewed_at, user_id,
                                               state, elapsed_days, retrievability, duration_ms, guessed, exam)
             VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10, ?11, ?12)`,
          ).bind(
            r.question_id, r.rating, r.correct ? 1 : 0, r.selected, r.reviewed_at, userId,
            r.state ?? null, r.elapsed_days ?? null, r.retrievability ?? null, r.duration_ms ?? null,
            r.guessed == null ? null : r.guessed ? 1 : 0, r.exam ? 1 : 0,
          );
          if (!c) return [log];
          return [
            env.DB.prepare(
              `INSERT INTO cards (question_id, due, stability, difficulty, elapsed_days, scheduled_days,
                                  learning_steps, reps, lapses, state, last_review, user_id)
               VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10, ?11, ?12)
               ON CONFLICT (user_id, question_id) DO UPDATE SET
                 due = excluded.due, stability = excluded.stability, difficulty = excluded.difficulty,
                 elapsed_days = excluded.elapsed_days, scheduled_days = excluded.scheduled_days,
                 learning_steps = excluded.learning_steps, reps = excluded.reps, lapses = excluded.lapses,
                 state = excluded.state, last_review = excluded.last_review
               -- Devices sync in any order: a review made earlier but sent later mustn't win.
               WHERE COALESCE(excluded.last_review, 0) >= COALESCE(cards.last_review, 0)`,
            ).bind(
              r.question_id, c.due, c.stability, c.difficulty, c.elapsed_days, c.scheduled_days,
              c.learning_steps, c.reps, c.lapses, c.state, c.last_review, userId,
            ),
            log,
          ];
        }),
      );
      return json({ ok: true });
    }

    // Save study settings ({ settings, at }); an older save than the stored one is ignored.
    if (url.pathname === "/api/prefs" && request.method === "POST") {
      const code = codeOf(request);
      if (!code) return json({ error: "Sync code required" }, 503);
      const { settings, at } = (await request.json()) as { settings: Record<string, unknown>; at: number };
      const userId = await writerId(code, env.DB);
      await env.DB.prepare(
        `INSERT INTO user_prefs (user_id, settings, updated_at) VALUES (?1, ?2, ?3)
         ON CONFLICT (user_id) DO UPDATE SET settings = excluded.settings, updated_at = excluded.updated_at
         WHERE excluded.updated_at >= user_prefs.updated_at`,
      )
        .bind(userId, JSON.stringify(settings), at)
        .run();
      return json({ ok: true });
    }

    if (url.pathname.startsWith("/api/")) {
      return json({ error: "Not found" }, 404);
    }

    return env.ASSETS.fetch(request);
  },
} satisfies ExportedHandler<Env>;
