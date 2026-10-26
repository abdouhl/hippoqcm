// Small pieces shared by every screen: the screen header, loading placeholders, a progress ring,
// screen transitions, haptics, the colour theme and media queries.
import { useEffect, useState, type ReactNode } from "react";
import { flushSync } from "react-dom";
import { Icon } from "./icons";

/** Sticky header of a screen below the tabs: a back button on the left, anything on the right. */
export function ScreenHeader({ backLabel, onBack, children }: { backLabel: string; onBack: () => void; children?: ReactNode }) {
  return (
    <header className="study-header">
      <button className="link back" onClick={onBack}>
        <Icon name="back" size={20} /> {backLabel}
      </button>
      {children}
    </header>
  );
}

/** Grey placeholder blocks in the shape of what's loading, instead of "Loading…". */
export function Skeleton({ kind = "list" }: { kind?: "list" | "question" | "cards" }) {
  if (kind === "question") {
    return (
      <div className="skeleton-wrap" aria-busy="true" aria-label="Loading">
        <div className="question">
          <span className="skeleton line short" />
          <span className="skeleton line" />
          <span className="skeleton line mid" />
          {[0, 1, 2, 3].map((i) => <span key={i} className="skeleton option-block" />)}
        </div>
      </div>
    );
  }
  return (
    <div className={`skeleton-wrap ${kind}`} aria-busy="true" aria-label="Loading">
      {kind === "cards" && <span className="skeleton hero-block" />}
      {[0, 1, 2, 3, 4].map((i) => <span key={i} className="skeleton row-block" />)}
    </div>
  );
}

/** A ring filled to `value` (0–1), with its label in the middle. */
export function Ring({ value, size = 44, stroke = 4, tone, children }: {
  value: number;
  size?: number;
  stroke?: number;
  tone?: "ok" | "mid" | "bad";
  children?: ReactNode;
}) {
  const r = (size - stroke) / 2;
  const c = 2 * Math.PI * r;
  const v = Math.max(0, Math.min(1, value));
  return (
    <span className={tone ? `ring ${tone}` : "ring"} style={{ width: size, height: size }}>
      <svg width={size} height={size} viewBox={`0 0 ${size} ${size}`} aria-hidden="true">
        <circle className="ring-track" cx={size / 2} cy={size / 2} r={r} strokeWidth={stroke} />
        <circle
          className="ring-fill"
          cx={size / 2}
          cy={size / 2}
          r={r}
          strokeWidth={stroke}
          strokeDasharray={c}
          strokeDashoffset={c * (1 - v)}
          transform={`rotate(-90 ${size / 2} ${size / 2})`}
        />
      </svg>
      {children != null && <span className="ring-label">{children}</span>}
    </span>
  );
}

export const accuracyTone = (pct: number) => (pct < 60 ? "bad" : pct < 80 ? "mid" : "ok");

const reducedMotion = () => matchMedia("(prefers-reduced-motion: reduce)").matches;

/**
 * Run a screen change as a view transition: `forward` slides in from the right, `back` from the left,
 * `tab` cross-fades. Browsers without the API, and reduced motion, just switch.
 */
export function transition(update: () => void, nav: "forward" | "back" | "tab") {
  const doc = document as Document & { startViewTransition?: (cb: () => void) => unknown };
  if (!doc.startViewTransition || reducedMotion()) return update();
  document.documentElement.dataset.nav = nav;
  doc.startViewTransition(() => flushSync(update));
}

/** A short vibration on phones that support it (Android); nothing elsewhere. */
export function haptic(pattern: number | number[]) {
  try {
    if (!reducedMotion()) navigator.vibrate?.(pattern);
  } catch {}
}

export function useMedia(query: string): boolean {
  const [matches, setMatches] = useState(() => matchMedia(query).matches);
  useEffect(() => {
    const list = matchMedia(query);
    const change = () => setMatches(list.matches);
    change();
    list.addEventListener("change", change);
    return () => list.removeEventListener("change", change);
  }, [query]);
  return matches;
}

export const PHONE = "(max-width: 720px)";

/** Running as the installed app rather than in a browser tab. */
export const standalone = () =>
  matchMedia("(display-mode: standalone)").matches || (navigator as Navigator & { standalone?: boolean }).standalone === true;

// ---- Theme -----------------------------------------------------------------------------------
// Per device, not synced: one phone may live in dark mode while a laptop doesn't. index.html applies
// it before the first paint so there's no flash.

export type Theme = "auto" | "light" | "dark";
const THEME_KEY = "hippoqcm.theme";
const themeListeners = new Set<() => void>();

export function getTheme(): Theme {
  try {
    const t = localStorage.getItem(THEME_KEY);
    return t === "light" || t === "dark" ? t : "auto";
  } catch {
    return "auto";
  }
}

export function setTheme(theme: Theme) {
  try {
    if (theme === "auto") localStorage.removeItem(THEME_KEY);
    else localStorage.setItem(THEME_KEY, theme);
  } catch {}
  if (theme === "auto") delete document.documentElement.dataset.theme;
  else document.documentElement.dataset.theme = theme;
  // The status bar follows the chosen theme, not the system's.
  document.querySelectorAll<HTMLMetaElement>('meta[name="theme-color"]').forEach((meta) => {
    const dark = theme === "dark" || (theme === "auto" && meta.media.includes("dark"));
    meta.content = dark ? "#060e1a" : "#f2f5fa";
  });
  themeListeners.forEach((l) => l());
}

export function useTheme(): Theme {
  const [theme, set] = useState(getTheme);
  useEffect(() => {
    const update = () => set(getTheme());
    themeListeners.add(update);
    return () => void themeListeners.delete(update);
  }, []);
  return theme;
}
