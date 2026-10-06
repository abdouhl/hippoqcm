import type { ActivityDay, Insights, Option, ReviewInput, Snapshot, StudyQuestion } from "../shared/types";

interface Env {
  DB: D1Database;
  ASSETS: Fetcher;
}

const json = (data: unknown, status = 200) => Response.json(data, { status });

// A question with this many lapses keeps slipping: it's a leech.
const LEECH_LAPSES = 4;

// Columns for a StudyQuestion row; expects `questions q LEFT JOIN cards c`.
const QUESTION_COLUMNS = `q.id, q.module_id, q.stem, q.explanation, q.source, q.image, q.origin, q.pdf_page,
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
         LEFT JOIN cards c ON c.question_id = q.id
         GROUP BY m.id
         ORDER BY m.semester, m.name`,
      )
        .bind(now)
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
         LEFT JOIN cards c ON c.question_id = q.id
         WHERE ?1 IS NULL OR l.module_id = ?1
         GROUP BY l.id
         ORDER BY l.module_id, l.position`,
      )
        .bind(lessonsMatch[1] ? Number(lessonsMatch[1]) : null, Date.now())
        .all();
      return json(results);
    }

    // Reviews per local day for the activity grid. tz = Date#getTimezoneOffset() in minutes.
    if (url.pathname === "/api/activity" && request.method === "GET") {
      const offset = (Number(url.searchParams.get("tz")) || 0) * 60_000;
      const { results } = await env.DB.prepare(
        `SELECT CAST((reviewed_at - ?1) / 86400000 AS INTEGER) AS day, COUNT(*) AS count
         FROM review_log
         WHERE reviewed_at >= ?2
         GROUP BY day
         ORDER BY day`,
      )
        .bind(offset, Date.now() - 400 * 86_400_000)
        .all<ActivityDay>();
      return json(results);
    }

    // Study queue for a whole year, a semester, a module (optionally only questions tied to a
    // lesson), one lesson, or every leech. Year n = semesters 2n-1 and 2n.
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
         LEFT JOIN cards c ON c.question_id = q.id
         WHERE ${scope} AND q.flagged = 0 AND (?2 = 1 OR c.question_id IS NULL OR c.due <= ?3)
         -- Overdue reviews first, then unseen questions in exam order.
         ORDER BY c.due IS NULL, c.due, q.id`,
      )
        .bind(studyMatch[2] ? Number(studyMatch[2]) : null, url.searchParams.get("all") === "1" ? 1 : 0, Date.now())
        .all<Record<string, unknown>>();
      return json(await toStudyQuestions(env.DB, results));
    }

    // Random sample of a module's questions for a mock exam, ignoring due dates.
    const examMatch = url.pathname.match(/^\/api\/modules\/(\d+)\/exam$/);
    if (examMatch && request.method === "GET") {
      const { results } = await env.DB.prepare(
        `SELECT ${QUESTION_COLUMNS}
         FROM questions q
         LEFT JOIN cards c ON c.question_id = q.id
         WHERE q.module_id = ?1 AND q.flagged = 0 AND (?2 = 0 OR q.origin = 'exam')
         ORDER BY RANDOM()
         LIMIT ?3`,
      )
        .bind(
          Number(examMatch[1]),
          url.searchParams.get("origin") === "exam" ? 1 : 0,
          Math.min(Number(url.searchParams.get("n")) || 20, 200),
        )
        .all<Record<string, unknown>>();
      return json(await toStudyQuestions(env.DB, results));
    }

    // Weak spots: accuracy per module and lesson, leeches, and how wrong answers go wrong.
    if (url.pathname === "/api/insights" && request.method === "GET") {
      const [modules, lessons, leeches, wrong] = await env.DB.batch([
        env.DB.prepare(
          `SELECT q.module_id, COUNT(*) AS reviews, SUM(r.correct) AS correct
           FROM review_log r JOIN questions q ON q.id = r.question_id
           GROUP BY q.module_id`,
        ),
        env.DB.prepare(
          `SELECT l.id, l.module_id, l.title, COUNT(*) AS reviews, SUM(r.correct) AS correct
           FROM review_log r
           JOIN question_lessons ql ON ql.question_id = r.question_id
           JOIN lessons l ON l.id = ql.lesson_id
           GROUP BY l.id`,
        ),
        env.DB.prepare(
          `SELECT q.id, q.module_id, q.stem, c.lapses, c.reps
           FROM cards c JOIN questions q ON q.id = c.question_id
           WHERE c.lapses >= ?1 AND q.flagged = 0
           ORDER BY c.lapses DESC, c.reps DESC`,
        ).bind(LEECH_LAPSES),
        env.DB.prepare(
          `SELECT r.selected,
                  (SELECT group_concat(label, '') FROM
                     (SELECT label FROM options WHERE question_id = r.question_id AND is_correct = 1 ORDER BY label)
                  ) AS answer
           FROM review_log r
           WHERE r.correct = 0`,
        ),
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
      };
      return json(insights);
    }

    // Everything needed to study offline: the deck tree and every question with its card.
    if (url.pathname === "/api/snapshot" && request.method === "GET") {
      const [modules, lessons, links, questions] = await env.DB.batch([
        env.DB.prepare("SELECT id, semester, name FROM modules ORDER BY semester, name"),
        env.DB.prepare(
          "SELECT id, module_id, title, pdf, position, completed_at FROM lessons ORDER BY module_id, position",
        ),
        env.DB.prepare("SELECT question_id, lesson_id FROM question_lessons"),
        env.DB.prepare(
          `SELECT ${QUESTION_COLUMNS}
           FROM questions q
           LEFT JOIN cards c ON c.question_id = q.id
           WHERE q.flagged = 0
           ORDER BY q.id`,
        ),
      ]);
      const lessonIds = new Map<number, number[]>();
      for (const { question_id, lesson_id } of links.results as { question_id: number; lesson_id: number }[]) {
        if (!lessonIds.has(question_id)) lessonIds.set(question_id, []);
        lessonIds.get(question_id)!.push(lesson_id);
      }
      const snapshot: Snapshot = {
        modules: modules.results as Snapshot["modules"],
        lessons: lessons.results as Snapshot["lessons"],
        questions: (await toStudyQuestions(env.DB, questions.results as Record<string, unknown>[])).map((q) => ({
          ...q,
          lesson_ids: lessonIds.get(q.id) ?? [],
        })),
        fetched_at: Date.now(),
      };
      return json(snapshot);
    }

    const flagMatch = url.pathname.match(/^\/api\/questions\/(\d+)\/flag$/);
    if (flagMatch && request.method === "POST") {
      await env.DB.prepare("UPDATE questions SET flagged = 1 WHERE id = ?1").bind(Number(flagMatch[1])).run();
      return json({ ok: true });
    }

    // One review, or a batch (a finished mock exam, or reviews queued while offline).
    if (url.pathname === "/api/reviews" && request.method === "POST") {
      const body = (await request.json()) as ReviewInput | ReviewInput[];
      const reviews = Array.isArray(body) ? body : [body];
      if (reviews.length === 0) return json({ ok: true });
      await env.DB.batch(
        reviews.flatMap((r) => {
          const c = r.card;
          return [
            env.DB.prepare(
              `INSERT INTO cards (question_id, due, stability, difficulty, elapsed_days, scheduled_days,
                                  learning_steps, reps, lapses, state, last_review)
               VALUES (?1, ?2, ?3, ?4, ?5, ?6, ?7, ?8, ?9, ?10, ?11)
               ON CONFLICT (question_id) DO UPDATE SET
                 due = excluded.due, stability = excluded.stability, difficulty = excluded.difficulty,
                 elapsed_days = excluded.elapsed_days, scheduled_days = excluded.scheduled_days,
                 learning_steps = excluded.learning_steps, reps = excluded.reps, lapses = excluded.lapses,
                 state = excluded.state, last_review = excluded.last_review`,
            ).bind(
              r.question_id, c.due, c.stability, c.difficulty, c.elapsed_days, c.scheduled_days,
              c.learning_steps, c.reps, c.lapses, c.state, c.last_review,
            ),
            env.DB.prepare(
              `INSERT INTO review_log (question_id, rating, correct, selected, reviewed_at)
               VALUES (?1, ?2, ?3, ?4, ?5)`,
            ).bind(r.question_id, r.rating, r.correct ? 1 : 0, r.selected, r.reviewed_at),
          ];
        }),
      );
      return json({ ok: true });
    }

    if (url.pathname.startsWith("/api/")) {
      return json({ error: "Not found" }, 404);
    }

    return env.ASSETS.fetch(request);
  },
} satisfies ExportedHandler<Env>;
