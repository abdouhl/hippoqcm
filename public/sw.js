// Offline support. The app shell and static files are served from cache; /api is left to the
// page, which falls back to its own offline snapshot (src/api.ts).
const CACHE = "hippoqcm-v1";
const STATIC = /^\/(assets|images|lessons)\/|^\/[^/]+\.(svg|png|webmanifest)$/;

self.addEventListener("install", (event) => {
  event.waitUntil(
    (async () => {
      const cache = await caches.open(CACHE);
      const res = await fetch("/", { cache: "no-cache" });
      const html = await res.clone().text();
      await cache.put("/", res);
      // The built page links its hashed JS/CSS; cache them now so the first offline launch works.
      const linked = [...html.matchAll(/(?:src|href)="(\/[^"]+)"/g)].map((m) => m[1]);
      await cache.addAll([...new Set(linked)]);
      await self.skipWaiting();
    })(),
  );
});

self.addEventListener("activate", (event) => {
  event.waitUntil(
    (async () => {
      for (const key of await caches.keys()) if (key !== CACHE) await caches.delete(key);
      await self.clients.claim();
    })(),
  );
});

self.addEventListener("fetch", (event) => {
  const { request } = event;
  const url = new URL(request.url);
  if (request.method !== "GET" || url.origin !== self.location.origin || url.pathname.startsWith("/api/")) return;

  if (STATIC.test(url.pathname)) {
    event.respondWith(cacheFirst(request));
  } else if (request.mode === "navigate") {
    event.respondWith(shell(request));
  }
});

// Static files never change under the same URL (built assets are hashed), so cache wins.
async function cacheFirst(request) {
  const cache = await caches.open(CACHE);
  const hit = await cache.match(request, { ignoreSearch: true });
  if (hit) return hit;
  const res = await fetch(request);
  if (res.ok && res.status === 200) await cache.put(request, res.clone());
  return res;
}

// Every page is the same SPA shell: try the network (for fresh deploys), else the cached copy.
async function shell(request) {
  const cache = await caches.open(CACHE);
  try {
    const res = await Promise.race([
      fetch(request),
      new Promise((_, reject) => setTimeout(() => reject(new Error("timeout")), 4000)),
    ]);
    if (res.ok) await cache.put("/", res.clone());
    return res;
  } catch {
    return (await cache.match("/")) ?? Response.error();
  }
}

// The page sends the images and PDFs its offline snapshot refers to; fetch the missing ones.
self.addEventListener("message", (event) => {
  if (event.data?.type !== "cache") return;
  event.waitUntil(
    (async () => {
      const cache = await caches.open(CACHE);
      for (const url of event.data.urls) {
        if (await cache.match(url)) continue;
        try {
          await cache.add(url);
        } catch {}
      }
    })(),
  );
});
