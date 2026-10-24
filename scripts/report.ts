// Practical-work reports for the /report skill. A report lives in data/reports/<slug>/report.json
// (format in scripts/report/render.ts) with its figures/ and sources/; the student's name, group and
// printer offset are in data/reports/settings.json.
//
// Usage:
//   bun scripts/report.ts list
//   bun scripts/report.ts build <slug> [out.pdf]            full typed report (cover + text + figures)
//   bun scripts/report.ts figures <slug>                    figure numbers, ids and captions
//   bun scripts/report.ts print <slug> cover                cover with name and group, to print on blank paper
//   bun scripts/report.ts print <slug> <item>...            stamps for a handwritten sheet, e.g.
//        fig 3 y=12 [nocap]                                 figure 3 as in the typed report (with its row partner), top at 12 cm
//        fig 3 x=2 y=12 [w=9]                               …or alone, top-left corner at (2, 12) cm, 9 cm wide
//        chapter 6 y=4 [x=2] [line=14] [title="…"]          red number box + underline to write the title on
//        text "Page 3" x=18 y=28 [size=12]
//   bun scripts/report.ts calibrate                         calibration sheet for the printer offset
//   bun scripts/report.ts settings [name=…] [group=…] [dx=…] [dy=…]
// print/calibrate write a PDF under data/reports/<slug>/print/ and open it in Preview (--no-open to skip).

import { existsSync, mkdirSync, readFileSync, readdirSync } from "node:fs";
import { resolve } from "node:path";
import {
  calibrationPage, chapterLine, coverPage, findFigure, numberedFigures, reportPage, ROW_GAP, stampPage, TEXT_LEFT, TEXT_WIDTH,
  type Report, type Settings, type StampItem, type Urls,
} from "./report/render";

const ROOT = "data/reports";
const SETTINGS = `${ROOT}/settings.json`;
const CHROME = "/Applications/Google Chrome.app/Contents/MacOS/Google Chrome";

export const readSettings = async (): Promise<Settings> =>
  existsSync(SETTINGS) ? Bun.file(SETTINGS).json() : { name: "", group: "", offset_x_cm: 0, offset_y_cm: 0 };

export async function readReport(slug: string): Promise<Report> {
  const path = `${ROOT}/${slug}/report.json`;
  if (!existsSync(path)) throw new Error(`No report ${path}`);
  return Bun.file(path).json();
}

export const fileUrls = (slug: string): Urls => ({
  report: `file://${resolve(ROOT, slug)}/`,
  assets: `file://${resolve("scripts/report/assets")}/`,
});

export async function toPdf(html: string, out: string) {
  const tmp = out.replace(/\.pdf$/, ".html");
  await Bun.write(tmp, html);
  const proc = Bun.spawn([CHROME, "--headless", "--disable-gpu", "--no-pdf-header-footer", "--allow-file-access-from-files", `--print-to-pdf=${resolve(out)}`, `file://${resolve(tmp)}`], {
    stdout: "ignore",
    stderr: "pipe",
  });
  if ((await proc.exited) !== 0 || !existsSync(out)) throw new Error(`Chrome failed: ${(await new Response(proc.stderr).text()).slice(-400)}`);
  return out;
}

// Pixel size of a figure file (SVG viewBox, PNG or JPEG header), to know how much room it takes.
export function imageSize(path: string): { w: number; h: number } | null {
  const b = readFileSync(path);
  if (path.endsWith(".svg")) {
    const m = b.toString("utf8").match(/viewBox="[\d.\-]+ [\d.\-]+ ([\d.]+) ([\d.]+)"/);
    return m ? { w: Number(m[1]), h: Number(m[2]) } : null;
  }
  if (b[0] === 0x89 && b[1] === 0x50) return { w: b.readUInt32BE(16), h: b.readUInt32BE(20) };
  for (let i = 2; i < b.length - 9; ) {
    if (b[i] !== 0xff) return null;
    const marker = b[i + 1];
    if (marker >= 0xc0 && marker <= 0xcf && ![0xc4, 0xc8, 0xcc].includes(marker)) return { w: b.readUInt16BE(i + 7), h: b.readUInt16BE(i + 5) };
    i += 2 + b.readUInt16BE(i + 2);
  }
  return null;
}

// Height in cm a figure takes when printed w cm wide, its caption wrapping at capW cm: image plus
// an estimated caption (12 pt Times ≈ 0.19 cm per character, 0.64 cm per line at 1.5 spacing).
export function figureHeight(slug: string, file: string, caption: string, w: number, withCaption = true, capW = w) {
  const size = imageSize(`${ROOT}/${slug}/${file}`);
  const img = size ? (w * size.h) / size.w : w * 0.6;
  const lines = withCaption ? Math.ceil(((caption.length + 12) * 0.19) / capW) : 0;
  return Math.round((img + (lines ? 0.15 + lines * 0.64 : 0)) * 10) / 10;
}

const round = (v: number) => Math.round(v * 10) / 10;

// The area a stamp covers on the sheet, in cm, and what to call it.
export function stampBox(slug: string, r: Report, it: StampItem) {
  if (it.kind === "chapter") {
    const x = it.x ?? TEXT_LEFT;
    return { label: `Chapter ${it.n}`, x0: x, y0: it.y, x1: round(x + 1 + (it.line ?? chapterLine(it.x))), y1: round(it.y + 0.8) };
  }
  if (it.kind === "text") return { label: "Text", x0: it.x, y0: it.y, x1: it.x, y1: it.y };
  const f = findFigure(r, it.fig);
  if (it.x !== undefined) {
    const w = it.w ?? f.width_cm ?? 12;
    return { label: `Figure ${f.n}`, x0: it.x, y0: it.y, x1: round(it.x + w), y1: round(it.y + figureHeight(slug, f.file, f.caption, w, it.caption !== false)) };
  }
  // As in the typed report: the row's figures share the text column, each caption wrapping at its share.
  const all = numberedFigures(r);
  const row = f.row.map((id) => all.find((x) => x.id === id)!);
  const share = (TEXT_WIDTH - ROW_GAP * (row.length - 1)) / row.length;
  const h = Math.max(...row.map((x) => figureHeight(slug, x.file, x.caption, Math.min(x.width_cm ?? 12, share), it.caption !== false, share)));
  const label = row.length > 1 ? `Figures ${row.map((x) => x.n).join(" + ")} (same row)` : `Figure ${f.n}`;
  return { label, x0: TEXT_LEFT, y0: it.y, x1: TEXT_LEFT + TEXT_WIDTH, y1: round(it.y + h) };
}

// "fig 3 x=2 y=12 nocap chapter 6 x=2 y=4" → items. A kind word starts each item.
export function parseItems(args: string[]): StampItem[] {
  const items: StampItem[] = [];
  let cur: Record<string, string | boolean> | null = null;
  const flush = () => {
    if (!cur) return;
    const num = (k: string) => {
      if (cur![k] === undefined) return undefined;
      const v = Number(cur![k]);
      if (Number.isNaN(v)) throw new Error(`${k}=${cur![k]} isn't a number`);
      return v;
    };
    const x = num("x"), y = num("y");
    if (y === undefined) throw new Error(`${cur.kind} ${cur.arg ?? ""}: needs y= (cm from the top edge)`);
    if (cur.kind === "fig") items.push({ kind: "figure", fig: String(cur.arg), x, y, w: num("w"), caption: !cur.nocap });
    else if (cur.kind === "chapter") items.push({ kind: "chapter", n: Number(cur.arg), x, y, line: num("line"), title: cur.title as string | undefined });
    else if (x === undefined) throw new Error(`text "${cur.arg}": needs x= and y= (cm)`);
    else items.push({ kind: "text", text: String(cur.arg), x, y, size: num("size") });
  };
  for (let i = 0; i < args.length; i++) {
    const a = args[i];
    if (["fig", "figure", "chapter", "text"].includes(a)) {
      flush();
      cur = { kind: a === "figure" ? "fig" : a, arg: args[++i] };
      if (cur.arg === undefined) throw new Error(`${a} needs a value`);
    } else if (!cur) throw new Error(`Expected fig, chapter or text, got "${a}"`);
    else if (a === "nocap") cur.nocap = true;
    else if (a.includes("=")) cur[a.slice(0, a.indexOf("="))] = a.slice(a.indexOf("=") + 1);
    else throw new Error(`Don't understand "${a}"`);
  }
  flush();
  return items;
}

const stamp = () => new Date().toISOString().slice(0, 19).replace(/[:T]/g, "-");

async function main() {
  const args = process.argv.slice(2).filter((a) => a !== "--no-open");
  const open = !process.argv.includes("--no-open");
  const [cmd, slug, ...rest] = args;
  const settings = await readSettings();
  const show = async (pdf: string) => {
    console.log(`Wrote ${pdf}`);
    if (open) Bun.spawn(["open", pdf]);
  };

  switch (cmd) {
    case "list":
      for (const d of existsSync(ROOT) ? readdirSync(ROOT, { withFileTypes: true }).filter((d) => existsSync(`${ROOT}/${d.name}/report.json`)) : []) {
        const r = await readReport(d.name).catch(() => null);
        console.log(`${d.name}\t${r?.request?.status ?? "?"}\t${r?.title ?? "(no report.json)"}`);
      }
      return;
    case "figures": {
      const r = await readReport(slug);
      for (const f of numberedFigures(r)) {
        const b = stampBox(slug, r, { kind: "figure", fig: f.n, y: 0 });
        const with_ = f.row.length > 1 ? `  (row with ${f.row.filter((id) => id !== f.id).map((id) => `fig ${numberedFigures(r).find((x) => x.id === id)!.n}`).join(", ")})` : "";
        console.log(`${String(f.n).padStart(2)}  ${f.id.padEnd(18)} ↕ ${b.y1} cm  ${f.caption}${with_}`);
      }
      r.chapters.forEach((c, i) => console.log(`chapter ${i + 1}: ${c.title}`));
      return;
    }
    case "build": {
      const r = await readReport(slug);
      const out = rest[0] ?? `${ROOT}/${slug}/report.pdf`;
      mkdirSync(`${ROOT}/${slug}/print`, { recursive: true });
      const pdf = await toPdf(reportPage(r, settings, fileUrls(slug)), `${ROOT}/${slug}/print/report.pdf`);
      if (out !== pdf) await Bun.write(out, Bun.file(pdf));
      console.log(`Wrote ${out}`);
      return;
    }
    case "print": {
      const r = await readReport(slug);
      mkdirSync(`${ROOT}/${slug}/print`, { recursive: true });
      if (rest[0] === "cover") return show(await toPdf(coverPage(r, settings, fileUrls(slug)), `${ROOT}/${slug}/print/cover.pdf`));
      const items = parseItems(rest);
      if (!items.length) throw new Error("Nothing to print");
      // Say where each piece ends, so the student knows the space it covers.
      for (const it of items) {
        if (it.kind === "text") continue;
        const b = stampBox(slug, r, it);
        const warn = b.x1 > 20.5 || b.y1 > 29.2 ? "  ⚠ runs off the page" : "";
        console.log(`${b.label}: from (${b.x0}, ${b.y0}) to (${b.x1}, ${b.y1}) cm — next free line at y ≈ ${round(b.y1 + 0.3)} cm${warn}`);
      }
      return show(await toPdf(stampPage(r, items, settings, fileUrls(slug)), `${ROOT}/${slug}/print/sheet-${stamp()}.pdf`));
    }
    case "calibrate":
      mkdirSync(`${ROOT}/print`, { recursive: true });
      return show(await toPdf(calibrationPage(), `${ROOT}/print/calibration.pdf`));
    case "settings": {
      const next = { ...settings };
      for (const a of [slug, ...rest].filter(Boolean)) {
        const [k, v] = [a.slice(0, a.indexOf("=")), a.slice(a.indexOf("=") + 1)];
        if (k === "name") next.name = v;
        else if (k === "group") next.group = v;
        else if (k === "dx") next.offset_x_cm = Number(v);
        else if (k === "dy") next.offset_y_cm = Number(v);
        else throw new Error(`Unknown setting ${k}`);
      }
      await Bun.write(SETTINGS, JSON.stringify(next, null, 2) + "\n");
      console.log(next);
      return;
    }
    default:
      console.error("Usage: bun scripts/report.ts list | build <slug> | figures <slug> | print <slug> cover|<items> | calibrate | settings");
      process.exit(1);
  }
}

if (import.meta.main) main().catch((e) => { console.error(e.message); process.exit(1); });
