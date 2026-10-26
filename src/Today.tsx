// The home tab: what to study today in one tap, upcoming exams and the study streak.
import type { Module } from "../shared/types";
import { needsCodeReminder } from "./Account";
import { Activity } from "./Activity";
import type { StudyTarget } from "./Decks";
import { Icon } from "./icons";
import { useSettings } from "./prefs";
import { plannedToday } from "./queue";
import { SyncBadge } from "./SyncBadge";

// Rough pace for the time estimate: a new question takes longer to read and think through.
const NEW_SECONDS = 45;
const REVIEW_SECONDS = 20;

const DAY_MS = 86_400_000;
const localToday = () => new Date(Date.now() - new Date().getTimezoneOffset() * 60_000).toISOString().slice(0, 10);
const daysUntil = (iso: string) => Math.round((Date.parse(iso) - Date.parse(localToday())) / DAY_MS);

function greeting() {
  const h = new Date().getHours();
  return h < 5 ? "Studying late" : h < 12 ? "Good morning" : h < 18 ? "Good afternoon" : "Good evening";
}

export function inDays(days: number) {
  return days === 0 ? "today" : days === 1 ? "tomorrow" : `in ${days} days`;
}

type Props = {
  modules: Module[];
  onStudy: (target: StudyTarget) => void;
  onOpenModule: (module: Module) => void;
  onSettings: () => void;
  onAccount: () => void;
};

export default function Today({ modules, onStudy, onOpenModule, onSettings, onAccount }: Props) {
  const settings = useSettings();
  const { fresh, reviews } = plannedToday(modules);
  const minutes = Math.max(1, Math.round((fresh * NEW_SECONDS + reviews * REVIEW_SECONDS) / 60));
  const nothing = fresh + reviews === 0;

  // Today's session is one year's questions: the first year with something to do (there's one for now).
  const years = [...new Set(modules.filter((m) => m.question_count > 0).map((m) => Math.ceil(m.semester / 2)))].sort();
  const year =
    years.find((y) => {
      const p = plannedToday(modules.filter((m) => Math.ceil(m.semester / 2) === y));
      return p.fresh + p.reviews > 0;
    }) ?? years[0] ?? 1;
  const start = () => onStudy({ title: `Year ${year}`, endpoint: `/api/years/${year}/study` });

  const exams = modules
    .filter((m) => settings.examDates[m.id] && daysUntil(settings.examDates[m.id]) >= 0)
    .map((m) => ({ m, date: settings.examDates[m.id], days: daysUntil(settings.examDates[m.id]) }))
    .sort((a, b) => a.days - b.days);

  const date = new Date().toLocaleDateString(undefined, { weekday: "long", day: "numeric", month: "long" });

  return (
    <>
      <header className="today-head">
        <span className="brand">
          <img src="/logo.svg" alt="" width="32" height="32" />
          <span>Hippo<em>QCM</em></span>
        </span>
        <SyncBadge />
      </header>
      <h1 className="greeting">
        {greeting()}
        <small>{date}</small>
      </h1>

      {needsCodeReminder() && (
        <button className="code-reminder" onClick={onAccount}>
          <Icon name="key" />
          <span>
            <b>Don't lose your progress.</b> Save your sync code to restore it on another device.
          </span>
          <Icon name="next" />
        </button>
      )}

      <section className={nothing ? "card hero done-today" : "card hero"}>
        <p className="eyebrow">Today's session</p>
        {nothing ? (
          <>
            <p className="hero-title"><Icon name="check" size={28} /> All caught up</p>
            <p className="meta">Nothing due right now. Come back tomorrow, or keep going with extra questions.</p>
            <button className="secondary big" onClick={start}>Study anyway</button>
          </>
        ) : (
          <>
            <div className="hero-counts">
              <span><b className="new">{fresh}</b> new</span>
              <span><b className="due">{reviews}</b> to review</span>
            </div>
            <p className="meta">About {minutes} min</p>
            <button className="primary big" onClick={start}>
              <Icon name="play" /> Start studying
            </button>
          </>
        )}
      </section>

      <section className="card">
        <h2 className="card-title">Exams</h2>
        {exams.length === 0 ? (
          <button className="row-link" onClick={onSettings}>
            <Icon name="calendar" />
            <span>
              Set your exam dates
              <small className="meta">Reviews ramp up so everything is fresh on the day.</small>
            </span>
            <Icon name="next" />
          </button>
        ) : (
          <ul className="exam-list">
            {exams.map(({ m, date, days }) => (
              <li key={m.id}>
                <button className="row-link" onClick={() => onOpenModule(m)}>
                  <span className={days <= 14 ? "countdown soon" : "countdown"}>
                    <b>{days}</b>
                    <small>{days === 1 ? "day" : "days"}</small>
                  </span>
                  <span>
                    {m.name} · S{m.semester}
                    <small className="meta">
                      {new Date(`${date}T00:00`).toLocaleDateString(undefined, { weekday: "short", day: "numeric", month: "short" })} ·{" "}
                      {inDays(days)}
                    </small>
                  </span>
                  <Icon name="next" />
                </button>
              </li>
            ))}
          </ul>
        )}
      </section>

      <Activity refreshKey={modules} />
    </>
  );
}
