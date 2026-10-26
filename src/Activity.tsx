// Reviews per day: the streak strip and heatmap on the Today screen, and the streak on the
// end-of-session screen.
import { useEffect, useMemo, useState } from "react";
import type { ActivityDay } from "../shared/types";
import { getJSON } from "./api";
import { Icon } from "./icons";
import { PHONE, useMedia } from "./ui";

const DAY_MS = 86_400_000;
const MONTHS = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];
const WEEKDAYS = ["S", "M", "T", "W", "T", "F", "S"];

// Local "epoch day" — the same numbering the /api/activity endpoint returns.
const tzOffset = () => new Date().getTimezoneOffset() * 60_000;
export const localDay = (ms: number) => Math.floor((ms - tzOffset()) / DAY_MS);
const dayToDate = (day: number) => new Date(day * DAY_MS + tzOffset());

const plural = (n: number, word: string) => `${n} ${word}${n === 1 ? "" : "s"}`;

function level(count: number): number {
  if (count === 0) return 0;
  if (count < 10) return 1;
  if (count < 30) return 2;
  if (count < 60) return 3;
  return 4;
}

export function useActivity(refreshKey?: unknown) {
  const [days, setDays] = useState<ActivityDay[] | null>(null);

  useEffect(() => {
    getJSON<ActivityDay[]>(`/api/activity?tz=${new Date().getTimezoneOffset()}`)
      .then(setDays)
      .catch(() => setDays([]));
  }, [refreshKey]);

  const today = localDay(Date.now());
  const byDay = useMemo(() => new Map(days?.map((d) => [d.day, d.count])), [days]);

  const stats = useMemo(() => {
    const active = [...byDay.keys()].sort((a, b) => a - b);
    const total = [...byDay.values()].reduce((a, b) => a + b, 0);
    let longest = 0;
    let run = 0;
    for (let i = 0; i < active.length; i++) {
      run = i > 0 && active[i] === active[i - 1] + 1 ? run + 1 : 1;
      longest = Math.max(longest, run);
    }
    // Today without reviews yet doesn't break the streak.
    let current = 0;
    for (let d = byDay.has(today) ? today : today - 1; byDay.has(d); d--) current++;
    const span = active.length ? today - active[0] + 1 : 0;
    return {
      todayCount: byDay.get(today) ?? 0,
      average: active.length ? Math.round(total / active.length) : 0,
      learnedPct: span ? Math.round((active.length / span) * 100) : 0,
      longest,
      current,
    };
  }, [byDay, today]);

  return { days, byDay, today, stats };
}

/** Streak, today's count and the last seven days, for the Today screen. */
export function Activity({ refreshKey }: { refreshKey: unknown }) {
  const { days, byDay, today, stats } = useActivity(refreshKey);
  const phone = useMedia(PHONE);
  if (!days) return null;

  const week = Array.from({ length: 7 }, (_, i) => today - 6 + i);

  return (
    <>
      <section className="card streak-card">
        <div className="streak-head">
          <span className={stats.current > 0 ? "streak-flame on" : "streak-flame"}>
            <Icon name="flame" size={26} />
          </span>
          <div>
            <p className="streak-num">{plural(stats.current, "day")} streak</p>
            <p className="meta">
              {stats.todayCount > 0
                ? `${plural(stats.todayCount, "question")} today`
                : stats.current > 0
                  ? "Study today to keep it going"
                  : "Answer one question to start a streak"}
            </p>
          </div>
        </div>
        <div className="week-strip">
          {week.map((d) => {
            const count = byDay.get(d) ?? 0;
            return (
              <span key={d} className={d === today ? "day today" : "day"} title={plural(count, "review")}>
                <span className={`dot l${level(count)}`}>{count > 0 && <Icon name="check" size={12} />}</span>
                {WEEKDAYS[dayToDate(d).getDay()]}
              </span>
            );
          })}
        </div>
      </section>

      {/* An empty year of squares says nothing: the full grid shows once there's something in it. */}
      {days.length > 0 && <Heatmap byDay={byDay} today={today} weeks={phone ? 26 : 53} stats={stats} />}
    </>
  );
}

function Heatmap({ byDay, today, weeks, stats }: {
  byDay: Map<number, number>;
  today: number;
  weeks: number;
  stats: ReturnType<typeof useActivity>["stats"];
}) {
  // Columns are weeks (Sunday first), the last column holds today.
  const todayWeekday = dayToDate(today).getDay();
  const start = today - todayWeekday - (weeks - 1) * 7;
  const columns: { day: number; count: number }[][] = [];
  for (let w = 0; w < weeks; w++) {
    const col = [];
    for (let d = 0; d < 7; d++) {
      const day = start + w * 7 + d;
      if (day > today) break;
      col.push({ day, count: byDay.get(day) ?? 0 });
    }
    columns.push(col);
  }
  const monthLabel = (col: { day: number }[]) => {
    const first = col.find((c) => dayToDate(c.day).getDate() === 1);
    return first ? MONTHS[dayToDate(first.day).getMonth()] : "";
  };

  return (
    <section className="card activity">
      <h2 className="card-title">Activity</h2>
      <div className="heatmap-scroll">
        <div className="heatmap">
          {columns.map((col, w) => (
            <div className="week" key={w}>
              <span className="month">{monthLabel(col)}</span>
              {col.map((c) => (
                <span
                  key={c.day}
                  className={`cell l${level(c.count)}${c.day === today ? " today" : ""}`}
                  title={`${plural(c.count, "review")} on ${dayToDate(c.day).toLocaleDateString(undefined, {
                    weekday: "short",
                    day: "numeric",
                    month: "short",
                    year: "numeric",
                  })}`}
                />
              ))}
            </div>
          ))}
        </div>
      </div>
      <div className="activity-legend">
        <span>Less</span>
        {[0, 1, 2, 3, 4].map((l) => (
          <span key={l} className={`cell l${l}`} />
        ))}
        <span>More</span>
      </div>
      <dl className="stat-row">
        <div><dt>Daily average</dt><dd>{plural(stats.average, "card")}</dd></div>
        <div><dt>Days studied</dt><dd>{stats.learnedPct}%</dd></div>
        <div><dt>Longest streak</dt><dd>{plural(stats.longest, "day")}</dd></div>
      </dl>
    </section>
  );
}
