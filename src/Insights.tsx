import { useEffect, useState } from "react";
import type { Insights as Data, Module } from "../shared/types";
import { getJSON } from "./api";
import type { StudyTarget } from "./Decks";

const MIN_LESSON_REVIEWS = 5; // below this, a lesson's accuracy is mostly noise

const pct = (correct: number, total: number) => (total ? Math.round((correct / total) * 100) : 0);
const accuracyClass = (p: number) => (p < 60 ? "acc bad" : p < 80 ? "acc mid" : "acc ok");

type Props = {
  modules: Module[];
  onBack: () => void;
  onStudy: (target: StudyTarget) => void;
};

export default function Insights({ modules, onBack, onStudy }: Props) {
  const [data, setData] = useState<Data | null>(null);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    getJSON<Data>("/api/insights")
      .then(setData)
      .catch((e: Error) => setError(e.message));
  }, []);

  const header = (
    <header className="study-header">
      <button className="link" onClick={onBack}>← Decks</button>
      <span className="meta">Insights</span>
    </header>
  );

  if (error) return <main>{header}<p className="error">{error}</p></main>;
  if (!data) return <main>{header}<p>Loading…</p></main>;

  const moduleName = new Map(modules.map((m) => [m.id, `${m.name} · S${m.semester}`]));
  const stats = new Map(data.modules.map((s) => [s.module_id, s]));
  const moduleRows = modules
    .filter((m) => m.question_count > 0)
    .map((m) => {
      const s = stats.get(m.id);
      return { m, reviews: s?.reviews ?? 0, accuracy: pct(s?.correct ?? 0, s?.reviews ?? 0), seen: m.question_count - m.new_count };
    })
    // Weakest first; modules never reviewed go last.
    .sort((a, b) => (a.reviews ? 0 : 1) - (b.reviews ? 0 : 1) || a.accuracy - b.accuracy);

  const weakLessons = data.lessons
    .filter((l) => l.reviews >= MIN_LESSON_REVIEWS)
    .map((l) => ({ ...l, accuracy: pct(l.correct, l.reviews) }))
    .sort((a, b) => a.accuracy - b.accuracy)
    .slice(0, 8);

  return (
    <main>
      {header}
      <h1>Insights</h1>

      <ErrorPattern errors={data.errors} />

      <h2>Modules</h2>
      <table className="insights-table">
        <thead>
          <tr><th>Module</th><th>Seen</th><th className="num">Reviews</th><th className="num">Accuracy</th></tr>
        </thead>
        <tbody>
          {moduleRows.map(({ m, reviews, accuracy, seen }) => (
            <tr key={m.id}>
              <td>
                <button className="link deck-link" onClick={() => onStudy({ title: moduleName.get(m.id)!, endpoint: `/api/modules/${m.id}/study` })}>
                  {moduleName.get(m.id)}
                </button>
              </td>
              <td>
                <span className="progress" title={`${seen} of ${m.question_count} questions seen`}>
                  <span style={{ width: `${pct(seen, m.question_count)}%` }} />
                </span>
                <small className="meta"> {seen}/{m.question_count}</small>
              </td>
              <td className="num">{reviews}</td>
              <td className={`num ${reviews ? accuracyClass(accuracy) : "meta"}`}>{reviews ? `${accuracy}%` : "—"}</td>
            </tr>
          ))}
        </tbody>
      </table>

      <h2>Weakest lessons</h2>
      {weakLessons.length === 0 ? (
        <p className="meta">Review lesson questions at least {MIN_LESSON_REVIEWS} times to see them ranked here.</p>
      ) : (
        <ul className="modules">
          {weakLessons.map((l) => (
            <li key={l.id}>
              <button className="module" onClick={() => onStudy({ title: l.title, endpoint: `/api/lessons/${l.id}/study?all=1` })}>
                <span className="name">{l.title}</span>
                <span className="meta">
                  {moduleName.get(l.module_id)} · {l.reviews} reviews · <b className={accuracyClass(l.accuracy)}>{l.accuracy}%</b>
                </span>
              </button>
            </li>
          ))}
        </ul>
      )}

      <div className="review-head">
        <h2>Leeches · {data.leeches.length}</h2>
        {data.leeches.length > 0 && (
          <button className="primary" onClick={() => onStudy({ title: "Leeches", endpoint: "/api/leeches/study?all=1" })}>
            Study leeches
          </button>
        )}
      </div>
      <p className="meta">
        Questions you've forgotten 4 or more times. Repeating them won't fix them. Open the lesson page, work out why the
        answer is what it is, then come back.
      </p>
      <ul className="leeches">
        {data.leeches.map((l) => (
          <li key={l.id}>
            <span className="leech-stem">{l.stem.length > 160 ? `${l.stem.slice(0, 160)}…` : l.stem}</span>
            <span className="meta">{moduleName.get(l.module_id)} · forgotten {l.lapses}× in {l.reps} reviews</span>
          </li>
        ))}
      </ul>
    </main>
  );
}

function ErrorPattern({ errors }: { errors: Data["errors"] }) {
  if (errors.total === 0) return null;
  const parts = [
    { key: "extra", n: errors.extra, label: "Ticked a false option" },
    { key: "missed", n: errors.missed, label: "Left out a true option" },
    { key: "both", n: errors.both, label: "Both" },
  ];
  const share = (n: number) => pct(n, errors.total);
  const advice =
    errors.extra > errors.missed * 1.5
      ? "You usually go wrong by ticking too much. Under all-or-nothing scoring, one doubtful tick loses the whole question, so only tick options you can justify."
      : errors.missed > errors.extra * 1.5
        ? "You usually go wrong by ticking too little. Treat each option as its own true/false statement instead of looking for the single best answer."
        : "Your mistakes are split between ticking false options and leaving out true ones. Judge each option on its own.";

  return (
    <section className="error-pattern">
      <h2>How your wrong answers go wrong · {errors.total}</h2>
      <div className="stack" role="img" aria-label={parts.map((p) => `${p.label} ${share(p.n)}%`).join(", ")}>
        {parts.map((p) => p.n > 0 && <span key={p.key} className={p.key} style={{ flexGrow: p.n }} />)}
      </div>
      <ul className="stack-legend">
        {parts.map((p) => (
          <li key={p.key}><span className={`swatch ${p.key}`} /> {p.label} <b>{share(p.n)}%</b></li>
        ))}
      </ul>
      <p>{advice}</p>
    </section>
  );
}
