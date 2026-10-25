// Offline support. The app shell and static files are served from cache; /api is left to the
// page, which falls back to its own offline snapshot (src/api.ts).
// Bump when files change under the same URL (lesson PDFs are cached for good); see activate.
const CACHE = "hippoqcm-v3";
// Hashed build output, and lesson files that are fetched once and kept.
const STATIC = /^\/(assets|images|lessons)\/|^\/summaries\/.+\.(jpe?g|png|webp|svg)$|^\/[^/]+\.(svg|png|webmanifest)$/;
// Summary pages and their index can be rewritten under the same URL: show the cached copy, refresh it.
const SUMMARY = /^\/summaries\/.+\.(html|css|json)$/;

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
      const old = (await caches.keys()).filter((key) => key !== CACHE);
      // Keep the images already downloaded instead of fetching them all again. Lesson PDFs are
      // fetched anew: v3 replaced the anatomy PDFs (English notes only) under the same URLs.
      if (old.length > 0) {
        const cache = await caches.open(CACHE);
        for (const key of old) {
          const prev = await caches.open(key);
          for (const req of await prev.keys()) {
            const path = new URL(req.url).pathname;
            if (path.startsWith("/images/") && !(await cache.match(req))) {
              const res = await prev.match(req);
              if (res && cacheable(res, path)) await cache.put(req, res);
            }
          }
          await caches.delete(key);
        }
      }
      await self.clients.claim();
    })(),
  );
});

self.addEventListener("fetch", (event) => {
  const { request } = event;
  const url = new URL(request.url);
  if (request.method !== "GET" || url.origin !== self.location.origin || url.pathname.startsWith("/api/")) return;

  // Checked before navigations: summaries and PDFs load in an iframe, which is a navigation too.
  if (STATIC.test(url.pathname)) {
    event.respondWith(cacheFirst(request));
  } else if (SUMMARY.test(url.pathname)) {
    event.respondWith(staleWhileRevalidate(request, event));
  } else if (request.mode === "navigate") {
    event.respondWith(shell(request));
  }
});

// Cloudflare sends `Vary: Origin`, and module scripts are requested with an Origin header, so
// lookups ignore Vary or the app's own JS misses the cache offline.
const MATCH = { ignoreSearch: true, ignoreVary: true };

// A missing file is answered with the app's page (single-page-application fallback) and a 200:
// never keep that under a PDF's or image's URL, or the lesson shows the app's 404 for good.
function cacheable(res, path) {
  if (!res.ok || res.status !== 200) return false;
  return path.endsWith(".html") || !res.headers.get("content-type")?.includes("text/html");
}

async function put(cache, request, res) {
  const path = new URL(request.url ?? request, self.location.origin).pathname;
  if (cacheable(res, path)) await cache.put(request, res.clone());
}

// Static files never change under the same URL (built assets are hashed), so cache wins.
async function cacheFirst(request) {
  const cache = await caches.open(CACHE);
  const hit = await cache.match(request, MATCH);
  if (hit) return hit;
  const res = await fetch(request);
  await put(cache, request, res);
  return res;
}

async function staleWhileRevalidate(request, event) {
  const cache = await caches.open(CACHE);
  const hit = await cache.match(request, MATCH);
  const update = fetch(request).then(async (res) => {
    await put(cache, request, res);
    return res;
  });
  if (hit) {
    event.waitUntil(update.catch(() => {}));
    return hit;
  }
  return update;
}

// Every page is the same SPA shell: try the network (for fresh deploys), else the cached copy.
async function shell(request) {
  const cache = await caches.open(CACHE);
  try {
    const res = await Promise.race([
      fetch(request),
      new Promise((_, reject) => setTimeout(() => reject(new Error("timeout")), 4000)),
    ]);
    // Only the app's own page may become the cached shell.
    if (res.ok && (await isShell(res.clone()))) await cache.put("/", res.clone());
    return res;
  } catch {
    return (await cache.match("/", MATCH)) ?? Response.error();
  }
}

async function isShell(res) {
  if (!res.headers.get("content-type")?.includes("text/html")) return false;
  return (await res.text()).includes('<div id="root">');
}

// The page sends the images, PDFs and summaries its offline snapshot refers to; fetch the missing ones.
self.addEventListener("message", (event) => {
  if (event.data?.type !== "cache") return;
  event.waitUntil(
    (async () => {
      const cache = await caches.open(CACHE);
      for (const url of event.data.urls) {
        try {
          if (!(await cache.match(url, MATCH))) await put(cache, url, await fetch(url));
          // A summary page shows figures and a stylesheet of its own.
          const page = url.endsWith(".html") && (await cache.match(url, MATCH));
          if (page) {
            const html = await page.text();
            for (const [, ref] of html.matchAll(/(?:src|href)="([^"#:]+\.(?:css|jpe?g|png|webp|svg))"/g)) {
              const asset = new URL(ref, new URL(url, self.location.origin)).pathname;
              if (asset.startsWith("/summaries/") && !(await cache.match(asset, MATCH))) await put(cache, asset, await fetch(asset));
            }
          }
        } catch {}
      }
    })(),
  );
});
