import { useCallback, useEffect, useRef, useState } from "react";
import { Rating } from "ts-fsrs";
import type { Label, Module, ReviewInput, StudyQuestion } from "../shared/types";
import { getJSON, saveReviews } from "./api";
import { scheduler, toCard, toRow } from "./fsrs";

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
};
type Finished = Running & { submittedAt: number };

// An unfinished exam survives a reload or the app being closed.
const storageKey = (moduleId: number) => `exam.${moduleId}`;
function loadSaved(moduleId: number): Running | null {
  try {
    const saved = localStorage.getItem(storageKey(moduleId));
    return saved ? (JSON.parse(saved) as Running) : null;
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

type Props = { module: Module; onExit: () => void };

export default function Exam({ module, onExit }: Props) {
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

  const start = async (count: number, minutes: number, examOnly: boolean) => {
    setError(null);
    try {
      const questions = await getJSON<StudyQuestion[]>(
        `/api/modules/${module.id}/exam?n=${count}${examOnly ? "&origin=exam" : ""}`,
      );
      if (questions.length === 0) throw new Error("No questions match these settings");
      const now = Date.now();
      update({
        questions,
        answers: questions.map(() => []),
        index: 0,
        startedAt: now,
        deadline: minutes ? now + questions.length * minutes * 60_000 : null,
      });
    } catch (e) {
      setError((e as Error).message);
    }
  };

  // Grade, and feed answered questions into the spaced-repetition schedule: right = Good, wrong = Again.
  // Unanswered ones are left alone — running out of time says little about what you know.
  const submit = useCallback(
    (running: Running) => {
      if (submitted.current === running.startedAt) return;
      submitted.current = running.startedAt;
      const now = new Date();
      const reviews: ReviewInput[] = running.questions.flatMap((q, i) => {
        const picked = running.answers[i];
        if (picked.length === 0) return [];
        const correct = isRight(q, picked);
        const rating = correct ? Rating.Good : Rating.Again;
        return [{
          question_id: q.id,
          rating,
          correct,
          selected: [...picked].sort().join(""),
          card: toRow(scheduler.repeat(toCard(q.card), now)[rating].card),
          reviewed_at: now.getTime(),
        }];
      });
      void saveReviews(reviews);
      update(null);
      setFinished({ ...running, submittedAt: now.getTime() });
    },
    [update],
  );

  if (finished) {
    return <Results module={module} exam={finished} onRetry={() => setFinished(null)} onExit={onExit} />;
  }
  if (exam) return <Sitting module={module} exam={exam} onChange={update} onSubmit={submit} />;
  return <Setup module={module} error={error} onStart={start} onExit={onExit} />;
}

// ---- Setup -------------------------------------------------------------------------------------

function Setup({ module, error, onStart, onExit }: {
  module: Module;
  error: string | null;
  onStart: (count: number, minutes: number, examOnly: boolean) => Promise<void>;
  onExit: () => void;
}) {
  const [count, setCount] = useState(20);
  const [minutes, setMinutes] = useState(1);
  const [examOnly, setExamOnly] = useState(true);
  const [starting, setStarting] = useState(false);

  return (
    <main>
      <header className="study-header">
        <button className="link" onClick={onExit}>← {module.name}</button>
        <span className="meta">Mock exam</span>
      </header>
      <h1>Mock exam · {module.name}</h1>
      <p className="meta">
        Random questions, answers hidden until you submit. All-or-nothing scoring, graded out of 20.
        Your answers count as reviews.
      </p>

      <fieldset className="exam-setup">
        <legend>Questions</legend>
        <div className="chips">
          {COUNTS.map((n) => (
            <button key={n} className={n === count ? "chip on" : "chip"} onClick={() => setCount(n)}>{n}</button>
          ))}
        </div>
      </fieldset>
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
      <label className="exam-check">
        <input type="checkbox" checked={examOnly} onChange={(e) => setExamOnly(e.target.checked)} />
        Past exam questions only
      </label>

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

  // Time's up: hand it in as it stands.
  useEffect(() => {
    if (remaining !== null && remaining <= 0) onSubmit(exam);
  }, [remaining, exam, onSubmit]);

  const go = (index: number) => {
    setConfirming(false);
    onChange({ ...exam, index: Math.max(0, Math.min(exam.questions.length - 1, index)) });
  };
  const toggle = (label: Label) => {
    const answers = [...exam.answers];
    answers[exam.index] = picked.includes(label) ? picked.filter((l) => l !== label) : [...picked, label];
    onChange({ ...exam, answers });
  };

  // Keyboard: A–E toggle, ←/→ move between questions.
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      if (e.metaKey || e.ctrlKey || e.altKey) return;
      const key = e.key.toUpperCase();
      if (key.length === 1 && "ABCDE".includes(key) && question.options.some((o) => o.label === key)) toggle(key as Label);
      else if (e.key === "ArrowRight" || e.key === "Enter") go(exam.index + 1);
      else if (e.key === "ArrowLeft") go(exam.index - 1);
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  });

  const last = exam.index === exam.questions.length - 1;

  return (
    <main>
      <header className="study-header">
        <span className="meta">Mock exam · {module.name} · {exam.index + 1}/{exam.questions.length}</span>
        <span className={remaining !== null && remaining < 60_000 ? "timer low" : "timer"}>
          {remaining === null ? `⏱ ${clock(now - exam.startedAt)}` : `⏳ ${clock(remaining)}`}
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
              <button className={`option ${picked.includes(o.label) ? "selected" : ""}`} onClick={() => toggle(o.label)}>
                <span className="label">{o.label}</span>
                <span>{o.text}</span>
              </button>
            </li>
          ))}
        </ul>
        <div className="exam-nav">
          <button className="secondary" onClick={() => go(exam.index - 1)} disabled={exam.index === 0}>← Previous</button>
          {!last && <button className="secondary" onClick={() => go(exam.index + 1)}>Next →</button>}
          {confirming ? (
            <>
              <span className="meta">{unanswered} unanswered — submit anyway?</span>
              <button className="primary" onClick={() => onSubmit(exam)}>Submit</button>
              <button className="secondary" onClick={() => setConfirming(false)}>Keep going</button>
            </>
          ) : (
            <button
              className={last ? "primary" : "secondary"}
              onClick={() => (unanswered > 0 ? setConfirming(true) : onSubmit(exam))}
            >
              Submit exam
            </button>
          )}
        </div>
      </article>
    </main>
  );
}

// ---- Results -----------------------------------------------------------------------------------

function Results({ module, exam, onRetry, onExit }: {
  module: Module;
  exam: Finished;
  onRetry: () => void;
  onExit: () => void;
}) {
  const [mistakesOnly, setMistakesOnly] = useState(true);
  const rows = exam.questions.map((q, i) => ({ q, picked: exam.answers[i], right: isRight(q, exam.answers[i]) }));
  const correct = rows.filter((r) => r.right).length;
  const blank = rows.filter((r) => r.picked.length === 0).length;
  const wrong = rows.filter((r) => !r.right && r.picked.length > 0);
  const extra = wrong.filter((r) => r.picked.some((l) => !answerOf(r.q).includes(l))).length;
  const missed = wrong.filter((r) => [...answerOf(r.q)].some((l) => !r.picked.includes(l as Label))).length;
  const shown = mistakesOnly ? rows.filter((r) => !r.right) : rows;

  return (
    <main>
      <header className="study-header">
        <button className="link" onClick={onExit}>← {module.name}</button>
        <span className="meta">Mock exam results</span>
      </header>
      <div className="done">
        <p className="score">{(correct / rows.length * 20).toFixed(2)}/20</p>
        <p>
          {correct}/{rows.length} correct · {wrong.length} wrong · {blank} blank · {clock(exam.submittedAt - exam.startedAt)} used
        </p>
        {wrong.length > 0 && (
          <p className="meta">
            Of your wrong answers, {extra} included a false option and {missed} left out a true one.
          </p>
        )}
        <div className="actions">
          <button onClick={onRetry}>New exam</button>
          <button className="secondary" onClick={onExit}>Back to {module.name}</button>
        </div>
      </div>

      <div className="review-head">
        <h2>Review</h2>
        <label className="exam-check">
          <input type="checkbox" checked={mistakesOnly} onChange={(e) => setMistakesOnly(e.target.checked)} />
          Mistakes only
        </label>
      </div>
      {shown.length === 0 && <p className="meta">No mistakes. 🎉</p>}
      <div className="review-list">
        {shown.map(({ q, picked, right }) => (
          <article className="question" key={q.id}>
            <div className="question-meta">
              <span className="meta">Q{exam.questions.indexOf(q) + 1}{q.source && ` · ${q.source}`}</span>
              <span className={right ? "verdict ok" : "verdict bad"}>
                {right ? "Correct" : picked.length ? `Wrong — answer ${answerOf(q).split("").join(", ")}` : "Blank"}
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
                      <span>{o.text}</span>
                    </div>
                  </li>
                );
              })}
            </ul>
            {q.explanation && <p className="explanation">{q.explanation}</p>}
          </article>
        ))}
      </div>
    </main>
  );
}
