// Downloads for offline use: lesson PDFs, summaries (with their figures) and question images.
// Each file is fetched through the service worker, which keeps it (public/sw.js); files it already
// has are skipped. Progress is shown in Settings.
import { useEffect, useState } from "react";

const PARALLEL = 4;
const MATCH = { ignoreSearch: true, ignoreVary: true };

export type DownloadStatus = {
  running: boolean;
  done: number; // files available offline, of `total`
  total: number;
  failed: string[];
  checkedAt: number | null; // when a pass last finished
};

let state: DownloadStatus = { running: false, done: 0, total: 0, failed: [], checkedAt: null };
let pass: Promise<void> | null = null;
let queued: string[] | null = null;
const listeners = new Set<() => void>();
const update = (patch: Partial<DownloadStatus>) => {
  state = { ...state, ...patch };
  listeners.forEach((l) => l());
};

export function useDownloadStatus(): DownloadStatus {
  const [s, setS] = useState(state);
  useEffect(() => {
    const listener = () => setS(state);
    listeners.add(listener);
    listener();
    return () => void listeners.delete(listener);
  }, []);
  return s;
}

// Fetching only fills the cache once the service worker controls the page (not on the very first visit).
async function controlled(): Promise<boolean> {
  const sw = navigator.serviceWorker;
  if (!import.meta.env.PROD || !sw || !window.caches) return false;
  if (sw.controller) return true;
  await sw.ready;
  if (!sw.controller) await new Promise((resolve) => sw.addEventListener("controllerchange", resolve, { once: true }));
  return true;
}

/** Make every one of these files (and the figures summaries show) available offline. */
export function downloadFiles(urls: string[]): Promise<void> {
  if (pass) {
    // One pass at a time; the newest list runs next.
    queued = urls;
    return pass;
  }
  return (pass = (async () => {
    try {
      if (!(await controlled())) return;
      await run(urls);
    } finally {
      pass = null;
      const next = queued;
      queued = null;
      if (next) void downloadFiles(next);
    }
  })());
}

/** Try the files that failed last time again. */
export const retryDownloads = () => downloadFiles(lastUrls);
let lastUrls: string[] = [];

async function run(urls: string[]) {
  lastUrls = urls;
  const todo = [...new Set(urls)];
  const seen = new Set(todo);
  const failed: string[] = [];
  let done = 0;
  update({ running: true, done, total: todo.length, failed });

  const one = async (url: string) => {
    let res = await caches.match(url, MATCH);
    if (!res) {
      res = await fetch(url, { signal: AbortSignal.timeout(60_000) });
      // A missing file is answered with the app's page: that's not the file.
      if (!res.ok || (!url.endsWith(".html") && res.headers.get("content-type")?.includes("text/html"))) {
        throw new Error(String(res.status));
      }
    }
    if (url.endsWith(".html")) {
      // A summary page shows its own stylesheet and figures.
      const html = await res.text();
      for (const [, ref] of html.matchAll(/(?:src|href)="([^"#:]+\.(?:css|jpe?g|png|webp|svg))"/g)) {
        const asset = new URL(ref, new URL(url, location.origin)).pathname;
        if (!seen.has(asset)) {
          seen.add(asset);
          todo.push(asset);
          update({ total: todo.length });
        }
      }
    } else {
      await res.body?.cancel();
    }
  };

  let next = 0;
  const worker = async () => {
    while (next < todo.length) {
      const url = todo[next++];
      try {
        await one(url);
        done++;
      } catch {
        failed.push(url);
      }
      update({ done, failed: [...failed] });
    }
  };
  await Promise.all(Array.from({ length: PARALLEL }, worker));
  update({ running: false, checkedAt: Date.now() });
}
