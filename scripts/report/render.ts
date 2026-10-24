// HTML for practical-work reports (data/reports/<slug>/report.json), turned into PDFs through
// headless Chrome by scripts/report.ts (CLI and admin panel alike, so prints always match).
//
// Pages are A4. Stamps are what gets printed onto a sheet the student already wrote on: a figure,
// a chapter number with its underline, or a line of text, each placed y cm from the sheet's top
// edge, shifted by the printer offset measured with the calibration page. Without an x, figures
// and chapters sit exactly as in the typed report: in the text column, a figure together with the
// one sharing its row.

export type Figure = { file: string; caption: string; width_cm?: number };
export type Chapter = { title: string; html: string };
export type Report = {
  title: string;
  subtitle?: string;
  module: string;
  academic_year: string;
  cover_images?: string[]; // report-relative paths, or "assets/…" for scripts/report/assets
  intro?: string;
  chapters: Chapter[];
  conclusion?: string;
  // Referenced from the HTML as {{fig:id}}, or {{fig:a|b}} for a side-by-side row. Numbered in
  // order of first reference.
  figures: Record<string, Figure>;
  request?: { notes?: string; sources?: string[]; status?: "requested" | "generating" | "ready" | "error"; created_at?: number };
};
export type Settings = { name: string; group: string; offset_x_cm: number; offset_y_cm: number };

export type StampItem =
  | { kind: "figure"; fig: number | string; x?: number; y: number; w?: number; caption?: boolean }
  | { kind: "chapter"; n: number; x?: number; y: number; line?: number; title?: string }
  | { kind: "text"; text: string; x: number; y: number; size?: number };

// Where the page finds its files: URL prefixes (ending in "/") for the report folder and the assets.
export type Urls = { report: string; assets: string };
export type PageOptions = { preview?: boolean };

const esc = (s: string) => s.replaceAll("&", "&amp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll('"', "&quot;");
const pad2 = (n: number) => String(n).padStart(2, "0");
const src = (path: string, urls: Urls) => (path.startsWith("assets/") ? urls.assets + path.slice(7) : urls.report + path);

const FIG_REF = /\{\{fig:([^}]+)\}\}/g;

// The typed report's text column (A4 minus the 2.5 cm left and 2.2 cm right margins).
export const TEXT_LEFT = 2.5;
export const TEXT_WIDTH = 16.3;
export const ROW_GAP = 0.35; // 10 pt between figures sharing a row

// Figures in reading order, numbered from 1, each with the ids of the row it's shown in.
export function numberedFigures(r: Report) {
  const html = [r.intro ?? "", ...r.chapters.map((c) => c.html), r.conclusion ?? ""].join("\n");
  const order: string[] = [];
  const rows = new Map<string, string[]>();
  for (const [, ids] of html.matchAll(FIG_REF)) {
    const row = ids.split("|").map((id) => id.trim());
    for (const id of row) {
      if (order.includes(id)) continue;
      order.push(id);
      rows.set(id, row);
    }
  }
  return order.map((id, i) => {
    const f = r.figures[id];
    if (!f) throw new Error(`{{fig:${id}}} has no entry in "figures"`);
    return { id, n: i + 1, ...f, row: rows.get(id)! };
  });
}

export function findFigure(r: Report, ref: number | string) {
  const all = numberedFigures(r);
  const f = typeof ref === "number" || /^\d+$/.test(String(ref)) ? all.find((x) => x.n === Number(ref)) : all.find((x) => x.id === ref);
  if (!f) throw new Error(`No figure ${ref} (the report has ${all.length})`);
  return f;
}

const BASE_CSS = `
  * { box-sizing: border-box; }
  html { font-family: "Times New Roman", Times, serif; font-size: 12pt; color: #1a1a1a; -webkit-print-color-adjust: exact; print-color-adjust: exact; }
  body { margin: 0; background: #fff; }
  :root { --red: #b3121b; --blue: #1f4e79; --soft: #eef3f8; }
`;

function page(title: string, css: string, body: string, opts: PageOptions) {
  return `<!doctype html><html lang="en"><head><meta charset="utf-8"><title>${esc(title)}</title><style>${BASE_CSS}${css}</style></head><body${
    opts.preview ? ` class="preview"` : ""}>${body}</body></html>`;
}

// --- Cover ---------------------------------------------------------------------------------------

const COVER_CSS = `
  .cover { width: 21cm; height: 29.6cm; padding: 1.4cm 1.6cm; overflow: hidden; display: flex; flex-direction: column; }
  .cover .top { display: flex; align-items: center; gap: 14pt; border-bottom: 3px double var(--blue); padding-bottom: 8pt; }
  .cover .top img { width: 2.6cm; height: auto; }
  .cover .top .inst { flex: 1; text-align: center; font-weight: bold; line-height: 1.45; font-size: 12.5pt; }
  .cover .top .inst .sub { font-size: 11pt; color: #444; font-weight: normal; }
  .cover .module { text-align: center; margin-top: 14pt; font-weight: bold; letter-spacing: .4px; line-height: 1.6; text-transform: uppercase; }
  .cover .titlebox { margin: 16pt 0 6pt; border: 2px solid var(--red); border-left: 10px solid var(--red); padding: 12pt 16pt; text-align: center; }
  .cover .titlebox .t1 { font-size: 18pt; font-weight: bold; line-height: 1.3; }
  .cover .titlebox .t2 { font-size: 14pt; font-style: italic; color: var(--blue); margin-top: 6pt; line-height: 1.35; }
  .cover .collage { display: grid; grid-template-columns: 1.15fr 1fr 1fr; grid-template-rows: 4.1cm 4.1cm; gap: 6pt; margin: 14pt 0; }
  .cover .collage img { width: 100%; height: 100%; object-fit: cover; border-radius: 4px; border: 1px solid #c9d3de; }
  .cover .collage img:first-child { grid-row: span 2; }
  .cover .fields { margin-top: 6pt; font-size: 13pt; font-weight: bold; line-height: 2.3; }
  .cover .fields .v { display: inline-block; min-width: 11cm; border-bottom: 1px dotted #333; margin-left: 6pt; font-weight: normal; padding-left: 4pt; }
  .cover .fields .v.short { min-width: 4cm; }
  .cover .year { margin-top: auto; text-align: right; font-weight: bold; font-size: 13pt; border-top: 1.5px solid var(--blue); padding-top: 6pt; }
  .cover .year .tag { float: left; font-weight: normal; font-style: italic; color: #444; font-size: 12pt; }
`;

function coverSection(r: Report, s: Settings, urls: Urls) {
  const imgs = (r.cover_images ?? []).slice(0, 5).map((p) => `<img src="${esc(src(p, urls))}" alt="">`).join("");
  return `<section class="cover">
  <div class="top">
    <img src="${urls.assets}logo-faculty.jpeg" alt="">
    <div class="inst">BADJI MOKHTAR – ANNABA UNIVERSITY<br>FACULTY OF MEDICINE<br>DEPARTMENT OF MEDICINE<br><span class="sub">First year of Medicine</span></div>
    <img src="${urls.assets}logo-university.jpeg" alt="">
  </div>
  <div class="module">MODULE: ${esc(r.module)}</div>
  <div class="titlebox"><div class="t1">${esc(r.title)}</div>${r.subtitle ? `<div class="t2">${esc(r.subtitle)}</div>` : ""}</div>
  ${imgs ? `<div class="collage">${imgs}</div>` : `<div style="flex:1"></div>`}
  <div class="fields">
    First and Last Name:<span class="v">${esc(s.name)}</span><br>
    Group:<span class="v short">${esc(s.group)}</span>
  </div>
  <div class="year"><span class="tag">Practical work report</span>Academic year: ${esc(r.academic_year)}</div>
</section>`;
}

export function coverPage(r: Report, s: Settings, urls: Urls, opts: PageOptions = {}) {
  return page(`Cover — ${r.title}`, `@page { size: A4; margin: 0; }${COVER_CSS}`, coverSection(r, s, urls), opts);
}

// --- Full typed report ---------------------------------------------------------------------------

const REPORT_CSS = `
  @page { size: A4; margin: 2.2cm 2.2cm 2.2cm 2.5cm;
    @bottom-right { content: counter(page); font-family: "Times New Roman", serif; font-size: 12pt; } }
  /* The cover isn't numbered and doesn't count: numbering starts at 1 on the next page. */
  @page cover { margin: 0; counter-increment: page 0; @bottom-right { content: none; } }
  .cover { page: cover; break-after: page; }
  p, li { text-align: justify; line-height: 1.5; margin: 0 0 6pt; }
  ul { margin: 0 0 6pt; padding-left: 1.3em; }
  h1, h2 { font-size: 14pt; line-height: 1.5; margin: 14pt 0 6pt; break-after: avoid; }
  h1 { color: var(--blue); text-align: center; text-transform: uppercase; letter-spacing: .5px; }
  h2 { color: var(--blue); border-bottom: 1.5px solid var(--blue); padding-bottom: 2pt; }
  h2 .n { display: inline-block; min-width: 1.6em; color: #fff; background: var(--red); text-align: center; border-radius: 3px; margin-right: 6pt; }
  figure { margin: 10pt 0 12pt; text-align: center; break-inside: avoid; }
  figure img { max-width: 100%; }
  figure img.photo { border: 1px solid #c9d3de; }
  figcaption { line-height: 1.5; margin-top: 4pt; text-align: center; }
  figcaption b { color: var(--blue); }
  .figrow { display: flex; gap: 10pt; justify-content: center; align-items: flex-end; margin: 10pt 0 12pt; break-inside: avoid; }
  .figrow figure { flex: 1; margin: 0; }
  table { border-collapse: collapse; width: 100%; margin: 4pt 0 12pt; }
  .tcap { text-align: center; margin: 10pt 0 2pt; break-after: avoid; }
  .tcap b { color: var(--blue); }
  th, td { border: 1px solid #8aa0b6; padding: 4pt 7pt; line-height: 1.35; text-align: left; vertical-align: top; }
  th { background: var(--blue); color: #fff; }
  tr:nth-child(even) td { background: var(--soft); }
  .sw { display: inline-block; width: 10pt; height: 10pt; border: 1px solid #555; vertical-align: -1pt; margin-right: 3pt; }
`;

const isPhoto = (file: string) => !file.endsWith(".svg");

function figureHtml(f: ReturnType<typeof numberedFigures>[number], urls: Urls, caption = true) {
  const w = f.width_cm ? ` style="width:${f.width_cm}cm"` : "";
  return `<figure><img${isPhoto(f.file) ? ` class="photo"` : ""} src="${esc(src(f.file, urls))}"${w} alt="">${
    caption ? `<figcaption><b>Figure ${pad2(f.n)}.</b> ${esc(f.caption)}</figcaption>` : ""}</figure>`;
}

function expandFigures(html: string, figs: ReturnType<typeof numberedFigures>, urls: Urls) {
  return html.replace(FIG_REF, (_, ids: string) => {
    const parts = ids.split("|").map((id) => figureHtml(figs.find((f) => f.id === id.trim())!, urls));
    return parts.length > 1 ? `<div class="figrow">${parts.join("")}</div>` : parts[0];
  });
}

export function reportPage(r: Report, s: Settings, urls: Urls, opts: PageOptions = {}) {
  const figs = numberedFigures(r);
  const x = (html?: string) => expandFigures(html ?? "", figs, urls);
  const body = [
    coverSection(r, s, urls),
    r.intro ? `<h1>Introduction</h1>${x(r.intro)}` : "",
    ...r.chapters.map((c, i) => `<h2><span class="n">${i + 1}</span>${esc(c.title)}</h2>${x(c.html)}`),
    r.conclusion ? `<h1>Conclusion</h1>${x(r.conclusion)}` : "",
  ].join("\n");
  return page(r.title, COVER_CSS + REPORT_CSS, body, opts);
}

// --- Stamps on a handwritten sheet ---------------------------------------------------------------

const SHEET_CSS = `
  @page { size: A4; margin: 0; }
  .sheet { position: relative; width: 21cm; height: 29.7cm; overflow: hidden; }
  .item { position: absolute; }
  .fig img { display: block; width: 100%; }
  .fig img.photo { border: 1px solid #c9d3de; }
  .fig .cap { text-align: center; line-height: 1.4; margin-top: 3pt; }
  .fig .cap b { color: var(--blue); }
  /* Figure rows laid out like the typed report's (same rules as REPORT_CSS, without the margins). */
  .block figure { margin: 0; text-align: center; }
  .block figure img { max-width: 100%; }
  .block figure img.photo { border: 1px solid #c9d3de; }
  .block figcaption { line-height: 1.5; margin-top: 4pt; text-align: center; }
  .block figcaption b { color: var(--blue); }
  .block .figrow { display: flex; gap: 10pt; justify-content: center; align-items: flex-end; }
  .block .figrow figure { flex: 1; }
  .chap { display: flex; align-items: flex-end; gap: .25cm; }
  .chap .n { width: .75cm; height: .75cm; background: var(--red); color: #fff; border-radius: 3px; font-weight: bold; font-size: 14pt;
             display: flex; align-items: center; justify-content: center; }
  .chap .line { border-bottom: 1.5px solid var(--blue); height: .75cm; font-size: 14pt; font-weight: bold; color: var(--blue); line-height: .75cm; padding-left: 2pt; }
  /* On screen only: the sheet with a 1 cm grid, so placements can be checked before printing. */
  @media screen {
    body.preview { background: #9aa3ad; padding: 1cm; }
    body.preview .sheet { margin: 0 auto; background-color: #fff; box-shadow: 0 2px 12px rgba(0,0,0,.35);
      background-image: linear-gradient(#e3e9f0 1px, transparent 1px), linear-gradient(90deg, #e3e9f0 1px, transparent 1px);
      background-size: 1cm 1cm; }
    body.preview .ruler { position: absolute; font: 9px system-ui; color: #7a8796; }
  }
  @media print { .ruler { display: none; } }
`;

// Room left for a chapter's underline: up to the text column's right edge.
export const chapterLine = (x = TEXT_LEFT) => Math.round((TEXT_LEFT + TEXT_WIDTH - x - 1) * 10) / 10;

function stampItem(r: Report, it: StampItem, urls: Urls) {
  const at = `left:${it.x ?? TEXT_LEFT}cm;top:${it.y}cm`;
  if (it.kind === "figure" && it.x === undefined) {
    const all = numberedFigures(r);
    const row = findFigure(r, it.fig).row.map((id) => figureHtml(all.find((f) => f.id === id)!, urls, it.caption !== false));
    return `<div class="item block" style="${at};width:${TEXT_WIDTH}cm">${row.length > 1 ? `<div class="figrow">${row.join("")}</div>` : row[0]}</div>`;
  }
  if (it.kind === "figure") {
    const f = findFigure(r, it.fig);
    const w = it.w ?? f.width_cm ?? 12;
    const cap = it.caption === false ? "" : `<div class="cap"><b>Figure ${pad2(f.n)}.</b> ${esc(f.caption)}</div>`;
    return `<div class="item fig" style="${at};width:${w}cm"><img${isPhoto(f.file) ? ` class="photo"` : ""} src="${esc(src(f.file, urls))}" alt="">${cap}</div>`;
  }
  if (it.kind === "chapter") {
    return `<div class="item chap" style="${at}"><div class="n">${it.n}</div><div class="line" style="width:${it.line ?? chapterLine(it.x)}cm">${esc(it.title ?? "")}</div></div>`;
  }
  return `<div class="item" style="${at};font-size:${it.size ?? 12}pt">${esc(it.text)}</div>`;
}

const rulers = () =>
  Array.from({ length: 21 }, (_, i) => `<span class="ruler" style="left:${i}cm;top:1px">${i}</span>`).join("") +
  Array.from({ length: 30 }, (_, i) => `<span class="ruler" style="top:${i}cm;left:2px">${i}</span>`).join("");

export function stampPage(r: Report, items: StampItem[], s: Settings, urls: Urls, opts: PageOptions = {}) {
  // The offset moves what's printed so it lands where intended on this printer.
  const shift = `transform:translate(${-s.offset_x_cm}cm,${-s.offset_y_cm}cm)`;
  const body = `<div class="sheet">${opts.preview ? rulers() : ""}<div style="position:absolute;inset:0;${opts.preview ? "" : shift}">${
    items.map((it) => stampItem(r, it, urls)).join("")}</div></div>`;
  return page("Print on written sheet", SHEET_CSS, body, opts);
}

// --- Calibration ---------------------------------------------------------------------------------

export const CAL_MARKS: [number, number][] = [[2, 2], [19, 2], [2, 27.7], [19, 27.7], [10.5, 14.85]];

export function calibrationPage() {
  const cross = ([x, y]: [number, number]) =>
    `<div style="position:absolute;left:${x - 0.6}cm;top:${y - 0.6}cm;width:1.2cm;height:1.2cm">
       <div style="position:absolute;left:.6cm;top:0;height:1.2cm;border-left:.4pt solid #000"></div>
       <div style="position:absolute;top:.6cm;left:0;width:1.2cm;border-top:.4pt solid #000"></div>
       <div style="position:absolute;left:.35cm;top:.35cm;width:.5cm;height:.5cm;border:.4pt solid #b3121b;border-radius:50%"></div>
     </div><div style="position:absolute;${x > 15 ? `right:${21 - x + 0.7}cm` : `left:${x + 0.7}cm`};top:${y - 0.15}cm;font-size:9pt;white-space:nowrap">(${x}, ${y}) cm</div>`;
  const ticks = Array.from({ length: 20 }, (_, i) => i + 1)
    .map((i) => `<div style="position:absolute;left:${i}cm;top:0;height:${i % 5 ? 0.3 : 0.6}cm;border-left:.4pt solid #000"></div>`)
    .join("") + Array.from({ length: 29 }, (_, i) => i + 1)
    .map((i) => `<div style="position:absolute;top:${i}cm;left:0;width:${i % 5 ? 0.3 : 0.6}cm;border-top:.4pt solid #000"></div>`)
    .join("");
  const body = `<div class="sheet">${ticks}${CAL_MARKS.map(cross).join("")}
    <div style="position:absolute;left:3.5cm;top:5cm;width:14cm;font-size:12pt;line-height:1.5">
      <div style="font-size:16pt;font-weight:bold;margin-bottom:8pt">↑ TOP OF THE PAGE — printer calibration</div>
      <p>1. Note how you put this sheet in the printer (face up or down, which edge first). Written sheets must go in <b>the same way</b>.</p>
      <p>2. With a ruler, measure from the <b>left edge</b> of the paper to the centre of the top-left cross, then from the <b>top edge</b>.</p>
      <p>3. Offset X = measured − 2 cm, Offset Y = measured − 2 cm (e.g. 2.3 cm → 0.3). Enter them in the admin panel (Reports → Printer).</p>
      <p>4. Check the other crosses: if they're off by different amounts, the print was scaled — print at <b>100% / Actual size</b>, never "Fit to page".</p>
    </div></div>`;
  return page("Printer calibration", SHEET_CSS, body, {});
}
