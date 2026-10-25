// Keyboard shortcuts for the study and exam screens. Hints only show with a mouse or trackpad
// (see .hint in styles.css), so phones don't get them.

/** Whether a page-wide shortcut should leave this key alone: browser shortcuts, typing, links. */
export function ignoreKey(e: KeyboardEvent): boolean {
  if (e.metaKey || e.ctrlKey || e.altKey || e.repeat) return true;
  const t = e.target as HTMLElement | null;
  if (!t) return false;
  if (t.isContentEditable || ["INPUT", "TEXTAREA", "SELECT"].includes(t.tagName)) return true;
  return t.tagName === "A" && e.key === "Enter";
}

/** A key hint shown inside a button on desktop. */
export const Kbd = ({ children }: { children: string }) => <kbd className="hint">{children}</kbd>;
