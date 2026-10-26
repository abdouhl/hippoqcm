import { useEffect, useState, type CSSProperties, type ReactNode } from "react";
import type { Lesson, Module } from "../shared/types";
import { getJSON } from "./api";
import { Icon } from "./icons";
import { PHONE, Ring, useMedia } from "./ui";

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
              <Icon name={expanded ? "down" : "next"} size={16} />
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
          <button className="link" onClick={onDetails} aria-label="Details" title="Lessons and details">
            <Icon name="next" size={18} />
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

export default function Decks(props: Props) {
  const phone = useMedia(PHONE);
  return (
    <>
      <h1 className="tab-title">Decks</h1>
      {phone ? <DeckCards {...props} /> : <DeckTree {...props} />}
    </>
  );
}

const semesterLabel = (semester: number) => `Semester ${semester}`;
const plural = (n: number, word: string) => `${n} ${word}${n === 1 ? "" : "s"}`;

// Phones: one card per module, grouped by semester. Tapping a card opens its lessons; the play
// button studies it straight away.
function DeckCards({ modules, onStudy, onOpenModule }: Props) {
  const semesters = [...new Set(modules.map((m) => m.semester))].sort();
  return (
    <>
      {semesters.map((semester) => {
        const semModules = modules.filter((m) => m.semester === semester);
        const total = sum(semModules);
        if (total.question_count === 0) {
          return (
            <section key={semester} className="deck-section">
              <h2 className="section-title">{semesterLabel(semester)}</h2>
              <div className="card coming-soon">
                <p><b>Coming soon</b></p>
                <p className="meta">{semModules.map((m) => m.name).join(" · ")}</p>
              </div>
            </section>
          );
        }
        return (
          <section key={semester} className="deck-section">
            <div className="section-head">
              <h2 className="section-title">
                {semesterLabel(semester)}
                <small>{total.question_count.toLocaleString()} questions</small>
              </h2>
              <button
                className="pill"
                onClick={() => onStudy({ title: semesterLabel(semester), endpoint: `/api/semesters/${semester}/study` })}
              >
                <Icon name="play" size={14} /> Study all
              </button>
            </div>
            <ul className="deck-cards">
              {semModules.map((m) => {
                const seen = m.question_count - m.new_count;
                const due = m.learn_count + m.review_count;
                const empty = m.question_count === 0;
                return (
                  <li key={m.id} className={empty ? "deck-card empty" : "deck-card"}>
                    <button className="deck-card-main" onClick={() => onOpenModule(m)} disabled={empty}>
                      <Ring value={m.question_count ? seen / m.question_count : 0} size={46}>
                        {m.question_count ? `${Math.round((seen / m.question_count) * 100)}%` : "–"}
                      </Ring>
                      <span className="deck-card-text">
                        <span className="name">{m.name}</span>
                        <span className="meta">
                          {empty ? "No questions yet" : `${plural(m.question_count, "question")}${m.lesson_count ? ` · ${plural(m.lesson_count, "lesson")}` : ""}`}
                        </span>
                        {!empty && (
                          <span className="deck-counts">
                            {m.new_count > 0 && <span className="count new">{m.new_count} new</span>}
                            {due > 0 && <span className="count due">{due} due</span>}
                            {m.new_count === 0 && due === 0 && <span className="count done"><Icon name="check" size={12} /> Done for now</span>}
                          </span>
                        )}
                      </span>
                    </button>
                    {!empty && (
                      <button
                        className="deck-play"
                        aria-label={`Study ${m.name}`}
                        onClick={() => onStudy({ title: `${m.name} · S${m.semester}`, endpoint: `/api/modules/${m.id}/study` })}
                      >
                        <Icon name="play" size={18} />
                      </button>
                    )}
                  </li>
                );
              })}
            </ul>
          </section>
        );
      })}
    </>
  );
}

// Wider screens: the Anki-style tree, down to single lessons.
function DeckTree({ modules, onStudy, onOpenModule, onOpenLesson }: Props) {
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
      const semCounts = sum(semModules);
      if (semCounts.question_count === 0) {
        // Nothing to study yet: one muted row instead of a list of zeros.
        rows.push(
          <Row key={sKey} depth={1} label={<>S{semester} <span className="soon">coming soon</span></>} counts={semCounts} onStudy={() => {}} />,
        );
        continue;
      }
      rows.push(
        <Row
          key={sKey}
          depth={1}
          label={`S${semester}`}
          counts={semCounts}
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
              label={<>{l.read_at && <span className="check" title="Read">✓ </span>}{l.title}</>}
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
  );
}
