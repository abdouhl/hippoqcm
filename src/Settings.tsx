import { useEffect, useState } from "react";
import type { Module } from "../shared/types";
import { getJSON, offlineFiles, saveSettings } from "./api";
import { downloadFiles, retryDownloads, useDownloadStatus } from "./offline";
import { Icon, type IconName } from "./icons";
import { DEFAULTS, useSettings, type Settings as SettingsT } from "./prefs";
import { inDays } from "./Today";
import { setTheme, useTheme, type Theme } from "./ui";

const RETENTIONS = [80, 85, 88, 90, 92, 95, 97];

const ORDERS: { value: SettingsT["order"]; label: string }[] = [
  { value: "mixed", label: "Mixed in" },
  { value: "reviews-first", label: "Reviews first" },
  { value: "new-first", label: "New first" },
];

const THEMES: { value: Theme; label: string; icon: IconName }[] = [
  { value: "auto", label: "Auto", icon: "auto" },
  { value: "light", label: "Light", icon: "sun" },
  { value: "dark", label: "Dark", icon: "moon" },
];

const DAY_MS = 86_400_000;

type Props = { onAccount: () => void; navigate: (path: string) => void };

export default function Settings({ onAccount, navigate }: Props) {
  const settings = useSettings();
  const theme = useTheme();
  const [saved, setSaved] = useState(false);
  const [modules, setModules] = useState<Module[]>([]);
  useEffect(() => {
    getJSON<Module[]>("/api/modules")
      .then((ms) => setModules(ms.filter((m) => m.question_count > 0)))
      .catch(() => {});
  }, []);
  const set = (patch: Partial<SettingsT>) => {
    saveSettings({ ...settings, ...patch });
    setSaved(true);
  };
  const setExamDate = (moduleId: number, date: string) => {
    const examDates = { ...settings.examDates };
    if (date) examDates[moduleId] = date;
    else delete examDates[moduleId];
    set({ examDates });
  };
  const today = new Date(Date.now() - new Date().getTimezoneOffset() * 60_000).toISOString().slice(0, 10);
  // Whole numbers from 0 to 999; anything else keeps the old value.
  const count = (value: string, fallback: number) => {
    const n = Number(value);
    return Number.isInteger(n) && n >= 0 && n <= 999 ? n : fallback;
  };

  return (
    <>
      <div className="tab-title-row">
        <h1 className="tab-title">Settings</h1>
        <span className={saved ? "meta saved-note on" : "meta saved-note"}>
          {saved ? <><Icon name="check" size={14} /> Saved</> : "Synced with your code"}
        </span>
      </div>

      <section className="card settings-group">
        <h2 className="card-title">Daily limits <small>per module</small></h2>
        <label className="setting">
          <span>
            New questions per day
            <small className="meta">0 = only reviews</small>
          </span>
          <input
            type="number"
            min={0}
            max={999}
            inputMode="numeric"
            value={settings.newPerDay}
            onChange={(e) => set({ newPerDay: count(e.target.value, settings.newPerDay) })}
          />
        </label>
        <label className="setting">
          <span>
            Reviews per day
            <small className="meta">0 = no limit</small>
          </span>
          <input
            type="number"
            min={0}
            max={999}
            inputMode="numeric"
            value={settings.reviewsPerDay}
            onChange={(e) => set({ reviewsPerDay: count(e.target.value, settings.reviewsPerDay) })}
          />
        </label>
      </section>

      <section className="card settings-group">
        <h2 className="card-title">Study session</h2>
        <div className="setting stacked">
          <span>Order of new questions</span>
          <div className="segmented" role="radiogroup" aria-label="Where new questions go">
            {ORDERS.map((o) => (
              <button
                key={o.value}
                role="radio"
                aria-checked={o.value === settings.order}
                className={o.value === settings.order ? "on" : undefined}
                onClick={() => set({ order: o.value })}
              >
                {o.label}
              </button>
            ))}
          </div>
        </div>
        <label className="setting">
          <span>Shuffle answer options</span>
          <input className="switch" type="checkbox" checked={settings.shuffleOptions} onChange={(e) => set({ shuffleOptions: e.target.checked })} />
        </label>
      </section>

      <section className="card settings-group">
        <h2 className="card-title">Scheduling</h2>
        <label className="setting">
          <span>
            Target recall
            <small className="meta">Chance of remembering a question when it comes back. Higher = more reviews.</small>
          </span>
          <select value={Math.round(settings.retention * 100)} onChange={(e) => set({ retention: Number(e.target.value) / 100 })}>
            {RETENTIONS.map((r) => <option key={r} value={r}>{r}%</option>)}
          </select>
        </label>
        <label className="setting">
          <span>
            Suggest a grade
            <small className="meta">From how long a right answer took</small>
          </span>
          <input className="switch" type="checkbox" checked={settings.autoGrade} onChange={(e) => set({ autoGrade: e.target.checked })} />
        </label>
      </section>

      <section className="card settings-group">
        <h2 className="card-title">Exam dates</h2>
        <p className="meta">
          Questions come back before the exam, target recall rises to 92% six weeks out and 95% in the last two, and
          "Cram for the exam" appears when you're done for the day.
        </p>
        {modules.map((m) => {
          const date = settings.examDates[m.id];
          const days = date ? Math.round((Date.parse(date) - Date.parse(today)) / DAY_MS) : null;
          return (
            <label key={m.id} className="setting">
              <span>
                {m.name} · S{m.semester}
                {days !== null && days >= 0 && (
                  <small className={days <= 14 ? "meta soon" : "meta"}>{inDays(days)}</small>
                )}
              </span>
              <input type="date" min={today} value={date ?? ""} onChange={(e) => setExamDate(m.id, e.target.value)} />
            </label>
          );
        })}
      </section>

      <section className="card settings-group">
        <h2 className="card-title">Appearance</h2>
        <div className="segmented" role="radiogroup" aria-label="Theme">
          {THEMES.map((t) => (
            <button
              key={t.value}
              role="radio"
              aria-checked={t.value === theme}
              className={t.value === theme ? "on" : undefined}
              onClick={() => setTheme(t.value)}
            >
              <Icon name={t.icon} size={16} /> {t.label}
            </button>
          ))}
        </div>
      </section>

      <OfflineFiles />

      <section className="card settings-group links">
        <button className="row-link" onClick={onAccount}>
          <Icon name="key" />
          <span>
            Save &amp; restore progress
            <small className="meta">Your sync code, other devices, start over</small>
          </span>
          <Icon name="next" />
        </button>
        {(["about", "privacy", "terms", "contact"] as const).map((page) => (
          <button key={page} className="row-link" onClick={() => navigate(`/${page}`)}>
            <Icon name="info" />
            <span>{page[0].toUpperCase() + page.slice(1)}</span>
            <Icon name="next" />
          </button>
        ))}
      </section>

      <div className="actions start">
        <button className="secondary" onClick={() => set({ ...DEFAULTS, examDates: settings.examDates })}>Reset to defaults</button>
      </div>
      <p className="meta made-by">Made in Annaba by a first-year medical student · not affiliated with the university</p>
    </>
  );
}

const mb = (bytes: number) => `${Math.round(bytes / 1e6)} MB`;

// Lesson PDFs, summaries and question images download on their own after each sync; this shows how
// far along that is and starts it again on demand.
function OfflineFiles() {
  const { running, done, total, failed, checkedAt } = useDownloadStatus();
  const [used, setUsed] = useState<number | null>(null);
  useEffect(() => {
    if (!running) navigator.storage?.estimate?.().then((e) => setUsed(e.usage ?? null)).catch(() => {});
  }, [running]);
  const download = async () => {
    const urls = await offlineFiles();
    if (urls) await downloadFiles(urls);
  };

  let state: string;
  if (!("serviceWorker" in navigator) || !import.meta.env.PROD) state = "Offline files need the installed app (production build).";
  else if (running) state = `Downloading… ${done} of ${total} files`;
  else if (checkedAt === null) state = "Not checked yet.";
  else if (failed.length > 0) state = `${done} of ${total} files saved · ${failed.length} couldn't download${navigator.onLine ? "" : " (offline)"}.`;
  else state = `All ${total} files saved — lessons and summaries open without internet.`;

  return (
    <section className="card settings-group">
      <h2 className="card-title">Offline</h2>
      <p className="meta">
        Every lesson PDF, summary and question image is saved on this device after each sync, so the app works fully
        without internet.{used !== null && <> Uses {mb(used)} of storage.</>}
      </p>
      {running && <progress className="download" max={total} value={done} />}
      <p>{state}</p>
      <div className="actions start">
        {failed.length > 0 && !running ? (
          <button onClick={() => void retryDownloads()}><Icon name="refresh" size={16} /> Retry {failed.length} files</button>
        ) : (
          <button className="secondary" disabled={running} onClick={() => void download()}>
            <Icon name="download" size={16} /> {checkedAt === null ? "Download for offline" : "Check for new files"}
          </button>
        )}
      </div>
    </section>
  );
}
