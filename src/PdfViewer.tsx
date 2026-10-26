// Lesson PDFs drawn by pdf.js, for touch screens: phones and tablets can't show a PDF in a frame
// (iOS shows page 1 only, Android nothing), and opening it in the browser leaves the app, which
// doesn't work offline. Pages are drawn as they scroll near and cleared once far away.
import { useEffect, useRef, useState } from "react";
import type { PDFDocumentLoadingTask, PDFDocumentProxy, RenderTask } from "pdfjs-dist";

type Size = { width: number; height: number };

async function load(url: string): Promise<PDFDocumentLoadingTask> {
  const [pdfjs, worker] = await Promise.all([import("pdfjs-dist"), import("pdfjs-dist/build/pdf.worker.min.mjs?url")]);
  pdfjs.GlobalWorkerOptions.workerSrc = worker.default;
  // Fetched whole (no range requests) so the service worker serves and keeps the file.
  const res = await fetch(url);
  if (!res.ok) throw new Error(navigator.onLine ? "Couldn't load the PDF" : "This PDF hasn't been downloaded for offline use yet");
  return pdfjs.getDocument({ data: new Uint8Array(await res.arrayBuffer()) });
}

export default function PdfViewer({ url, page, title }: { url: string; page?: number; title: string }) {
  const box = useRef<HTMLDivElement>(null);
  const [doc, setDoc] = useState<PDFDocumentProxy | null>(null);
  const [sizes, setSizes] = useState<Size[]>([]);
  const [width, setWidth] = useState(0);
  const [error, setError] = useState<string | null>(null);

  useEffect(() => {
    let cancelled = false;
    let task = null as PDFDocumentLoadingTask | null;
    setDoc(null);
    setError(null);
    load(url)
      .then(async (t) => {
        task = t;
        if (cancelled) return;
        const d = await t.promise;
        const pages = await Promise.all(Array.from({ length: d.numPages }, (_, i) => d.getPage(i + 1)));
        if (cancelled) return;
        setSizes(pages.map((p) => p.getViewport({ scale: 1 })));
        setDoc(d);
      })
      .catch((e: Error) => !cancelled && setError(e.message));
    return () => {
      cancelled = true;
      void task?.destroy();
    };
  }, [url]);

  useEffect(() => {
    const el = box.current;
    if (!el) return;
    const observer = new ResizeObserver(() => setWidth(el.clientWidth));
    observer.observe(el);
    return () => observer.disconnect();
  }, []);

  // Jump to the page a summary link points at.
  useEffect(() => {
    if (doc && page && width) box.current?.querySelector(`[data-page="${page}"]`)?.scrollIntoView();
  }, [doc, page, width]);

  return (
    <div className="pdf-view" ref={box} role="document" aria-label={title}>
      {error && <p className="error">{error}</p>}
      {!error && !doc && <p className="meta">Loading PDF…</p>}
      {doc && width > 0 && sizes.map((size, i) => <PdfPage key={i} doc={doc} n={i + 1} size={size} width={width} />)}
    </div>
  );
}

function PdfPage({ doc, n, size, width }: { doc: PDFDocumentProxy; n: number; size: Size; width: number }) {
  const canvas = useRef<HTMLCanvasElement>(null);
  const [near, setNear] = useState(false);
  const height = Math.round((width * size.height) / size.width);

  useEffect(() => {
    const el = canvas.current;
    if (!el) return;
    const observer = new IntersectionObserver(([entry]) => setNear(entry.isIntersecting), { rootMargin: "150% 0px" });
    observer.observe(el);
    return () => observer.disconnect();
  }, []);

  useEffect(() => {
    const el = canvas.current;
    if (!el) return;
    if (!near) {
      el.width = el.height = 0; // frees the memory of pages scrolled far away
      return;
    }
    let task: RenderTask | null = null;
    let cancelled = false;
    void doc.getPage(n).then((p) => {
      if (cancelled) return;
      // Sharp at the screen's pixel density, and a little beyond for pinch-zooming.
      const scale = (width / size.width) * Math.min(3, (window.devicePixelRatio || 1) * 1.5);
      const viewport = p.getViewport({ scale });
      el.width = Math.floor(viewport.width);
      el.height = Math.floor(viewport.height);
      task = p.render({ canvas: el, viewport });
      task.promise.catch(() => {});
    });
    return () => {
      cancelled = true;
      task?.cancel();
    };
  }, [doc, n, near, width, size.width]);

  return <canvas ref={canvas} data-page={n} className="pdf-page" style={{ width, height }} />;
}
