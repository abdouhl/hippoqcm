import { useCallback, useEffect, useMemo, useRef, useState } from "react";
import { Rating, State, type Grade } from "ts-fsrs";
import type { Label, ReviewInput, StudyQuestion } from "../shared/types";
import { flagQuestion, getJSON, LEECH_LAPSES, saveReviews } from "./api";
import { formatInterval, reviewFacts, schedule, toRow } from "./fsrs";
import { ignoreKey, Kbd } from "./keys";
import { useHasSummary } from "./Lessons";
import { buildQueue, displayOptions, hasExam, recordDone } from "./queue";
import { getSettings } from "./prefs";

const GRADES: { rating: Grade; label: string }[] = [
  { rating: Rating.Hard, label: "Hard" },
  { rating: Rating.Good, label: "Good" },
  { rating: Rating.Easy, label: "Easy" },
];

// A learning step due within this long comes back in the same session.
const RELEARN_WITHIN_MS = 60 * 60_000;

// Grade a right answer by how long it took, allowing for reading time (~20 characters a second):
// quick = Easy, slow = Hard, anything between = Good.
function suggestedGrade(q: StudyQuestion, ms: number): Grade {
  const chars = q.stem.length + q.options.reduce((n, o) => n + o.text.length, 0);
  const reading = chars * 50;
  if (ms < reading * 0.6 + 4000) return Rating.Easy;
  if (ms > reading * 1.5 + 25_000) return Rating.Hard;
  return Rating.Good;
}

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
  const [cramming, setCramming] = useState(false);
  const [examAhead, setExamAhead] = useState(false); // a module in this deck has an exam date set
  const [guessed, setGuessed] = useState(false); // checked with "Not sure"
  const [duration, setDuration] = useState(0); // ms from showing the question to checking it
  const shownAt = useRef(Date.now());
  const startedAt = useRef(Date.now());
  const answered = useRef(new Set<number>()); // questions already answered once this session
  const [held, setHeld] = useState({ fresh: 0, reviews: 0 }); // left out by the daily caps
  const [extra, setExtra] = useState({ fresh: 0, reviews: 0 }); // allowance added with the "more" buttons

  const load = useCallback(
    (all: boolean, more = { fresh: 0, reviews: 0 }, cram = false) => {
      setQueue(null);
      setError(null);
      setIndex(0);
      setSelected(new Set());
      setChecked(false);
      setStats({ correct: 0, total: 0 });
      setPracticeAll(all);
      setCramming(cram);
      setExtra(more);
      answered.current = new Set();
      const sep = endpoint.includes("?") ? "&" : "?";
      // Cramming looks past due dates, so it needs every question.
      getJSON<StudyQuestion[]>(all || cram ? `${endpoint}${sep}all=1` : endpoint)
        .then((questions) => {
          const built = buildQueue(questions, { all, cram, extraNew: more.fresh, extraReviews: more.reviews });
          setHeld({ fresh: built.heldNew, reviews: built.heldReviews });
          setExamAhead(hasExam(questions));
          startedAt.current = Date.now();
          setQueue(built.queue);
        })
        .catch((e: Error) => setError(e.message));
    },
    [endpoint],
  );

  useEffect(() => load(false), [load]);

  const question = queue?.[index];
  useEffect(() => {
    shownAt.current = Date.now();
  }, [question]);
  const hasSummary = useHasSummary(question?.pdf ?? undefined);
  const correctSet = useMemo(
    () => new Set(question?.options.filter((o) => o.is_correct).map((o) => o.label)),
    [question],
  );
  // Shuffled once per question; `selected` keeps the original labels, letters are display only.
  const options = useMemo(() => (question ? displayOptions(question.options) : []), [question]);
  const isCorrect =
    checked && selected.size === correctSet.size && [...selected].every((l) => correctSet.has(l));

  // Preview of next due dates for each rating, computed when the answer is revealed.
  const preview = useMemo(() => {
    if (!checked || !question) return null;
    const now = new Date();
    return { now, record: schedule(question, now) };
  }, [checked, question]);

  // A right answer under "Not sure" may have been luck: it counts as Hard. Otherwise, the time taken suggests a grade.
  const suggested: Grade | null =
    !checked || !question || !isCorrect ? null : guessed ? Rating.Hard : getSettings().autoGrade ? suggestedGrade(question, duration) : Rating.Good;
  // Forgotten again and again: repeating it won't help, the lesson will.
  const leech = checked && !isCorrect && preview && preview.record[Rating.Again].card.lapses >= LEECH_LAPSES;

  const check = (unsure: boolean) => {
    if (checked || selected.size === 0) return;
    setGuessed(unsure);
    setDuration(Date.now() - shownAt.current);
    setChecked(true);
  };

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
      ...reviewFacts(question, preview.now),
      duration_ms: duration,
      guessed,
    };
    const first = !answered.current.has(question.id);
    setSaving(true);
    try {
      await saveReviews([body]); // saved locally, synced in the background
      if (first) recordDone(question.module_id, !question.card);
    } catch (e) {
      setError(`Couldn't save review: ${(e as Error).message}`);
      setSaving(false);
      return;
    }
    answered.current.add(question.id);
    setSaving(false);
    // Only first tries count toward the score; a question coming back is practice.
    if (first) setStats((s) => ({ correct: s.correct + (isCorrect ? 1 : 0), total: s.total + 1 }));
    // A learning step (Again, or a new question's first passes) is minutes away: bring the question back
    // later in this session, about as many questions on as fit in that time at the pace so far.
    const wait = card.due.getTime() - preview.now.getTime();
    if ((card.state === State.Learning || card.state === State.Relearning) && wait < RELEARN_WITHIN_MS) {
      const pace = Math.max(15_000, (Date.now() - startedAt.current) / Math.max(1, answered.current.size));
      const gap = Math.max(2, Math.round(wait / pace));
      setQueue((q) => {
        const next = [...q!];
        next.splice(Math.min(next.length, index + 1 + gap), 0, { ...question, card: toRow(card) });
        return next;
      });
    }
    setSelected(new Set());
    setChecked(false);
    setGuessed(false);
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
    // Drop the copies brought back for relearning too.
    setQueue((q) => q!.filter((x, i) => i <= index || x.id !== question.id));
    setSelected(new Set());
    setChecked(false);
    setGuessed(false);
    setIndex((i) => i + 1);
    window.scrollTo(0, 0);
  };

  // Keyboard: A–E toggle, Enter or Space checks / continues with the suggested grade, ? checks as
  // "Not sure", 1 marks as forgotten, 2–4 rate when correct, Esc leaves.
  useEffect(() => {
    const onKey = (e: KeyboardEvent) => {
      if (ignoreKey(e)) return;
      const key = e.key.toUpperCase();
      const option = options.find((o) => o.shown === key);
      if (e.key === "Escape") onExit();
      else if (!checked && option) toggle(option.label);
      else if (e.key === "Enter" || e.key === " ") {
        if (!checked) check(e.shiftKey);
        else rate(suggested ?? Rating.Again);
      } else if (!checked && e.key === "?") check(true);
      else if (checked && e.key === "1") rate(Rating.Again);
      else if (checked && isCorrect && !guessed && ["2", "3", "4"].includes(e.key)) rate(Number(e.key) as Grade);
      else return;
      // Handled: stop Enter/Space from also pressing the focused button, and Space from scrolling.
      e.preventDefault();
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
            <h2>{practiceAll ? "No questions here yet" : cramming ? "Ready for the exam" : "Nothing due right now"}</h2>
          )}
          {held.fresh + held.reviews > 0 && (
            <p className="meta">
              Daily limit reached ·{" "}
              {[
                held.reviews > 0 && `${held.reviews} review${held.reviews === 1 ? "" : "s"}`,
                held.fresh > 0 && `${held.fresh} new question${held.fresh === 1 ? "" : "s"}`,
              ].filter(Boolean).join(" and ")}{" "}
              waiting
            </p>
          )}
          <div className="actions">
            {held.reviews > 0 && (
              <button onClick={() => load(false, { ...extra, reviews: extra.reviews + getSettings().reviewsPerDay })}>
                Do more reviews
              </button>
            )}
            {held.fresh > 0 && (
              <button onClick={() => load(false, { ...extra, fresh: extra.fresh + (getSettings().newPerDay || 10) })}>
                Learn more new questions
              </button>
            )}
            {examAhead && !cramming && (
              <button onClick={() => load(false, extra, true)} title="Questions you're likely to have forgotten by exam day">
                Cram for the exam
              </button>
            )}
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
          {options.map((o) => {
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
                  <span className="label">{o.shown}</span>
                  <span>{o.text}</span>
                </button>
              </li>
            );
          })}
        </ul>

        {checked && question.explanation && <p className="explanation">{question.explanation}</p>}
        {leech && preview && (
          <p className="leech-note">
            You've now forgotten this one {preview.record[Rating.Again].card.lapses} times. Going over it again won't fix
            it: work out why the answer is what it is
            {question.pdf && (
              <>
                {" in the "}
                {hasSummary && (
                  <>
                    <a href={`/summaries/${question.pdf.replace(/\.pdf$/, ".html")}`} target="_blank" rel="noreferrer">summary</a>
                    {" or the "}
                  </>
                )}
                <a href={`/lessons/${question.pdf}${question.pdf_page ? `#page=${question.pdf_page}` : ""}`} target="_blank" rel="noreferrer">
                  lesson{question.pdf_page ? ` p. ${question.pdf_page}` : ""}
                </a>
              </>
            )}
            . If the question itself looks wrong, flag it.
          </p>
        )}

        <div className="action-bar">
          {!checked ? (
            <div className="grades">
              <button className="primary" disabled={selected.size === 0} onClick={() => check(false)}>
                Check answer <Kbd>↵</Kbd>
              </button>
              <button
                className="secondary"
                disabled={selected.size === 0}
                onClick={() => check(true)}
                title="A right answer then counts as Hard, so a lucky guess comes back soon (key: ?)"
              >
                Not sure <Kbd>?</Kbd>
              </button>
            </div>
          ) : (
            <div className="feedback">
              <p className={isCorrect ? "verdict ok" : "verdict bad"}>
                {isCorrect
                  ? "Correct!"
                  : `Incorrect — answer: ${options.filter((o) => o.is_correct).map((o) => o.shown).join(", ")}`}
              </p>
              {isCorrect && preview && guessed ? (
                <button className="primary" onClick={() => rate(Rating.Hard)} disabled={saving}>
                  Next <Kbd>↵</Kbd>
                  <small> · counted as Hard, again in {formatInterval(preview.now, preview.record[Rating.Hard].card.due)}</small>
                </button>
              ) : isCorrect && preview ? (
                <div className="grades">
                  {GRADES.map((g) => (
                    <button
                      key={g.rating}
                      className={g.rating === suggested ? "suggested" : undefined}
                      onClick={() => rate(g.rating)}
                      disabled={saving}
                    >
                      <span>{g.label} <Kbd>{String(g.rating)}</Kbd></span>
                      <small>{formatInterval(preview.now, preview.record[g.rating].card.due)}</small>
                    </button>
                  ))}
                </div>
              ) : (
                <button className="primary" onClick={() => rate(Rating.Again)} disabled={saving}>
                  Next <Kbd>↵</Kbd>
                  {preview && <small> · again in {formatInterval(preview.now, preview.record[Rating.Again].card.due)}</small>}
                </button>
              )}
            </div>
          )}
        </div>
      </article>
      <p className="hint key-help meta">
        <kbd>A</kbd>–<kbd>E</kbd> pick · <kbd>↵</kbd> check / next · <kbd>?</kbd> not sure ·{" "}
        <kbd>1</kbd> forgot · <kbd>2</kbd>–<kbd>4</kbd> Hard / Good / Easy · <kbd>Esc</kbd> back
      </p>
    </main>
  );
}
