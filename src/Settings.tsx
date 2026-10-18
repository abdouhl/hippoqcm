import { useState } from "react";
import { DEFAULTS, saveSettings, useSettings, type Settings as SettingsT } from "./prefs";

const ORDERS: { value: SettingsT["order"]; label: string }[] = [
  { value: "mixed", label: "Mixed in with reviews" },
  { value: "reviews-first", label: "After reviews" },
  { value: "new-first", label: "Before reviews" },
];

export default function Settings({ onBack }: { onBack: () => void }) {
  const settings = useSettings();
  const [saved, setSaved] = useState(false);
  const set = (patch: Partial<SettingsT>) => {
    saveSettings({ ...settings, ...patch });
    setSaved(true);
  };
  // Whole numbers from 0 to 999; anything else keeps the old value.
  const count = (value: string, fallback: number) => {
    const n = Number(value);
    return Number.isInteger(n) && n >= 0 && n <= 999 ? n : fallback;
  };

  return (
    <main>
      <header className="study-header">
        <button className="link" onClick={onBack}>← Decks</button>
        <span className="meta">{saved ? "✓ Saved" : "Saved on this device"}</span>
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

      <div className="actions start">
        <button className="secondary" onClick={() => set(DEFAULTS)}>Reset to defaults</button>
      </div>
    </main>
  );
}
