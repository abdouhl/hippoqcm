import { useEffect, useState } from "react";
import type { Insights as Data, Module, ReviewStats } from "../shared/types";
import { getJSON } from "./api";
import type { StudyTarget } from "./Decks";
import { Icon } from "./icons";
import { accuracyTone, PHONE, Skeleton, useMedia } from "./ui";

const MIN_LESSON_REVIEWS = 5; // below this, a lesson's accuracy is mostly noise
const MIN_TREND_REVIEWS = 10; // reviews needed on both sides of the "lately" split to show a trend
const WEEKS = 12;
const DAY_MS = 86_400_000;
const MONTHS = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

const pct = (correct: number, total: number) => (total ? Math.round((correct / total) * 100) : 0);
const plural = (n: number, word: string) => `${n} ${word}${n === 1 ? "" : "s"}`;
const seconds = (ms: number | null | undefined) => (ms ? `${Math.round(ms / 1000)} s` : "—");

// Points gained (or lost) lately against everything before; null when either side is too thin.
function trend(s: ReviewStats | undefined) {
  if (!s) return null;
  const before = s.reviews - s.recent_reviews;
  if (s.recent_reviews < MIN_TREND_REVIEWS || before < MIN_TREND_REVIEWS) return null;
  return pct(s.recent_correct, s.recent_reviews) - pct(s.correct - s.recent_correct, before);
}

function Trend({ delta, days }: { delta: number | null; days: number }) {
  if (delta === null) return null;
  const dir = delta > 2 ? "up" : delta < -2 ? "down" : "flat";
  return (
    <span className={`trend ${dir}`} title={`Last ${days} days against before`}>
      {dir === "up" ? "▲" : dir === "down" ? "▼" : "▬"} {delta > 0 ? "+" : ""}{delta} pts
    </span>
  );
}

type Props = {
  modules: Module[];
  onStudy: (target: StudyTarget) => void;
};

export default function Insights({ modules, onStudy }: Props) {
  const [data, setData] = useState<Data | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [openModule, setOpenModule] = useState<number | null>(null);

  useEffect(() => {
    getJSON<Data>(`/api/insights?tz=${new Date().getTimezoneOffset()}`)
      .then(setData)
      .catch((e: Error) => setError(e.message));
  }, []);

  const title = <h1 className="tab-title">Insights</h1>;
  if (error) return <>{title}<p className="error">{error}</p></>;
  if (!data) return <>{title}<Skeleton kind="cards" /></>;

  const days = data.recent_days ?? 14;
  const moduleName = new Map(modules.map((m) => [m.id, `${m.name} · S${m.semester}`]));
  const stats = new Map(data.modules.map((s) => [s.module_id, s]));
  const maturity = new Map((data.maturity ?? []).map((s) => [s.module_id, s]));
  const moduleRows = modules
    .filter((m) => m.question_count > 0)
    .map((m) => {
      const s = stats.get(m.id);
      const mat = maturity.get(m.id) ?? { learning: 0, young: 0, mature: 0 };
      const started = mat.learning + mat.young + mat.mature;
      return {
        m,
        s,
        reviews: s?.reviews ?? 0,
        accuracy: pct(s?.correct ?? 0, s?.reviews ?? 0),
        mat: { new: Math.max(0, m.question_count - started), ...mat },
      };
    })
    // Weakest first; modules never reviewed go last.
    .sort((a, b) => (a.reviews ? 0 : 1) - (b.reviews ? 0 : 1) || a.accuracy - b.accuracy);

  const weakLessons = data.lessons
    .filter((l) => l.reviews >= MIN_LESSON_REVIEWS)
    .map((l) => ({ ...l, accuracy: pct(l.correct, l.reviews) }))
    .sort((a, b) => a.accuracy - b.accuracy)
    .slice(0, 8);

  const total = data.modules.reduce(
    (t, s) => ({
      reviews: t.reviews + s.reviews,
      correct: t.correct + s.correct,
      recent_reviews: t.recent_reviews + s.recent_reviews,
      recent_correct: t.recent_correct + s.recent_correct,
      avg_ms: null,
    }),
    { reviews: 0, correct: 0, recent_reviews: 0, recent_correct: 0, avg_ms: null } as ReviewStats,
  );
  const breakdown = data.breakdown ?? [];
  const timed = breakdown.reduce((n, b) => n + b.timed, 0);
  const avgMs = timed ? breakdown.reduce((n, b) => n + b.total_ms, 0) / timed : null;
  const mastered = moduleRows.reduce((n, r) => n + r.mat.mature, 0);
  const questions = moduleRows.reduce((n, r) => n + r.m.question_count, 0);
  const thisWeek = data.weeks?.at(-1);
  const currentWeek = Math.floor((Math.floor((Date.now() - new Date().getTimezoneOffset() * 60_000) / DAY_MS) + 3) / 7);

  return (
    <>
      {title}
      {total.reviews === 0 ? (
        <div className="card empty-state">
          <Icon name="insights" size={28} />
          <p><b>Nothing to analyse yet</b></p>
          <p className="meta">Answer a few questions and your accuracy, weak lessons and mistake patterns show up here.</p>
        </div>
      ) : (
        <>
          <div className="stat-tiles">
            <div className="card stat-tile">
              <span className="meta">Accuracy</span>
              <b className={`acc-big ${accuracyTone(pct(total.correct, total.reviews))}`}>{pct(total.correct, total.reviews)}%</b>
              <Trend delta={trend(total)} days={days} />
            </div>
            <div className="card stat-tile">
              <span className="meta">Reviews</span>
              <b className="acc-big">{total.reviews.toLocaleString()}</b>
              <span className="meta">{thisWeek?.week === currentWeek ? thisWeek.reviews : 0} this week</span>
            </div>
            <div className="card stat-tile">
              <span className="meta">Mastered</span>
              <b className="acc-big">{mastered}<small className="meta">/{questions}</small></b>
              <span className="meta" title="Cards you'd still remember 3 weeks out">stable ≥ 21 days</span>
            </div>
            <div className="card stat-tile">
              <span className="meta">Per question</span>
              <b className="acc-big">{seconds(avgMs)}</b>
              <span className="meta">average answer time</span>
            </div>
          </div>

          <WeeklyTrend weeks={data.weeks ?? []} currentWeek={currentWeek} overall={pct(total.correct, total.reviews)} />
          <Habits rows={breakdown} />
        </>
      )}

      <ErrorPattern errors={data.errors} />

      <div className="section-head">
        <h2 className="section-title">Modules</h2>
        <MaturityLegend />
      </div>
      <ul className="insight-cards">
        {moduleRows.map(({ m, s, reviews, accuracy, mat }) => {
          const open = openModule === m.id;
          const lessons = data.lessons.filter((l) => l.module_id === m.id).sort((a, b) => a.position - b.position);
          return (
            <li key={m.id} className={open ? "wide" : ""}>
              <div className="card insight-card">
                <span className="insight-head">
                  <span className="name">{m.name}<small className="meta"> · S{m.semester}</small></span>
                  <span className={reviews ? `acc-big ${accuracyTone(accuracy)}` : "acc-big none"}>
                    {reviews ? `${accuracy}%` : "—"}
                  </span>
                </span>
                <MaturityBar mat={mat} />
                <span className="meta">
                  {m.question_count - mat.new}/{m.question_count} seen · {plural(reviews, "review")}
                  {s?.avg_ms ? ` · ${seconds(s.avg_ms)}/q` : ""}
                  {m.learn_count + m.review_count ? ` · ${m.learn_count + m.review_count} due` : ""}
                </span>
                <span className="insight-actions">
                  <Trend delta={trend(s)} days={days} />
                  <span className="spacer" />
                  {lessons.length > 0 && (
                    <button className="link" aria-expanded={open} onClick={() => setOpenModule(open ? null : m.id)}>
                      {open ? "Hide lessons" : `${plural(lessons.length, "lesson")}`}
                    </button>
                  )}
                  <button className="pill" onClick={() => onStudy({ title: moduleName.get(m.id)!, endpoint: `/api/modules/${m.id}/study` })}>
                    <Icon name="play" size={14} /> Study
                  </button>
                </span>
                {open && (
                  <table className="insights-table lesson-table">
                    <thead>
                      <tr><th>Lesson</th><th className="num">Reviews</th><th className="num">Accuracy</th><th className="num">Last {days} d</th></tr>
                    </thead>
                    <tbody>
                      {lessons.map((l) => {
                        const acc = pct(l.correct, l.reviews);
                        return (
                          <tr key={l.id} className="clickable" onClick={() => onStudy({ title: l.title, endpoint: `/api/lessons/${l.id}/study?all=1` })}>
                            <td>{l.title}</td>
                            <td className="num">{l.reviews}</td>
                            <td className="num">
                              <span className="mini-bar"><span className={accuracyTone(acc)} style={{ width: `${acc}%` }} /></span>
                              <b className={`acc ${accuracyTone(acc)}`}>{acc}%</b>
                            </td>
                            <td className="num">{l.recent_reviews ? `${pct(l.recent_correct, l.recent_reviews)}% · ${l.recent_reviews}` : "—"}</td>
                          </tr>
                        );
                      })}
                    </tbody>
                  </table>
                )}
              </div>
            </li>
          );
        })}
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
                  {moduleName.get(l.module_id)} · {l.reviews} reviews · <b className={`acc ${accuracyTone(l.accuracy)}`}>{l.accuracy}%</b>{" "}
                  <Trend delta={trend(l)} days={days} />
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

// --- Weekly accuracy -----------------------------------------------------------------------------

function weekLabel(week: number) {
  const d = new Date((week * 7 - 3) * DAY_MS);
  return `${MONTHS[d.getUTCMonth()]} ${d.getUTCDate()}`;
}

function WeeklyTrend({ weeks, currentWeek, overall }: { weeks: Data["weeks"]; currentWeek: number; overall: number }) {
  const [hover, setHover] = useState<number | null>(null);
  const phone = useMedia(PHONE);
  const byWeek = new Map(weeks.map((w) => [w.week, w]));
  const cols = Array.from({ length: WEEKS }, (_, i) => {
    const week = currentWeek - WEEKS + 1 + i;
    const w = byWeek.get(week);
    return { week, reviews: w?.reviews ?? 0, accuracy: w ? pct(w.correct, w.reviews) : 0 };
  });
  const active = cols.filter((c) => c.reviews > 0);
  if (active.length < 2) return null;

  const W = phone ? 340 : 600, H = phone ? 180 : 170, top = 12, bottom = 24, left = 30, right = 8;
  const plotH = H - top - bottom;
  const step = (W - left - right) / WEEKS;
  const barW = Math.min(28, step - 6);
  const y = (v: number) => top + plotH * (1 - v / 100);
  const last = active.at(-1)!;
  const shown = hover !== null ? cols[hover] : null;
  const best = active.reduce((a, b) => (b.accuracy > a.accuracy ? b : a));

  return (
    <section className="card trend-card">
      <h2 className="card-title">Accuracy by week</h2>
      <p className="meta">
        Last {WEEKS} weeks · best {best.accuracy}% (week of {weekLabel(best.week)}) · dashed line = your overall {overall}%
      </p>
      <div className="chart-wrap" onMouseLeave={() => setHover(null)}>
        <svg viewBox={`0 0 ${W} ${H}`} role="img" aria-label={`Weekly accuracy, latest ${last.accuracy}%`}>
          {[0, 50, 100].map((v) => (
            <g key={v}>
              <line className="grid" x1={left} x2={W - right} y1={y(v)} y2={y(v)} />
              <text className="axis" x={left - 6} y={y(v) + 4} textAnchor="end">{v}</text>
            </g>
          ))}
          <line className="ref" x1={left} x2={W - right} y1={y(overall)} y2={y(overall)} />
          {cols.map((c, i) => {
            const x = left + i * step + (step - barW) / 2;
            const h = plotH * (c.accuracy / 100);
            return (
              <g key={c.week} onMouseEnter={() => setHover(i)} onClick={() => setHover(i)}>
                <rect className="hit" x={left + i * step} y={top} width={step} height={plotH} />
                {c.reviews > 0 ? (
                  <path
                    className={`wbar ${hover === i ? "on" : ""}`}
                    d={`M${x},${top + plotH} V${top + plotH - h + 4} q0,-4 4,-4 h${barW - 8} q4,0 4,4 V${top + plotH} Z`}
                  />
                ) : (
                  <circle className="empty-dot" cx={x + barW / 2} cy={top + plotH - 3} r={2} />
                )}
                {(i % (phone ? 4 : 3) === (WEEKS - 1) % (phone ? 4 : 3)) && (
                  <text className="axis" x={x + barW / 2} y={H - 6} textAnchor="middle">{weekLabel(c.week)}</text>
                )}
              </g>
            );
          })}
          {hover === null && (
            <text className="value" x={left + cols.indexOf(last) * step + step / 2} y={y(last.accuracy) - 6} textAnchor="middle">
              {last.accuracy}%
            </text>
          )}
        </svg>
        {shown && (
          <div className="chart-tip" style={{ left: `${Math.min(80, Math.max(20, ((left + (hover! + 0.5) * step) / W) * 100))}%` }}>
            <b>Week of {weekLabel(shown.week)}</b>
            <span>{shown.reviews ? `${shown.accuracy}% right · ${plural(shown.reviews, "review")}` : "No reviews"}</span>
          </div>
        )}
      </div>
    </section>
  );
}

// --- Confidence, speed and question origin --------------------------------------------------------

function Habits({ rows }: { rows: Data["breakdown"] }) {
  const sum = (f: (r: Data["breakdown"][number]) => boolean) => {
    const sel = rows.filter(f);
    const reviews = sel.reduce((n, r) => n + r.reviews, 0);
    const correct = sel.reduce((n, r) => n + (r.correct ? r.reviews : 0), 0);
    const timed = sel.reduce((n, r) => n + r.timed, 0);
    const ms = sel.reduce((n, r) => n + r.total_ms, 0);
    return { reviews, accuracy: pct(correct, reviews), ms: timed ? ms / timed : null };
  };
  const sure = sum((r) => !r.guessed);
  const unsure = sum((r) => !!r.guessed);
  const exam = sum((r) => r.origin === "exam");
  const generated = sum((r) => r.origin === "generated");
  const right = sum((r) => !!r.correct);
  const wrong = sum((r) => !r.correct);

  const lines: { label: string; a: { name: string; v: ReturnType<typeof sum> }; b: { name: string; v: ReturnType<typeof sum> }; note: string | null }[] = [];
  if (sure.reviews && unsure.reviews) {
    lines.push({
      label: "Confidence",
      a: { name: "Sure", v: sure },
      b: { name: "Not sure", v: unsure },
      note:
        unsure.accuracy >= sure.accuracy - 5
          ? "Your “not sure” answers are about as good as your sure ones: trust yourself more."
          : sure.accuracy < 75
            ? "Even answers you're sure of are often wrong: some facts are learned wrong, check the explanations."
            : null,
    });
  }
  if (exam.reviews && generated.reviews) {
    lines.push({
      label: "Question type",
      a: { name: "Past exams", v: exam },
      b: { name: "Practice", v: generated },
      note: exam.accuracy < generated.accuracy - 10 ? "Past exam questions trip you more than practice ones: give them priority." : null,
    });
  }
  const slowWrong = right.ms && wrong.ms && wrong.ms > right.ms * 1.3;

  if (!lines.length && !(right.ms && wrong.ms)) return null;
  return (
    <section className="card habits">
      <h2 className="card-title">How you answer</h2>
      {lines.map((l) => (
        <div key={l.label} className="habit">
          <span className="meta habit-label">{l.label}</span>
          {[l.a, l.b].map((side) => (
            <div key={side.name} className="habit-row">
              <span className="habit-name">{side.name}</span>
              <span className="mini-bar wide"><span className={accuracyTone(side.v.accuracy)} style={{ width: `${side.v.accuracy}%` }} /></span>
              <b className={`acc ${accuracyTone(side.v.accuracy)}`}>{side.v.accuracy}%</b>
              <span className="meta habit-n">{side.v.reviews}</span>
            </div>
          ))}
          {l.note && <p className="meta">{l.note}</p>}
        </div>
      ))}
      {right.ms && wrong.ms ? (
        <div className="habit">
          <span className="meta habit-label">Time per question</span>
          <p className="habit-time">
            <span>Right <b>{seconds(right.ms)}</b></span>
            <span>Wrong <b>{seconds(wrong.ms)}</b></span>
          </p>
          {slowWrong && <p className="meta">You spend longer on questions you get wrong: when you hesitate that long, it's usually a gap in the lesson, not bad luck.</p>}
        </div>
      ) : null}
    </section>
  );
}

// --- Card maturity ------------------------------------------------------------------------------

const MATURITY = [
  { key: "new", label: "New" },
  { key: "learning", label: "Learning" },
  { key: "young", label: "Young" },
  { key: "mature", label: "Mature" },
] as const;

function MaturityLegend() {
  return (
    <ul className="stack-legend maturity-legend" title="Young: stable under 21 days · Mature: 21 days or more">
      {MATURITY.map((s) => <li key={s.key}><span className={`swatch m-${s.key}`} /> {s.label}</li>)}
    </ul>
  );
}

function MaturityBar({ mat }: { mat: Record<(typeof MATURITY)[number]["key"], number> }) {
  const total = MATURITY.reduce((n, s) => n + mat[s.key], 0);
  return (
    <span className="stack maturity" role="img" aria-label={MATURITY.map((s) => `${s.label} ${mat[s.key]}`).join(", ")}>
      {MATURITY.map((s) => mat[s.key] > 0 && (
        <span key={s.key} className={`m-${s.key}`} style={{ flexGrow: mat[s.key] }} title={`${s.label}: ${mat[s.key]} (${pct(mat[s.key], total)}%)`} />
      ))}
    </span>
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
          <li key={p.key}><span className={`swatch ${p.key}`} /> {p.label} <b>{share(p.n)}%</b> <span className="meta">({p.n})</span></li>
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
          <tr><th>Predicted recall</th><th className="num">Reviews</th><th className="num">Actually right</th><th className="num">Gap</th></tr>
        </thead>
        <tbody>
          {rows.map((r) => {
            const got = pct(r.correct, r.reviews);
            const diff = Math.round(got - (r.bucket * 10 + 5));
            return (
              <tr key={r.bucket}>
                <td>{r.bucket * 10}–{r.bucket * 10 + 9}%</td>
                <td className="num">{r.reviews}</td>
                <td className="num">{got}%</td>
                <td className={`num ${Math.abs(diff) > 8 && r.reviews >= 10 ? (diff < 0 ? "acc bad" : "acc ok") : "meta"}`}>{diff > 0 ? "+" : ""}{diff}</td>
              </tr>
            );
          })}
        </tbody>
      </table>
      <p className="meta">Overall: predicted {Math.round(predicted)}%, actually {actual}%. {verdict}</p>
    </section>
  );
}
