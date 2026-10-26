import { useEffect, useState } from "react";
import type { Insights as Data, Module } from "../shared/types";
import { getJSON } from "./api";
import type { StudyTarget } from "./Decks";
import { Icon } from "./icons";
import { accuracyTone, Skeleton } from "./ui";

const MIN_LESSON_REVIEWS = 5; // below this, a lesson's accuracy is mostly noise

const pct = (correct: number, total: number) => (total ? Math.round((correct / total) * 100) : 0);

type Props = {
  modules: Module[];
  onStudy: (target: StudyTarget) => void;
};

export default function Insights({ modules, onStudy }: Props) {
  const [data, setData] = useState<Data | null>(null);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    getJSON<Data>("/api/insights")
      .then(setData)
      .catch((e: Error) => setError(e.message));
  }, []);

  const title = <h1 className="tab-title">Insights</h1>;
  if (error) return <>{title}<p className="error">{error}</p></>;
  if (!data) return <>{title}<Skeleton kind="cards" /></>;

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

  const totalReviews = moduleRows.reduce((n, r) => n + r.reviews, 0);

  return (
    <>
      {title}
      {totalReviews === 0 && (
        <div className="card empty-state">
          <Icon name="insights" size={28} />
          <p><b>Nothing to analyse yet</b></p>
          <p className="meta">Answer a few questions and your accuracy, weak lessons and mistake patterns show up here.</p>
        </div>
      )}

      <ErrorPattern errors={data.errors} />

      <h2 className="section-title">Modules</h2>
      <ul className="insight-cards">
        {moduleRows.map(({ m, reviews, accuracy, seen }) => (
          <li key={m.id}>
            <button
              className="card insight-card"
              onClick={() => onStudy({ title: moduleName.get(m.id)!, endpoint: `/api/modules/${m.id}/study` })}
            >
              <span className="insight-head">
                <span className="name">{m.name}<small className="meta"> · S{m.semester}</small></span>
                <span className={reviews ? `acc-big ${accuracyTone(accuracy)}` : "acc-big none"}>
                  {reviews ? `${accuracy}%` : "—"}
                </span>
              </span>
              <span className="bar" title={`${seen} of ${m.question_count} questions seen`}>
                <span style={{ width: `${pct(seen, m.question_count)}%` }} />
              </span>
              <span className="meta">
                {seen}/{m.question_count} seen · {reviews} review{reviews === 1 ? "" : "s"}
              </span>
            </button>
          </li>
        ))}
      </ul>

      <h2 className="section-title">Weakest lessons</h2>
      {weakLessons.length === 0 ? (
        <p className="meta empty-line"><Icon name="target" size={16} /> Shows up once a lesson has {MIN_LESSON_REVIEWS}+ reviews.</p>
      ) : (
        <ul className="modules">
          {weakLessons.map((l) => (
            <li key={l.id}>
              <button className="module" onClick={() => onStudy({ title: l.title, endpoint: `/api/lessons/${l.id}/study?all=1` })}>
                <span className="name">{l.title}</span>
                <span className="meta">
                  {moduleName.get(l.module_id)} · {l.reviews} reviews · <b className={`acc ${accuracyTone(l.accuracy)}`}>{l.accuracy}%</b>
                </span>
              </button>
            </li>
          ))}
        </ul>
      )}

      <Calibration rows={data.calibration ?? []} />

      <div className="section-head">
        <h2 className="section-title">Leeches · {data.leeches.length}</h2>
        {data.leeches.length > 0 && (
          <button className="pill" onClick={() => onStudy({ title: "Leeches", endpoint: "/api/leeches/study?all=1" })}>
            <Icon name="play" size={14} /> Study leeches
          </button>
        )}
      </div>
      {data.leeches.length === 0 ? (
        <p className="meta empty-line"><Icon name="check" size={16} /> None — no question forgotten 4+ times.</p>
      ) : (
        <>
          <p className="meta">
            Forgotten 4+ times. Repeating them won't fix them: open the lesson, work out why the answer is what it is,
            then come back.
          </p>
          <ul className="leeches">
            {data.leeches.map((l) => (
              <li key={l.id}>
                <span className="leech-stem">{l.stem.length > 160 ? `${l.stem.slice(0, 160)}…` : l.stem}</span>
                <span className="meta">{moduleName.get(l.module_id)} · forgotten {l.lapses}× in {l.reps} reviews</span>
              </li>
            ))}
          </ul>
        </>
      )}
    </>
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
    <section className="card error-pattern">
      <h2 className="card-title">How your wrong answers go wrong · {errors.total}</h2>
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

const MIN_CALIBRATION_REVIEWS = 30; // fewer reviews in total and the comparison is noise

// How well the scheduler's predictions match what happened: of the reviews it gave a 70–79% chance,
// were about 75% right? Well under means it schedules too far out for you; well over, too soon.
function Calibration({ rows }: { rows: Data["calibration"] }) {
  const total = rows.reduce((n, r) => n + r.reviews, 0);
  if (total < MIN_CALIBRATION_REVIEWS) return null;
  const predicted = rows.reduce((n, r) => n + (r.bucket + 0.5) * 10 * r.reviews, 0) / total;
  const actual = pct(rows.reduce((n, r) => n + r.correct, 0), total);
  const gap = actual - predicted;
  const verdict =
    gap < -8
      ? "You remember less than predicted: questions come back too late for you. Raise the target recall in Settings."
      : gap > 8
        ? "You remember more than predicted: you could lower the target recall in Settings and review less."
        : "Predictions match how you actually do.";

  return (
    <section>
      <h2 className="section-title">Scheduler predictions · {total} reviews</h2>
      <table className="insights-table">
        <thead>
          <tr><th>Predicted recall</th><th className="num">Reviews</th><th className="num">Actually right</th></tr>
        </thead>
        <tbody>
          {rows.map((r) => (
            <tr key={r.bucket}>
              <td>{r.bucket * 10}–{r.bucket * 10 + 9}%</td>
              <td className="num">{r.reviews}</td>
              <td className="num">{pct(r.correct, r.reviews)}%</td>
            </tr>
          ))}
        </tbody>
      </table>
      <p className="meta">{verdict}</p>
    </section>
  );
}
