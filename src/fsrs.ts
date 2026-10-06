import { createEmptyCard, fsrs, type Card } from "ts-fsrs";
import type { CardRow } from "../shared/types";

export const scheduler = fsrs();

export const toCard = (row: CardRow | null): Card =>
  row
    ? {
        ...row,
        due: new Date(row.due),
        last_review: row.last_review == null ? undefined : new Date(row.last_review),
      }
    : createEmptyCard();

export const toRow = (card: Card): CardRow => ({
  due: card.due.getTime(),
  stability: card.stability,
  difficulty: card.difficulty,
  elapsed_days: card.elapsed_days,
  scheduled_days: card.scheduled_days,
  learning_steps: card.learning_steps,
  reps: card.reps,
  lapses: card.lapses,
  state: card.state,
  last_review: card.last_review?.getTime() ?? null,
});

export function formatInterval(from: Date, to: Date): string {
  const mins = Math.max(1, Math.round((to.getTime() - from.getTime()) / 60_000));
  if (mins < 60) return `${mins}m`;
  const hours = Math.round(mins / 60);
  if (hours < 24) return `${hours}h`;
  const days = Math.round(hours / 24);
  if (days < 30) return `${days}d`;
  const months = Math.round(days / 30);
  return months < 12 ? `${months}mo` : `${(days / 365).toFixed(1)}y`;
}
