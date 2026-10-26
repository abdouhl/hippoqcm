import { useState } from "react";
import { syncNow, useSyncStatus } from "./api";
import { Icon } from "./icons";

// "just now", "5 min ago", "3 h ago", "2 d ago".
function ago(ms: number): string {
  const min = Math.floor((Date.now() - ms) / 60_000);
  if (min < 1) return "just now";
  if (min < 60) return `${min} min ago`;
  if (min < 60 * 24) return `${Math.floor(min / 60)} h ago`;
  return `${Math.floor(min / 60 / 24)} d ago`;
}

// Sync state; tap to sync now. Shows when the app is offline or has reviews waiting to sync.
export function SyncBadge() {
  const { online, pending, snapshotAt } = useSyncStatus();
  const [syncing, setSyncing] = useState(false);
  const sync = async () => {
    setSyncing(true);
    await syncNow();
    setSyncing(false);
  };
  if (syncing) {
    return <span className="sync"><Icon name="refresh" size={14} className="spin" /> Syncing…</span>;
  }
  if (online && pending === 0) {
    return snapshotAt ? (
      <button className="sync ok" title="Saved for offline study. Tap to sync now" onClick={sync}>
        <Icon name="cloud" size={14} /> Synced {ago(snapshotAt)}
      </button>
    ) : null;
  }
  return (
    <button className="sync off" title="Tap to sync now" onClick={sync}>
      <Icon name={online ? "refresh" : "cloudOff"} size={14} />
      {online ? "Syncing" : "Offline"}
      {pending > 0 && ` · ${pending} to sync`}
    </button>
  );
}
