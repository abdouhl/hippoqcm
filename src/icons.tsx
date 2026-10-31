// One line-icon set for the whole app (24×24, drawn with currentColor), instead of emoji that render
// differently on every phone.
import type { ReactNode } from "react";

const PATHS = {
  today: <><path d="M3 10.5 12 3l9 7.5" /><path d="M5 9.5V20a1 1 0 0 0 1 1h4v-6h4v6h4a1 1 0 0 0 1-1V9.5" /></>,
  decks: <><path d="m12 3 9 5-9 5-9-5z" /><path d="m3 12.5 9 5 9-5" /><path d="m3 17 9 5 9-5" /></>,
  insights: <><path d="M3 21h18" /><path d="M6 17v-5" /><path d="M12 17V5" /><path d="M18 17V9" /></>,
  settings: <><path d="M4 6h10M18 6h2M4 12h4M12 12h8M4 18h12" /><circle cx="16" cy="6" r="2" /><circle cx="10" cy="12" r="2" /><circle cx="18" cy="18" r="2" /></>,
  flag: <><path d="M5 21V4" /><path d="M5 4h12l-2.5 4.5L17 13H5" /></>,
  file: <><path d="M14 3H7a2 2 0 0 0-2 2v14a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2V8z" /><path d="M14 3v5h5" /><path d="M9 13h6M9 17h4" /></>,
  pencil: <><path d="M17 3.5a2.1 2.1 0 0 1 3 3L7.5 19 3 20.5 4.5 16z" /><path d="m15 5.5 3 3" /></>,
  book: <><path d="M4 19V5.5A2.5 2.5 0 0 1 6.5 3H20v14H6.5A2.5 2.5 0 0 0 4 19.5 2.5 2.5 0 0 0 6.5 22H20v-5" /></>,
  timer: <><circle cx="12" cy="13" r="8" /><path d="M12 9v4l2.5 2.5" /><path d="M10 2h4" /></>,
  key: <><circle cx="7.5" cy="15.5" r="4.5" /><path d="m10.7 12.3 9.8-9.8" /><path d="m16 7 3 3" /><path d="m18.5 4.5 2 2" /></>,
  check: <path d="M20 6 9 17l-5-5" />,
  x: <path d="M18 6 6 18M6 6l12 12" />,
  back: <path d="m15 18-6-6 6-6" />,
  next: <path d="m9 18 6-6-6-6" />,
  down: <path d="m6 9 6 6 6-6" />,
  plus: <path d="M12 5v14M5 12h14" />,
  minus: <path d="M5 12h14" />,
  flame: <path d="M12 22c4 0 7-2.8 7-7 0-3.6-2.4-6.4-4.4-8.4-.4 2.2-1.5 3.6-3 4.4.2-3-1.3-6-3.6-8.5.3 4.4-3 7-3 12.5 0 4.2 3 7 7 7z" />,
  calendar: <><rect x="3" y="5" width="18" height="16" rx="2" /><path d="M3 10h18M8 3v4M16 3v4" /></>,
  play: <path d="M7 4.5v15a.5.5 0 0 0 .8.4l11.5-7.5a.5.5 0 0 0 0-.8L7.8 4.1a.5.5 0 0 0-.8.4z" />,
  cloud: <path d="M17.5 19a4.5 4.5 0 1 0-1.3-8.8A6 6 0 0 0 4.6 12.2 3.5 3.5 0 0 0 6 19z" />,
  cloudOff: <><path d="M17.5 19a4.5 4.5 0 0 0 2.9-7.9M14 7.2A6 6 0 0 0 4.6 12.2 3.5 3.5 0 0 0 6 19h11" /><path d="m3 3 18 18" /></>,
  refresh: <><path d="M21 12a9 9 0 1 1-2.6-6.4L21 8" /><path d="M21 3v5h-5" /></>,
  download: <><path d="M12 3v12" /><path d="m7 10 5 5 5-5" /><path d="M5 21h14" /></>,
  external: <><path d="M14 4h6v6" /><path d="M20 4 10 14" /><path d="M19 14v5a1 1 0 0 1-1 1H5a1 1 0 0 1-1-1V6a1 1 0 0 1 1-1h5" /></>,
  undo: <><path d="M9 14 4 9l5-5" /><path d="M4 9h11a5 5 0 0 1 0 10h-3" /></>,
  sun: <><circle cx="12" cy="12" r="4" /><path d="M12 2v2M12 20v2M4.9 4.9l1.4 1.4M17.7 17.7l1.4 1.4M2 12h2M20 12h2M4.9 19.1l1.4-1.4M17.7 6.3l1.4-1.4" /></>,
  moon: <path d="M20 14.5A8 8 0 1 1 9.5 4a6.5 6.5 0 0 0 10.5 10.5z" />,
  auto: <><rect x="3" y="4" width="18" height="12" rx="2" /><path d="M8 20h8M12 16v4" /></>,
  share: <><path d="M12 3v13" /><path d="m7 8 5-5 5 5" /><path d="M5 12v7a2 2 0 0 0 2 2h10a2 2 0 0 0 2-2v-7" /></>,
  copy: <><rect x="8" y="8" width="13" height="13" rx="2" /><path d="M16 8V5a2 2 0 0 0-2-2H5a2 2 0 0 0-2 2v9a2 2 0 0 0 2 2h3" /></>,
  alert: <><path d="M10.3 3.9 2.4 18a2 2 0 0 0 1.7 3h15.8a2 2 0 0 0 1.7-3L13.7 3.9a2 2 0 0 0-3.4 0z" /><path d="M12 9v4M12 17h.01" /></>,
  target: <><circle cx="12" cy="12" r="9" /><circle cx="12" cy="12" r="5" /><circle cx="12" cy="12" r="1" /></>,
  info: <><circle cx="12" cy="12" r="9" /><path d="M12 11v5M12 8h.01" /></>,
} satisfies Record<string, ReactNode>;

export type IconName = keyof typeof PATHS;

export function Icon({ name, size = 18, className }: { name: IconName; size?: number; className?: string }) {
  return (
    <svg
      className={className ? `icon ${className}` : "icon"}
      width={size}
      height={size}
      viewBox="0 0 24 24"
      fill="none"
      stroke="currentColor"
      strokeWidth={2}
      strokeLinecap="round"
      strokeLinejoin="round"
      aria-hidden="true"
    >
      {PATHS[name]}
    </svg>
  );
}
