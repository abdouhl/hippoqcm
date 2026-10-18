// Study preferences, kept on this device.
import { useEffect, useState } from "react";

export type Settings = {
  newPerDay: number; // new questions per module per day
  reviewsPerDay: number; // reviews per module per day, 0 = no limit
  order: "mixed" | "reviews-first" | "new-first"; // where new questions go in a session
  shuffleOptions: boolean;
};

export const DEFAULTS: Settings = { newPerDay: 20, reviewsPerDay: 0, order: "mixed", shuffleOptions: true };

const KEY = "hippoqcm.settings";
const listeners = new Set<() => void>();

export function getSettings(): Settings {
  try {
    return { ...DEFAULTS, ...(JSON.parse(localStorage.getItem(KEY) ?? "{}") as Partial<Settings>) };
  } catch {
    return DEFAULTS;
  }
}

export function saveSettings(settings: Settings) {
  try {
    localStorage.setItem(KEY, JSON.stringify(settings));
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
