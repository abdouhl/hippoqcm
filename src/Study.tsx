import { useCallback, useEffect, useMemo, useState } from "react";
import { Rating, type Grade } from "ts-fsrs";
import type { Label, ReviewInput, StudyQuestion } from "../shared/types";
import { flagQuestion, getJSON, saveReviews } from "./api";
import { formatInterval, scheduler, toCard, toRow } from "./fsrs";

const GRADES: { rating: Grade; label: string }[] = [
  { rating: Rating.Hard, label: "Hard" },
  { rating: Rating.Good, label: "Good" },
  { rating: Rating.Easy, label: "Easy" },
];

type Props = {
  title: string;
  endpoint: string; // e.g. /api/lessons/3/study — "all=1" is appended for practice-all
  backLabel: string;
  onExit: () => void;
};

export default function Study({ title, endpoint, backLabel, onExit }: Props) {
  const [queue, setQueue] = useState<StudyQuestion[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [index, setIndex] = useState(0);
  const [selected, setSelected] = useState<Set<Label>>(new Set());
  const [checked, setChecked] = useState(false);
  const [saving, setSaving] = useState(false);
  const [stats, setStats] = useState({ correct: 0, total: 0 });
  const [practiceAll, setPracticeAll] = useState(false);

  const load = useCallback(
    (all: boolean) => {
      setQueue(null);
      setError(null);
      setIndex(0);
      setSelected(new Set());
      setChecked(false);
      setStats({ correct: 0, total: 0 });
      setPracticeAll(all);
      const sep = endpoint.includes("?") ? "&" : "?";
      getJSON<StudyQuestion[]>(all ? `${endpoint}${sep}all=1` : endpoint)
        .then(setQueue)
        .catch((e: Error) => setError(e.message));
    },
    [endpoint],
  );

  useEffect(() => load(false), [load]);

  const question = queue?.[index];
  const correctSet = useMemo(
    () => new Set(question?.options.filter((o) => o.is_correct).map((o) => o.label)),
    [question],
  );
  const isCorrect =
    checked && selected.size === correctSet.size && [...selected].every((l) => correctSet.has(l));

  // Preview of next due dates for each rating, computed when the answer is revealed.
  const preview = useMemo(() => {
    if (!checked || !question) return null;
    const now = new Date();
    return { now, record: scheduler.repeat(toCard(question.card), now) };
  }, [checked, question]);

  const toggle = (label: Label) => {
    if (checked) return;
    setSelected((s) => {
      const next = new Set(s);
      next.has(label) ? next.delete(label) : next.add(label);
      return next;
    });
  };

  const rate = async (rating: Grade) => {
    if (!question || !preview || saving) return;
    const { card } = preview.record[rating];
    const body: ReviewInput = {
      question_id: question.id,
      rating,
      correct: isCorrect,
      selected: [...selected].sort().join(""),
      card: toRow(card),
      reviewed_at: preview.now.getTime(),
    };
    setSaving(true);
    try {
      await saveReviews([body]); // saved locally, synced in the background
    } catch (e) {
      setError(`Couldn't save review: ${(e as Error).message}`);
      setSaving(false);
      return;
    }
    setSaving(false);
    setStats((s) => ({ correct: s.correct + (isCorrect ? 1 : 0), total: s.total + 1 }));
    setSelected(new Set());
    setChecked(false);
    setIndex((i) => i + 1);
    window.scrollTo(0, 0); // long questions leave phones scrolled down
  };

  // Hide a wrong/bad question from study until it's fixed, and move on without rating it.
  const flag = async () => {
    if (!question || saving) return;
    setSaving(true);
    try {
      await flagQuestion(question.id);
    } catch (e) {
      setError(`Couldn't flag question: ${(e as Error).message}`);
      setSaving(false);
      return;
    }
    setSaving(false);
    setSelected(new Set());
    setChecked(false);
    setIndex((i) => i + 1);
    window.scrollTo(0, 0);
  };

  // Keyboard: A–E toggle, Enter checks / continues, 2–4 rate when correct.
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      if (e.metaKey || e.ctrlKey || e.altKey) return;
      const key = e.key.toUpperCase();
      if (!checked && "ABCDE".includes(key) && key.length === 1) toggle(key as Label);
      else if (e.key === "Enter") {
        if (!checked && selected.size > 0) setChecked(true);
        else if (checked) rate(isCorrect ? Rating.Good : Rating.Again);
      } else if (checked && isCorrect && ["2", "3", "4"].includes(e.key)) {
        rate(Number(e.key) as Grade);
      }
    };
    window.addEventListener("keydown", onKey);
    return () => window.removeEventListener("keydown", onKey);
  });

  const header = (
    <header className="study-header">
      <button className="link" onClick={onExit}>← {backLabel}</button>
      <span className="meta">
        {title}
        {queue && queue.length > 0 && ` · ${Math.min(index + 1, queue.length)}/${queue.length}`}
      </span>
    </header>
  );

  if (error) return <main>{header}<p className="error">{error}</p></main>;
  if (!queue) return <main>{header}<p>Loading…</p></main>;

  if (!question) {
    return (
      <main>
        {header}
        <div className="done">
          {stats.total > 0 ? (
            <>
              <h2>Session complete</h2>
              <p className="score">{stats.correct}/{stats.total} correct</p>
            </>
          ) : (
            <h2>{practiceAll ? "No questions here yet" : "Nothing due right now"}</h2>
          )}
          <div className="actions">
            {!(practiceAll && stats.total === 0) && (
              <button onClick={() => load(true)}>Practice all questions</button>
            )}
            <button className="secondary" onClick={onExit}>Back to {backLabel.toLowerCase()}</button>
          </div>
        </div>
      </main>
    );
  }

  return (
    <main>
      {header}
      <article className="question">
        <div className="question-meta">
          <span className="meta">
            {question.origin === "generated" ? <span className="badge">Generated</span> : question.source}
            {question.pdf && question.pdf_page && (
              <>
                {" · "}
                <a href={`/lessons/${question.pdf}#page=${question.pdf_page}`} target="_blank" rel="noreferrer">
                  📄 p. {question.pdf_page}
                </a>
              </>
            )}
          </span>
          <button className="link flag" onClick={flag} disabled={saving} title="Hide this question until it's fixed">
            🚩 Flag
          </button>
        </div>
        <p className="stem">{question.stem}</p>
        {question.image && <img className="figure" src={`/images/${question.image}`} alt="Figure for this question" />}
        <ul className="options">
          {question.options.map((o) => {
            const isSel = selected.has(o.label);
            let state = isSel ? "selected" : "";
            if (checked) {
              if (o.is_correct && isSel) state = "correct";
              else if (o.is_correct) state = "missed";
              else if (isSel) state = "wrong";
            }
            return (
              <li key={o.label}>
                <button className={`option ${state}`} onClick={() => toggle(o.label)} disabled={checked}>
                  <span className="label">{o.label}</span>
                  <span>{o.text}</span>
                </button>
              </li>
            );
          })}
        </ul>

        {checked && question.explanation && <p className="explanation">{question.explanation}</p>}

        <div className="action-bar">
          {!checked ? (
            <button className="primary" disabled={selected.size === 0} onClick={() => setChecked(true)}>
              Check answer
            </button>
          ) : (
            <div className="feedback">
              <p className={isCorrect ? "verdict ok" : "verdict bad"}>
                {isCorrect
                  ? "Correct!"
                  : `Incorrect — answer: ${[...correctSet].sort().join(", ")}`}
              </p>
              {isCorrect && preview ? (
                <div className="grades">
                  {GRADES.map((g) => (
                    <button key={g.rating} onClick={() => rate(g.rating)} disabled={saving}>
                      {g.label}
                      <small>{formatInterval(preview.now, preview.record[g.rating].card.due)}</small>
                    </button>
                  ))}
                </div>
              ) : (
                <button className="primary" onClick={() => rate(Rating.Again)} disabled={saving}>
                  Next
                  {preview && <small> · again in {formatInterval(preview.now, preview.record[Rating.Again].card.due)}</small>}
                </button>
              )}
            </div>
          )}
        </div>
      </article>
    </main>
  );
}
