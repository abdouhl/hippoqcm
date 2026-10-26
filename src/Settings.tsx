import { useEffect, useState } from "react";
import type { Module } from "../shared/types";
import { getJSON, offlineFiles, saveSettings } from "./api";
import { downloadFiles, retryDownloads, useDownloadStatus } from "./offline";
import { DEFAULTS, useSettings, type Settings as SettingsT } from "./prefs";

const RETENTIONS = [80, 85, 88, 90, 92, 95, 97];

const ORDERS: { value: SettingsT["order"]; label: string }[] = [
  { value: "mixed", label: "Mixed in with reviews" },
  { value: "reviews-first", label: "After reviews" },
  { value: "new-first", label: "Before reviews" },
];

export default function Settings({ onBack }: { onBack: () => void }) {
  const settings = useSettings();
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
    <main>
      <header className="study-header">
        <button className="link" onClick={onBack}>← Decks</button>
        <span className="meta">{saved ? "✓ Saved" : "Synced with your code"}</span>
      </header>
      <h1>Settings</h1>

      <fieldset className="exam-setup">
        <legend>Daily limits, per module</legend>
        <label className="setting">
          <span>
            New questions per day
            <small className="meta">Questions you've never seen. 0 = only reviews.</small>
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
            <small className="meta">Questions due again. 0 = no limit.</small>
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
      </fieldset>

      <fieldset className="exam-setup">
        <legend>New questions in a session</legend>
        <div className="chips">
          {ORDERS.map((o) => (
            <button key={o.value} className={o.value === settings.order ? "chip on" : "chip"} onClick={() => set({ order: o.value })}>
              {o.label}
            </button>
          ))}
        </div>
      </fieldset>

      <label className="exam-check">
        <input type="checkbox" checked={settings.shuffleOptions} onChange={(e) => set({ shuffleOptions: e.target.checked })} />
        Shuffle answer options
      </label>

      <fieldset className="exam-setup">
        <legend>Scheduling</legend>
        <label className="setting">
          <span>
            Target recall
            <small className="meta">
              How likely you should be to remember a question when it comes back, 80–97%. Higher means more reviews.
              It goes up on its own in the weeks before an exam.
            </small>
          </span>
          <select value={Math.round(settings.retention * 100)} onChange={(e) => set({ retention: Number(e.target.value) / 100 })}>
            {RETENTIONS.map((r) => <option key={r} value={r}>{r}%</option>)}
          </select>
        </label>
        <label className="exam-check">
          <input type="checkbox" checked={settings.autoGrade} onChange={(e) => set({ autoGrade: e.target.checked })} />
          Suggest a grade from how long a right answer took
        </label>
      </fieldset>

      <fieldset className="exam-setup">
        <legend>Exam dates</legend>
        <p className="meta">
          With an exam date, a module's questions never come back later than the day before the exam, target recall
          rises to 92% six weeks out and 95% in the last two, and reviews go weakest-on-exam-day first. When you're done
          for the day, "Cram for the exam" brings up whatever you're likely to have forgotten by then.
        </p>
        {modules.map((m) => (
          <label key={m.id} className="setting">
            <span>{m.name} · S{m.semester}</span>
            <input
              type="date"
              min={today}
              value={settings.examDates[m.id] ?? ""}
              onChange={(e) => setExamDate(m.id, e.target.value)}
            />
          </label>
        ))}
      </fieldset>

      <OfflineFiles />

      <div className="actions start">
        <button className="secondary" onClick={() => set({ ...DEFAULTS, examDates: settings.examDates })}>Reset to defaults</button>
      </div>
    </main>
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
  else state = `✓ All ${total} files saved — lessons and summaries open without internet.`;

  return (
    <fieldset className="exam-setup">
      <legend>Offline</legend>
      <p className="meta">
        Every lesson PDF, summary and question image is saved on this device after each sync, so the app works fully
        without internet.{used !== null && <> Uses {mb(used)} of storage.</>}
      </p>
      {running && <progress className="download" max={total} value={done} />}
      <p>{state}</p>
      <div className="actions start">
        {failed.length > 0 && !running ? (
          <button onClick={() => void retryDownloads()}>Retry {failed.length} files</button>
        ) : (
          <button className="secondary" disabled={running} onClick={() => void download()}>
            {checkedAt === null ? "Download for offline" : "Check for new files"}
          </button>
        )}
      </div>
    </fieldset>
  );
}
