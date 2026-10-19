// Study preferences, kept on this device and synced under its code (saveSettings in api.ts).
import { useEffect, useState } from "react";

export type Settings = {
  newPerDay: number; // new questions per module per day
  reviewsPerDay: number; // reviews per module per day, 0 = no limit
  order: "mixed" | "reviews-first" | "new-first"; // where new questions go in a session
  shuffleOptions: boolean;
};

export const DEFAULTS: Settings = { newPerDay: 20, reviewsPerDay: 0, order: "mixed", shuffleOptions: true };

const KEY = "hippoqcm.settings";
const AT_KEY = "hippoqcm.settings.at"; // unix ms of the save, here or on another device
const listeners = new Set<() => void>();

export function getSettings(): Settings {
  try {
    return { ...DEFAULTS, ...(JSON.parse(localStorage.getItem(KEY) ?? "{}") as Partial<Settings>) };
  } catch {
    return DEFAULTS;
  }
}

/** When the settings here were saved; 0 if never, or before settings synced. */
export function settingsSavedAt(): number {
  try {
    return Number(localStorage.getItem(AT_KEY)) || 0;
  } catch {
    return 0;
  }
}

export function hasSavedSettings(): boolean {
  try {
    return localStorage.getItem(KEY) !== null;
  } catch {
    return false;
  }
}

export function storeSettings(settings: Partial<Settings>, at: number) {
  try {
    localStorage.setItem(KEY, JSON.stringify(settings));
    localStorage.setItem(AT_KEY, String(at));
  } catch {}
  listeners.forEach((l) => l());
}

export function useSettings(): Settings {
  const [settings, setSettings] = useState(getSettings);
  useEffect(() => {
    const update = () => setSettings(getSettings());
    listeners.add(update);
    return () => void listeners.delete(update);
  }, []);
  return settings;
}
