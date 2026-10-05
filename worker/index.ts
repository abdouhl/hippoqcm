import type { ActivityDay, Option, ReviewInput, StudyQuestion } from "../shared/types";

interface Env {
  DB: D1Database;
  ASSETS: Fetcher;
}

const json = (data: unknown, status = 200) => Response.json(data, { status });

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
    // lesson) or one lesson. Year n = semesters 2n-1 and 2n.
    const studyMatch = url.pathname.match(/^\/api\/(years|semesters|modules|lessons)\/(\d+)\/study$/);
    if (studyMatch && request.method === "GET") {
      const onlyLessons = url.searchParams.get("lessons") === "1"
        ? " AND EXISTS (SELECT 1 FROM question_lessons ql WHERE ql.question_id = q.id)"
        : "";
      const scope = {
        years: "q.module_id IN (SELECT id FROM modules WHERE (semester + 1) / 2 = ?1)",
        semesters: "q.module_id IN (SELECT id FROM modules WHERE semester = ?1)",
        modules: "q.module_id = ?1" + onlyLessons,
        lessons: "q.id IN (SELECT question_id FROM question_lessons WHERE lesson_id = ?1)",
      }[studyMatch[1] as "years" | "semesters" | "modules" | "lessons"];
      const where = `${scope} AND q.flagged = 0 AND (?2 = 1 OR c.question_id IS NULL OR c.due <= ?3)`;
      const params = [Number(studyMatch[2]), url.searchParams.get("all") === "1" ? 1 : 0, Date.now()];

      const { results: questions } = await env.DB.prepare(
        `SELECT q.id, q.stem, q.explanation, q.source, q.image, q.origin, q.pdf_page,
                (SELECT l.pdf FROM question_lessons ql JOIN lessons l ON l.id = ql.lesson_id
                 WHERE ql.question_id = q.id ORDER BY l.position LIMIT 1) AS pdf,
                c.due, c.stability, c.difficulty, c.elapsed_days, c.scheduled_days,
                c.learning_steps, c.reps, c.lapses, c.state, c.last_review
         FROM questions q
         LEFT JOIN cards c ON c.question_id = q.id
         WHERE ${where}
         -- Overdue reviews first, then unseen questions in exam order.
         ORDER BY c.due IS NULL, c.due, q.id`,
      )
        .bind(...params)
        .all<Record<string, unknown>>();
      if (questions.length === 0) return json([]);

      // Same filter as above via a join — D1 caps bound parameters at 100, so no IN (...) list.
      const { results: options } = await env.DB.prepare(
        `SELECT o.question_id, o.label, o.text, o.is_correct
         FROM options o
         JOIN questions q ON q.id = o.question_id
         LEFT JOIN cards c ON c.question_id = q.id
         WHERE ${where}
         ORDER BY o.question_id, o.label`,
      )
        .bind(...params)
        .all<{ question_id: number } & Option>();

      const byQuestion = new Map<number, Option[]>();
      for (const { question_id, ...o } of options) {
        if (!byQuestion.has(question_id)) byQuestion.set(question_id, []);
        byQuestion.get(question_id)!.push(o);
      }

      const study: StudyQuestion[] = questions.map((q) => ({
        id: q.id as number,
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
      return json(study);
    }

    const flagMatch = url.pathname.match(/^\/api\/questions\/(\d+)\/flag$/);
    if (flagMatch && request.method === "POST") {
      await env.DB.prepare("UPDATE questions SET flagged = 1 WHERE id = ?1").bind(Number(flagMatch[1])).run();
      return json({ ok: true });
    }

    if (url.pathname === "/api/reviews" && request.method === "POST") {
      const r = (await request.json()) as ReviewInput;
      const c = r.card;
      await env.DB.batch([
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
      ]);
      return json({ ok: true });
    }

    if (url.pathname.startsWith("/api/")) {
      return json({ error: "Not found" }, 404);
    }

    return env.ASSETS.fetch(request);
  },
} satisfies ExportedHandler<Env>;
