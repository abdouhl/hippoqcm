import { useEffect, useMemo, useState, type CSSProperties, type ReactNode } from "react";
import type { ActivityDay, Lesson, Module } from "../shared/types";
import { getJSON } from "./api";

type Counts = { new_count: number; learn_count: number; review_count: number; question_count: number };

export type StudyTarget = { title: string; endpoint: string };

const sum = (items: Counts[]): Counts => ({
  new_count: items.reduce((n, c) => n + c.new_count, 0),
  learn_count: items.reduce((n, c) => n + c.learn_count, 0),
  review_count: items.reduce((n, c) => n + c.review_count, 0),
  question_count: items.reduce((n, c) => n + c.question_count, 0),
});

// Which tree nodes are expanded, remembered per browser. Years and semesters start open.
const OPEN_KEY = "decks.open";
function useOpenNodes() {
  const [open, setOpen] = useState<Set<string>>(() => {
    try {
      const saved = localStorage.getItem(OPEN_KEY);
      if (saved) return new Set(JSON.parse(saved) as string[]);
    } catch {}
    return new Set(["y1", "s1", "s2"]);
  });
  const toggle = (key: string) =>
    setOpen((prev) => {
      const next = new Set(prev);
      if (!next.delete(key)) next.add(key);
      try {
        localStorage.setItem(OPEN_KEY, JSON.stringify([...next]));
      } catch {}
      return next;
    });
  return { open, toggle };
}

type RowProps = {
  depth: number;
  label: ReactNode;
  counts: Counts;
  expanded?: boolean; // undefined = leaf
  onToggle?: () => void;
  onStudy: () => void;
  onDetails?: () => void;
};

function Row({ depth, label, counts, expanded, onToggle, onStudy, onDetails }: RowProps) {
  const empty = counts.question_count === 0;
  return (
    <tr className={empty ? "deck-row empty" : "deck-row"}>
      <td className="deck-name" style={{ "--depth": depth } as CSSProperties}>
        <span className="toggle">
          {expanded !== undefined && (
            <button className="link" onClick={onToggle} aria-label={expanded ? "Collapse" : "Expand"}>
              {expanded ? "−" : "+"}
            </button>
          )}
        </span>
        <button className="link deck-link" onClick={onStudy} disabled={empty}>
          {label}
        </button>
      </td>
      <td className={counts.new_count ? "num new" : "num zero"}>{counts.new_count}</td>
      <td className={counts.learn_count ? "num learn" : "num zero"}>{counts.learn_count}</td>
      <td className={counts.review_count ? "num due" : "num zero"}>{counts.review_count}</td>
      <td className="gear">
        {onDetails && (
          <button className="link" onClick={onDetails} aria-label="Details" title="Details">
            ⚙
          </button>
        )}
      </td>
    </tr>
  );
}

type Props = {
  modules: Module[];
  onStudy: (target: StudyTarget) => void;
  onOpenModule: (module: Module) => void;
  onOpenLesson: (module: Module, lesson: Lesson) => void;
};

export default function Decks({ modules, onStudy, onOpenModule, onOpenLesson }: Props) {
  const [lessons, setLessons] = useState<Lesson[]>([]);
  const { open, toggle } = useOpenNodes();

  useEffect(() => {
    getJSON<Lesson[]>("/api/lessons")
      .then(setLessons)
      .catch(() => {});
  }, [modules]); // refetch alongside module counts

  const years = [...new Set(modules.map((m) => Math.ceil(m.semester / 2)))].sort();

  const rows: ReactNode[] = [];
  for (const year of years) {
    const yearModules = modules.filter((m) => Math.ceil(m.semester / 2) === year);
    const yKey = `y${year}`;
    rows.push(
      <Row
        key={yKey}
        depth={0}
        label={`Year ${year}`}
        counts={sum(yearModules)}
        expanded={open.has(yKey)}
        onToggle={() => toggle(yKey)}
        onStudy={() => onStudy({ title: `Year ${year}`, endpoint: `/api/years/${year}/study` })}
      />,
    );
    if (!open.has(yKey)) continue;

    for (const semester of [...new Set(yearModules.map((m) => m.semester))].sort()) {
      const semModules = yearModules.filter((m) => m.semester === semester);
      const sKey = `s${semester}`;
      rows.push(
        <Row
          key={sKey}
          depth={1}
          label={`S${semester}`}
          counts={sum(semModules)}
          expanded={open.has(sKey)}
          onToggle={() => toggle(sKey)}
          onStudy={() => onStudy({ title: `Semester ${semester}`, endpoint: `/api/semesters/${semester}/study` })}
        />,
      );
      if (!open.has(sKey)) continue;

      for (const m of semModules) {
        const mKey = `m${m.id}`;
        const moduleLessons = lessons.filter((l) => l.module_id === m.id);
        rows.push(
          <Row
            key={mKey}
            depth={2}
            label={m.name}
            counts={m}
            expanded={moduleLessons.length > 0 ? open.has(mKey) : undefined}
            onToggle={() => toggle(mKey)}
            onStudy={() => onStudy({ title: `${m.name} · S${m.semester}`, endpoint: `/api/modules/${m.id}/study` })}
            onDetails={() => onOpenModule(m)}
          />,
        );
        if (!open.has(mKey)) continue;

        for (const l of moduleLessons) {
          rows.push(
            <Row
              key={`l${l.id}`}
              depth={3}
              label={l.title}
              counts={l}
              onStudy={() => onStudy({ title: l.title, endpoint: `/api/lessons/${l.id}/study` })}
              onDetails={() => onOpenLesson(m, l)}
            />,
          );
        }
      }
    }
  }

  return (
    <>
      <table className="decks">
        <thead>
          <tr>
            <th className="deck-name">Deck</th>
            <th className="num">New</th>
            <th className="num">Learn</th>
            <th className="num">Due</th>
            <th className="gear" />
          </tr>
        </thead>
        <tbody>{rows}</tbody>
      </table>
      <Activity refreshKey={modules} />
    </>
  );
}

// ---- Activity grid ---------------------------------------------------------

const DAY_MS = 86_400_000;
const WEEKS = 53;
const MONTHS = ["Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul", "Aug", "Sep", "Oct", "Nov", "Dec"];

// Local "epoch day" — the same numbering the /api/activity endpoint returns.
const tzOffset = () => new Date().getTimezoneOffset() * 60_000;
const localDay = (ms: number) => Math.floor((ms - tzOffset()) / DAY_MS);
const dayToDate = (day: number) => new Date(day * DAY_MS + tzOffset());

function level(count: number): number {
  if (count === 0) return 0;
  if (count < 10) return 1;
  if (count < 30) return 2;
  if (count < 60) return 3;
  return 4;
}

function Activity({ refreshKey }: { refreshKey: unknown }) {
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

  if (!days) return null;

  // Columns are weeks (Sunday first), the last column holds today.
  const todayWeekday = dayToDate(today).getDay();
  const start = today - todayWeekday - (WEEKS - 1) * 7;
  const columns: { day: number; count: number }[][] = [];
  for (let w = 0; w < WEEKS; w++) {
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

  const plural = (n: number, word: string) => `${n} ${word}${n === 1 ? "" : "s"}`;

  return (
    <section className="activity">
      <p className="today">Studied {plural(stats.todayCount, "card")} today</p>
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
      <p className="activity-stats">
        <span>
          Daily average: <b>{plural(stats.average, "card")}</b>
        </span>
        <span>
          Days learned: <b>{stats.learnedPct}%</b>
        </span>
        <span>
          Longest streak: <b>{plural(stats.longest, "day")}</b>
        </span>
        <span>
          Current streak: <b>{plural(stats.current, "day")}</b>
        </span>
      </p>
    </section>
  );
}
