import { useCallback, useEffect, useRef, useState } from "react";
import { Rating } from "ts-fsrs";
import { points } from "../shared/papers";
import type { ExamAttempt, Label, Lesson, Module, ReviewInput, Scoring, StudyQuestion } from "../shared/types";
import { getJSON, saveAttempt, saveReviews } from "./api";
import { reviewFacts, schedule, toRow } from "./fsrs";
import { Icon } from "./icons";
import { ignoreKey, Kbd } from "./keys";
import { MentalTip, OptionMark } from "./Study";
import { getSettings } from "./prefs";
import { ScreenHeader } from "./ui";

const COUNTS = [10, 20, 30, 40];
const PACES = [
  { minutes: 1, label: "1 min / question" },
  { minutes: 1.5, label: "1.5 min / question" },
  { minutes: 0, label: "Untimed" },
];

type Running = {
  questions: StudyQuestion[];
  answers: Label[][]; // by question index
  index: number;
  startedAt: number;
  deadline: number | null; // unix ms, null = untimed
  paper: string | null; // the past paper being sat, null = random questions
  retry: boolean; // a redo of a finished exam's mistakes: not recorded as an attempt
  pace: number; // minutes per question, 0 = untimed
  spent: number[]; // ms spent on each question
  enteredAt: number; // unix ms the current question was shown
};
type Finished = Running & { submittedAt: number; scoring: Scoring; score: number };

const PASS = 10; // out of 20
const MAX_STRETCH_MS = 10 * 60_000; // longer on one question without moving = the app was left open

/** A grade out of 20, without trailing zeros: 14.5, 12.25, 9. */
export const formatScore = (score: number) => String(Math.round(score * 100) / 100);

// Time on the current question, added to its total when leaving it.
function leave(exam: Running, now: number): number[] {
  const spent = [...exam.spent];
  spent[exam.index] = (spent[exam.index] ?? 0) + Math.min(Math.max(0, now - exam.enteredAt), MAX_STRETCH_MS);
  return spent;
}

// An unfinished exam survives a reload or the app being closed.
const storageKey = (moduleId: number) => `exam.${moduleId}`;
function loadSaved(moduleId: number): Running | null {
  try {
    const saved = localStorage.getItem(storageKey(moduleId));
    if (!saved) return null;
    // Exams saved by older versions lack the newer fields.
    const exam = JSON.parse(saved) as Partial<Running> & Pick<Running, "questions" | "answers" | "index" | "startedAt" | "deadline">;
    return {
      paper: null,
      retry: false,
      pace: 0,
      spent: exam.questions.map(() => 0),
      enteredAt: Date.now(),
      ...exam,
    };
  } catch {
    return null;
  }
}
function save(moduleId: number, exam: Running | null) {
  try {
    if (exam) localStorage.setItem(storageKey(moduleId), JSON.stringify(exam));
    else localStorage.removeItem(storageKey(moduleId));
  } catch {}
}

const answerOf = (q: StudyQuestion) => q.options.filter((o) => o.is_correct).map((o) => o.label).sort().join("");
const isRight = (q: StudyQuestion, picked: Label[]) => [...picked].sort().join("") === answerOf(q);

function clock(ms: number): string {
  const total = Math.max(0, Math.round(ms / 1000));
  const m = Math.floor(total / 60);
  const s = total % 60;
  return `${m}:${String(s).padStart(2, "0")}`;
}

// `lessons` limits the exam to questions from those lessons; `paper` sits that whole past paper.
type Props = { module: Module; lessons?: Lesson[]; paper?: string; onExit: () => void };

export default function Exam({ module, lessons, paper, onExit }: Props) {
  const [exam, setExam] = useState<Running | null>(() => loadSaved(module.id));
  const [finished, setFinished] = useState<Finished | null>(null);
  const [error, setError] = useState<string | null>(null);
  const submitted = useRef<number | null>(null); // startedAt of the exam already handed in

  const update = useCallback(
    (next: Running | null) => {
      setExam(next);
      save(module.id, next);
    },
    [module.id],
  );

  const begin = (questions: StudyQuestion[], minutes: number, from: { paper: string | null; retry: boolean }) => {
    const now = Date.now();
    window.scrollTo(0, 0);
    update({
      questions,
      answers: questions.map(() => []),
      index: 0,
      startedAt: now,
      deadline: minutes ? now + questions.length * minutes * 60_000 : null,
      ...from,
      pace: minutes,
      spent: questions.map(() => 0),
      enteredAt: now,
    });
  };

  const start = async (count: number, minutes: number, examOnly: boolean) => {
    setError(null);
    try {
      const questions = await getJSON<StudyQuestion[]>(
        paper
          ? `/api/modules/${module.id}/exam?paper=${encodeURIComponent(paper)}`
          : `/api/modules/${module.id}/exam?n=${count}${examOnly ? "&origin=exam" : ""}${
              lessons ? `&ids=${lessons.map((l) => l.id).join(",")}` : ""
            }`,
      );
      if (questions.length === 0) throw new Error("No questions match these settings");
      begin(questions, minutes, { paper: paper ?? null, retry: false });
    } catch (e) {
      setError((e as Error).message);
    }
  };

  // Grade, and feed answered questions into the spaced-repetition schedule: right = Good, wrong = Again.
  // Unanswered ones are left alone — running out of time says little about what you know. A right answer
  // to a question not due yet is only logged: it was seen recently, so it proves little and would push
  // the question further out.
  const submit = useCallback(
    (running: Running) => {
      if (submitted.current === running.startedAt) return;
      submitted.current = running.startedAt;
      const now = new Date();
      const exam = { ...running, spent: leave(running, now.getTime()) };
      const reviews: ReviewInput[] = exam.questions.flatMap((q, i) => {
        const picked = exam.answers[i];
        if (picked.length === 0) return [];
        const correct = isRight(q, picked);
        const rating = correct ? Rating.Good : Rating.Again;
        const counts = !correct || !q.card || q.card.due <= now.getTime();
        return [{
          question_id: q.id,
          rating,
          correct,
          selected: [...picked].sort().join(""),
          card: counts ? toRow(schedule(q, now)[rating].card) : null,
          reviewed_at: now.getTime(),
          ...reviewFacts(q, now),
          exam: true,
        }];
      });
      void saveReviews(reviews);

      const scoring = getSettings().examScoring;
      const total = exam.questions.reduce((sum, q, i) => sum + points(q.options, exam.answers[i], scoring), 0);
      const score = Math.round((total / exam.questions.length) * 20 * 100) / 100;
      if (!exam.retry) {
        void saveAttempt({
          started_at: exam.startedAt,
          module_id: module.id,
          paper: exam.paper,
          submitted_at: now.getTime(),
          questions: exam.questions.length,
          correct: exam.questions.filter((q, i) => isRight(q, exam.answers[i])).length,
          score,
          scoring,
        });
      }
      update(null);
      window.scrollTo(0, 0);
      setFinished({ ...exam, submittedAt: now.getTime(), scoring, score });
    },
    [update, module.id],
  );

  if (finished) {
    return (
      <Results
        module={module}
        exam={finished}
        onRetry={() => setFinished(null)}
        onRedo={(questions) => {
          setFinished(null);
          begin(questions, finished.pace, { paper: finished.paper, retry: true });
        }}
        onExit={onExit}
      />
    );
  }
  if (exam) return <Sitting module={module} exam={exam} onChange={update} onSubmit={submit} />;
  return <Setup module={module} lessons={lessons} paper={paper} error={error} onStart={start} onExit={onExit} />;
}

// This user's handed-in exams on a module, oldest first; null while loading.
export function useAttempts(moduleId: number): ExamAttempt[] | null {
  const [attempts, setAttempts] = useState<ExamAttempt[] | null>(null);
  useEffect(() => {
    getJSON<ExamAttempt[]>(`/api/modules/${moduleId}/attempts`).then(setAttempts).catch(() => setAttempts([]));
  }, [moduleId]);
  return attempts;
}

/** Score history of one paper: "9 → 12.5 → 16", the latest last. */
function History({ attempts }: { attempts: ExamAttempt[] }) {
  if (attempts.length === 0) return null;
  const best = Math.max(...attempts.map((a) => a.score));
  return (
    <p className="meta paper-history">
      {attempts.length === 1 ? "Your earlier try" : `Your ${attempts.length} earlier tries`}:{" "}
      {attempts.slice(-6).map((a, i) => (
        <span key={a.started_at}>
          {i > 0 && " → "}
          <b className={a.score >= PASS ? "ok" : "bad"} title={new Date(a.submitted_at).toLocaleString()}>{formatScore(a.score)}</b>
        </span>
      ))}
      {attempts.length > 1 && <> · best {formatScore(best)}/20</>}
    </p>
  );
}

// ---- Setup -------------------------------------------------------------------------------------

function Setup({ module, lessons, paper, error, onStart, onExit }: {
  module: Module;
  lessons?: Lesson[];
  paper?: string;
  error: string | null;
  onStart: (count: number, minutes: number, examOnly: boolean) => Promise<void>;
  onExit: () => void;
}) {
  const [count, setCount] = useState(20);
  const [minutes, setMinutes] = useState(1);
  const [examOnly, setExamOnly] = useState(true);
  const [starting, setStarting] = useState(false);
  const attempts = useAttempts(module.id);
  const [size, setSize] = useState<{ count: number; missing: number[] } | null>(null);
  useEffect(() => {
    if (!paper) return;
    getJSON<{ paper: string; count: number; missing: number[] }[]>(`/api/modules/${module.id}/papers`)
      .then((ps) => setSize(ps.find((p) => p.paper === paper) ?? null))
      .catch(() => {});
  }, [module.id, paper]);
  const scoring = getSettings().examScoring === "partial" ? "partial credit" : "all-or-nothing scoring";

  return (
    <main>
      <ScreenHeader backLabel={module.name} onBack={onExit}>
        <span className="meta">{paper ? "Past paper" : "Mock exam"}</span>
      </ScreenHeader>
      {paper ? (
        <>
          <h1>{paper} · {module.name}</h1>
          <p className="meta">
            {size ? `${size.count} questions` : "The whole paper"}, in the order they were set. Answers hidden until you
            submit, {scoring}, graded out of 20. Your answers count as reviews.
          </p>
          {size && size.missing.length > 0 && (
            <p className="notice">
              <Icon name="alert" size={16} /> Incomplete: Q{size.missing.join(", Q")} {size.missing.length === 1 ? "is" : "are"} not
              in the app, so the grade is out of the {size.count} that are.
            </p>
          )}
          {attempts && <History attempts={attempts.filter((a) => a.paper === paper)} />}
        </>
      ) : (
        <>
          <h1>Mock exam · {module.name}</h1>
          {lessons && <p className="meta">On {lessons.map((l) => l.title).join(", ")}</p>}
          <p className="meta">
            Random questions, answers hidden until you submit. {scoring[0].toUpperCase() + scoring.slice(1)}, graded out of
            20. Your answers count as reviews.
          </p>

          <fieldset className="exam-setup">
            <legend>Questions</legend>
            <div className="chips">
              {COUNTS.map((n) => (
                <button key={n} className={n === count ? "chip on" : "chip"} onClick={() => setCount(n)}>{n}</button>
              ))}
            </div>
          </fieldset>
        </>
      )}
      <fieldset className="exam-setup">
        <legend>Time</legend>
        <div className="chips">
          {PACES.map((p) => (
            <button key={p.minutes} className={p.minutes === minutes ? "chip on" : "chip"} onClick={() => setMinutes(p.minutes)}>
              {p.label}
            </button>
          ))}
        </div>
      </fieldset>
      {!paper && (
        <label className="exam-check">
          <input type="checkbox" checked={examOnly} onChange={(e) => setExamOnly(e.target.checked)} />
          Past exam questions only
        </label>
      )}

      {error && <p className="error">{error}</p>}
      <div className="actions start">
        <button
          disabled={starting}
          onClick={async () => {
            setStarting(true);
            await onStart(count, minutes, examOnly);
            setStarting(false);
          }}
        >
          {starting ? "Loading…" : "Start exam"}
        </button>
      </div>
    </main>
  );
}

const titleOf = (exam: Running) => (exam.retry ? "Mistakes" : "") + (exam.paper ? `${exam.retry ? " · " : ""}${exam.paper}` : exam.retry ? "" : "Mock exam");

// ---- Sitting -----------------------------------------------------------------------------------

function Sitting({ module, exam, onChange, onSubmit }: {
  module: Module;
  exam: Running;
  onChange: (exam: Running) => void;
  onSubmit: (exam: Running) => void;
}) {
  const [now, setNow] = useState(Date.now);
  const [confirming, setConfirming] = useState(false);
  const question = exam.questions[exam.index];
  const picked = exam.answers[exam.index];
  const unanswered = exam.answers.filter((a) => a.length === 0).length;
  const remaining = exam.deadline === null ? null : exam.deadline - now;

  useEffect(() => {
    const id = setInterval(() => setNow(Date.now()), 1000);
    return () => clearInterval(id);
  }, []);

  // On phones the palette is one scrolling row; keep the current question in view.
  useEffect(() => {
    document.querySelector(".palette .current")?.scrollIntoView({ block: "nearest", inline: "center" });
  }, [exam.index]);

  // Time's up: hand it in as it stands.
  useEffect(() => {
    if (remaining !== null && remaining <= 0) onSubmit(exam);
  }, [remaining, exam, onSubmit]);

  const go = (index: number) => {
    setConfirming(false);
    const next = Math.max(0, Math.min(exam.questions.length - 1, index));
    if (next === exam.index) return;
    window.scrollTo(0, 0);
    const now = Date.now();
    onChange({ ...exam, index: next, spent: leave(exam, now), enteredAt: now });
  };
  const toggle = (label: Label) => {
    const answers = [...exam.answers];
    answers[exam.index] = picked.includes(label) ? picked.filter((l) => l !== label) : [...picked, label];
    onChange({ ...exam, answers });
  };

  const submit = () => (unanswered > 0 ? setConfirming(true) : onSubmit(exam));

  // Keyboard: A–E toggle, →/Enter next, ← previous, Home/End first/last, Shift+Enter submit
  // (then Enter confirms, Esc keeps going).
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      if (ignoreKey(e)) return;
      const key = e.key.toUpperCase();
      if (confirming && e.key === "Enter") onSubmit(exam);
      else if (confirming && e.key === "Escape") setConfirming(false);
      else if (key.length === 1 && "ABCDE".includes(key) && question.options.some((o) => o.label === key)) toggle(key as Label);
      else if (e.key === "Enter" && e.shiftKey) submit();
      else if (e.key === "ArrowRight" || e.key === "Enter") go(exam.index + 1);
      else if (e.key === "ArrowLeft") go(exam.index - 1);
      else if (e.key === "Home") go(0);
      else if (e.key === "End") go(exam.questions.length - 1);
      else return;
      e.preventDefault(); // don't also press the focused button
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  });

  const last = exam.index === exam.questions.length - 1;

  return (
    <main className="study">
      <header className="study-header">
        <span className="meta">{titleOf(exam)} · {module.name} · <b>{exam.index + 1}/{exam.questions.length}</b></span>
        <span className={remaining !== null && remaining < 60_000 ? "timer low" : "timer"}>
          <Icon name="timer" size={16} /> {remaining === null ? clock(now - exam.startedAt) : clock(remaining)}
        </span>
      </header>

      <nav className="palette" aria-label="Questions">
        {exam.questions.map((q, i) => (
          <button
            key={q.id}
            className={[exam.answers[i].length ? "answered" : "", i === exam.index ? "current" : ""].join(" ")}
            onClick={() => go(i)}
          >
            {i + 1}
          </button>
        ))}
      </nav>

      <article className="question">
        <p className="stem">{question.stem}</p>
        {question.image && <img className="figure" src={`/images/${question.image}`} alt="Figure for this question" />}
        <ul className="options">
          {question.options.map((o) => (
            <li key={o.label}>
              <button className={`option ${picked.includes(o.label) ? "selected" : ""}`} onClick={() => toggle(o.label)} aria-pressed={picked.includes(o.label)}>
                <span className="label">{o.label}</span>
                <span className="text">{o.text}</span>
              </button>
            </li>
          ))}
        </ul>
        <div className="exam-nav">
          <button className="secondary" onClick={() => go(exam.index - 1)} disabled={exam.index === 0} aria-label="Previous"><Icon name="back" /> <span className="hide-sm">Previous</span></button>
          {!last && <button className="secondary" onClick={() => go(exam.index + 1)}>Next <Icon name="next" /></button>}
          {confirming ? (
            <>
              <span className="meta">{unanswered} unanswered — submit anyway?</span>
              <button className="primary" onClick={() => onSubmit(exam)}>Submit <Kbd>↵</Kbd></button>
              <button className="secondary" onClick={() => setConfirming(false)}>Keep going <Kbd>Esc</Kbd></button>
            </>
          ) : (
            <button
              className={last ? "primary" : "secondary"}
              onClick={submit}
            >
              Submit exam <Kbd>⇧↵</Kbd>
            </button>
          )}
        </div>
      </article>
      <p className="hint key-help meta">
        <kbd>A</kbd>–<kbd>E</kbd> pick · <kbd>←</kbd> <kbd>→</kbd> previous / next · <kbd>Home</kbd> <kbd>End</kbd> first /
        last · <kbd>⇧</kbd>+<kbd>↵</kbd> submit
      </p>
    </main>
  );
}

// ---- Results -----------------------------------------------------------------------------------

function Results({ module, exam, onRetry, onRedo, onExit }: {
  module: Module;
  exam: Finished;
  onRetry: () => void;
  onRedo: (questions: StudyQuestion[]) => void;
  onExit: () => void;
}) {
  const [mistakesOnly, setMistakesOnly] = useState(true);
  const attempts = useAttempts(module.id);
  const [lessonTitles, setLessonTitles] = useState<Map<number, string>>(new Map());
  useEffect(() => {
    getJSON<Lesson[]>(`/api/modules/${module.id}/lessons`)
      .then((ls) => setLessonTitles(new Map(ls.map((l) => [l.id, l.title]))))
      .catch(() => {});
  }, [module.id]);

  const rows = exam.questions.map((q, i) => ({
    q,
    n: i + 1,
    picked: exam.answers[i],
    right: isRight(q, exam.answers[i]),
    pts: points(q.options, exam.answers[i], exam.scoring),
    ms: exam.spent[i] ?? 0,
  }));
  const correct = rows.filter((r) => r.right).length;
  const blank = rows.filter((r) => r.picked.length === 0).length;
  const wrong = rows.filter((r) => !r.right && r.picked.length > 0);
  const extra = wrong.filter((r) => r.picked.some((l) => !answerOf(r.q).includes(l))).length;
  const missed = wrong.filter((r) => [...answerOf(r.q)].some((l) => !r.picked.includes(l as Label))).length;
  const mistakes = rows.filter((r) => !r.right);
  const shown = mistakesOnly ? mistakes : rows;
  const passed = exam.score >= PASS;

  // Earlier tries at the same paper, for "9 → 12.5 → now 16".
  const earlier = exam.paper && !exam.retry && attempts
    ? attempts.filter((a) => a.paper === exam.paper && a.started_at !== exam.startedAt && a.submitted_at < exam.submittedAt)
    : [];
  const previous = earlier.at(-1);

  // Score per lesson, weakest first. A question in several lessons counts in each.
  const byLesson = new Map<number | null, { pts: number; total: number }>();
  for (const r of rows) {
    const ids = r.q.lesson_ids?.length ? r.q.lesson_ids : [null];
    for (const id of ids) {
      const s = byLesson.get(id) ?? { pts: 0, total: 0 };
      s.pts += r.pts;
      s.total++;
      byLesson.set(id, s);
    }
  }
  const lessonRows = [...byLesson]
    .map(([id, s]) => ({ id, title: id === null ? "Not in a lesson yet" : lessonTitles.get(id) ?? "Lesson", ...s }))
    .sort((a, b) => (a.id === null ? 1 : 0) - (b.id === null ? 1 : 0) || a.pts / a.total - b.pts / b.total);

  // Where the time went.
  const timed = rows.filter((r) => r.ms > 0);
  const usedMs = exam.submittedAt - exam.startedAt;
  const avgMs = timed.length ? timed.reduce((t, r) => t + r.ms, 0) / timed.length : 0;
  const paceMs = exam.pace * 60_000;
  const slowest = [...timed].sort((a, b) => b.ms - a.ms).slice(0, 3).filter((r) => r.ms > Math.max(avgMs * 1.5, 30_000));

  return (
    <main>
      <ScreenHeader backLabel={module.name} onBack={onExit}>
        <span className="meta">{exam.paper ? `${exam.paper} results` : "Mock exam results"}</span>
      </ScreenHeader>
      <div className="done">
        {exam.paper && <p className="meta">{exam.retry ? `Mistakes from ${exam.paper}` : `${exam.paper} · ${module.name}`}</p>}
        <p className="score">{formatScore(exam.score)}/20</p>
        <p className={passed ? "verdict ok" : "verdict bad"}>
          {passed ? "Pass" : `Below 10 · ${formatScore(PASS - exam.score)} point${PASS - exam.score === 1 ? "" : "s"} short`}
          {previous && (
            <span className="meta">
              {" "}· {exam.score >= previous.score ? "+" : "−"}{formatScore(Math.abs(exam.score - previous.score))} since last time
            </span>
          )}
        </p>
        <dl className="stat-row">
          <div><dt>Right</dt><dd>{correct}/{rows.length}</dd></div>
          <div><dt>Wrong</dt><dd>{wrong.length}</dd></div>
          <div><dt>Blank</dt><dd>{blank}</dd></div>
          <div><dt>Time</dt><dd>{clock(usedMs)}</dd></div>
        </dl>
        <p className="meta">
          {exam.scoring === "partial" ? "Partial credit" : "All-or-nothing"} scoring
          {exam.retry && " · a redo of your mistakes, not counted in your history"}
        </p>
        {wrong.length > 0 && (
          <p className="meta">
            Of your wrong answers, {extra} included a false option and {missed} left out a true one.
          </p>
        )}
        {exam.paper && !exam.retry && earlier.length > 0 && <History attempts={earlier} />}
        <div className="actions">
          {mistakes.length > 0 && (
            <button onClick={() => onRedo(mistakes.map((r) => r.q))}>
              Redo my {mistakes.length} mistake{mistakes.length === 1 ? "" : "s"}
            </button>
          )}
          <button className={mistakes.length > 0 ? "secondary" : undefined} onClick={onRetry}>
            {exam.paper ? "Sit this paper again" : "New exam"}
          </button>
          <button className="secondary" onClick={onExit}>Back to {module.name}</button>
        </div>
      </div>

      {lessonRows.length > 1 || lessonRows[0]?.id !== null ? (
        <section className="card exam-breakdown">
          <h2 className="card-title">By lesson</h2>
          <ul>
            {lessonRows.map((l) => {
              const share = l.pts / l.total;
              return (
                <li key={l.id ?? "none"}>
                  <span className="name">{l.title}</span>
                  <span className="bar" aria-hidden="true">
                    <span className={share >= 0.5 ? "fill ok" : "fill bad"} style={{ width: `${share * 100}%` }} />
                  </span>
                  <span className="meta">{formatScore(l.pts)}/{l.total}</span>
                </li>
              );
            })}
          </ul>
        </section>
      ) : null}

      {timed.length > 0 && (
        <section className="card exam-breakdown">
          <h2 className="card-title">Time</h2>
          <p className="meta">
            {clock(avgMs)} per question on average{paceMs > 0 && <> (you had {clock(paceMs)})</>}
            {paceMs > 0 && rows.some((r) => r.ms > paceMs) && <> · {rows.filter((r) => r.ms > paceMs).length} over that</>}.
          </p>
          {slowest.length > 0 && (
            <p className="meta">
              Slowest:{" "}
              {slowest.map((r, i) => (
                <span key={r.q.id}>
                  {i > 0 && ", "}
                  <a href={`#exam-q${r.n}`} onClick={() => setMistakesOnly(false)}>Q{r.n}</a> {clock(r.ms)}
                  {r.right ? "" : " (wrong)"}
                </span>
              ))}
            </p>
          )}
        </section>
      )}

      <div className="review-head">
        <h2>Review</h2>
        <label className="exam-check">
          <input type="checkbox" checked={mistakesOnly} onChange={(e) => setMistakesOnly(e.target.checked)} />
          Mistakes only
        </label>
      </div>
      {shown.length === 0 && <p className="meta">No mistakes — every answer right.</p>}
      <div className="review-list">
        {shown.map(({ q, n, picked, right, pts, ms }) => (
          <article className="question" key={q.id} id={`exam-q${n}`}>
            <div className="question-meta">
              <span className="meta">
                Q{n}{q.source && !exam.paper && ` · ${q.source}`}{ms > 0 && ` · ${clock(ms)}`}
              </span>
              <span className={right ? "verdict ok" : "verdict bad"}>
                {right
                  ? "Correct"
                  : picked.length
                    ? `${pts > 0 ? `${formatScore(pts)} pt` : "Wrong"} — answer ${answerOf(q).split("").join(", ")}`
                    : "Blank"}
              </span>
            </div>
            <p className="stem">{q.stem}</p>
            {q.image && <img className="figure" src={`/images/${q.image}`} alt="Figure for this question" />}
            <ul className="options">
              {q.options.map((o) => {
                const sel = picked.includes(o.label);
                const state = o.is_correct ? (sel ? "correct" : "missed") : sel ? "wrong" : "";
                return (
                  <li key={o.label}>
                    <div className={`option ${state}`}>
                      <span className="label">{o.label}</span>
                      <span className="text">{o.text}</span>
                      <OptionMark state={state} />
                    </div>
                  </li>
                );
              })}
            </ul>
            {q.explanation && <p className="explanation">{q.explanation}</p>}
            {q.mental && <MentalTip text={q.mental} />}
          </article>
        ))}
      </div>
    </main>
  );
}
