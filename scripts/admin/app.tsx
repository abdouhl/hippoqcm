import { StrictMode, useCallback, useEffect, useState } from "react";
import { createRoot } from "react-dom/client";

type ModuleRow = { id: number; semester: number; name: string; questions: number; exam: number; generated: number; flagged: number };
type LessonRow = { id: number; module_id: number; title: string; pdf: string; position: number; questions: number };
type Option = { label: string; text: string; is_correct: 0 | 1 };
type Question = {
  id: number;
  module_id: number;
  stem: string;
  explanation: string | null;
  source: string | null;
  image: string | null;
  origin: "exam" | "generated";
  pdf_page: number | null;
  flagged: 0 | 1;
  pdf: string | null;
  lesson_ids: number[];
  options: Option[];
  reviews: number;
  correct: number | null;
};
type Batch = { file: string | null; edits: number; remote_checked_at: number | null; remote_error: string | null };
type RemoteFlag = { id: number; source: string | null; matches_local: boolean };
type DriveFile = { id: string; path: string; url: string; modified: string; first_seen: number; status: "new" | "updated" | "seen" };
type Drive = { checked_at: number | null; total: number; pending: DriveFile[]; baseline?: boolean };
// What the main pane shows: one module (optionally one lesson or its unlinked questions), the flag queue, or new Drive files.
type View = { kind: "flags" } | { kind: "all" } | { kind: "drive" } | { kind: "reports" } | { kind: "module"; module: number; lesson?: number; unlinked?: boolean };
type ReportSummary = { slug: string; title: string; status: string; created_at: number };
type ReportFigure = { id: string; n: number; file: string; caption: string; width_cm?: number; aspect: number | null; row: number[]; height_cm: number };

// Same estimate as scripts/report.ts figureHeight: image plus caption lines (12 pt ≈ 0.19 cm per character).
const figureHeight = (f: ReportFigure, w: number, caption = true) => {
  const lines = caption ? Math.ceil(((f.caption.length + 12) * 0.19) / w) : 0;
  return Math.round((w * (f.aspect ?? 0.6) + (lines ? 0.1 + lines * 0.6 : 0)) * 10) / 10;
};
type ReportDetail = {
  slug: string;
  report: { title: string; subtitle?: string; module: string; academic_year: string; request?: { notes?: string; sources?: string[]; status?: string } };
  figures: ReportFigure[];
  chapters: string[];
  error: string | null;
  log: string;
  generating: boolean;
};
type ReportSettings = { name: string; group: string; offset_x_cm: number; offset_y_cm: number };
type SheetItem =
  | { kind: "figure"; fig: number; x?: number; y: number; w?: number; caption?: boolean }
  | { kind: "chapter"; n: number; x?: number; y: number; line?: number; title?: string }
  | { kind: "heading"; text: string; x?: number; y: number }
  | { kind: "page"; n: number; total?: number; x?: number; y?: number }
  | { kind: "text"; text: string; x: number; y: number; size?: number };

const LABELS = ["A", "B", "C", "D", "E"];

async function api<T>(path: string, init?: RequestInit): Promise<T> {
  const res = await fetch(path, { ...init, headers: { "Content-Type": "application/json" } });
  const data = await res.json();
  if (!res.ok) throw new Error(data.error ?? res.statusText);
  return data as T;
}

function App() {
  const [modules, setModules] = useState<ModuleRow[]>([]);
  const [lessons, setLessons] = useState<LessonRow[]>([]);
  const [view, setView] = useState<View>({ kind: "flags" });
  const [origin, setOrigin] = useState("");
  const [search, setSearch] = useState("");
  const [questions, setQuestions] = useState<Question[] | null>(null);
  const [open, setOpen] = useState<number | null>(null);
  const [batch, setBatch] = useState<Batch | null>(null);
  const [prodFlags, setProdFlags] = useState<RemoteFlag[] | null>(null);
  const [prodState, setProdState] = useState<string>("");
  const [toast, setToast] = useState<string | null>(null);
  const [drive, setDrive] = useState<Drive | null>(null);

  const say = (msg: string) => {
    setToast(msg);
    setTimeout(() => setToast((t) => (t === msg ? null : t)), 5000);
  };

  const loadMeta = useCallback(async () => {
    const m = await api<{ modules: ModuleRow[]; lessons: LessonRow[] }>("/api/meta");
    setModules(m.modules);
    setLessons(m.lessons);
  }, []);
  const loadBatch = useCallback(async (refresh = false) => setBatch(await api<Batch>(`/api/batch${refresh ? "?refresh=1" : ""}`)), []);

  const loadQuestions = useCallback(async () => {
    if (view.kind === "drive" || view.kind === "reports") return;
    const p = new URLSearchParams();
    if (view.kind === "module") {
      p.set("module", String(view.module));
      if (view.lesson) p.set("lesson", String(view.lesson));
      if (view.unlinked) p.set("unlinked", "1");
    }
    if (view.kind === "flags") p.set("ids", (prodFlags ?? []).map((f) => f.id).join(","));
    if (origin) p.set("origin", origin);
    if (search.trim()) p.set("q", search.trim());
    setQuestions(await api<Question[]>(`/api/questions?${p}`));
  }, [view, origin, search, prodFlags]);

  const fetchProdFlags = async () => {
    setProdState("Asking production…");
    try {
      const flags = await api<RemoteFlag[]>("/api/remote-flags");
      setProdFlags(flags);
      setProdState(`${flags.length} flagged on production`);
    } catch (e) {
      setProdState(`Couldn't reach production: ${(e as Error).message}`);
    }
  };

  useEffect(() => {
    void loadMeta();
    void loadBatch();
    void fetchProdFlags();
    void api<Drive>("/api/drive").then(setDrive);
  }, [loadMeta, loadBatch]);

  useEffect(() => {
    const t = setTimeout(() => void loadQuestions(), search ? 250 : 0);
    return () => clearTimeout(t);
  }, [loadQuestions, search]);

  const afterWrite = async (notes: string[]) => {
    if (notes.length) say(notes.join(" · "));
    await Promise.all([loadMeta(), loadBatch(), loadQuestions()]);
  };

  const prodFlagged = new Set((prodFlags ?? []).map((f) => f.id));
  const mismatched = (prodFlags ?? []).filter((f) => !f.matches_local);
  const current = view.kind === "module" ? modules.find((m) => m.id === view.module) : undefined;
  const currentLesson = view.kind === "module" && view.lesson ? lessons.find((l) => l.id === view.lesson) : undefined;

  return (
    <div className="layout">
      <aside className="sidebar">
        <button className={`nav ${view.kind === "flags" ? "active" : ""}`} onClick={() => setView({ kind: "flags" })}>
          <span>Flagged</span>
          <span className="count flag" title="flagged on production / locally">
            {prodFlags ? prodFlags.length : "…"} / {modules.reduce((s, m) => s + m.flagged, 0)}
          </span>
        </button>
        <button className={`nav ${view.kind === "drive" ? "active" : ""}`} onClick={() => setView({ kind: "drive" })}>
          <span>New on Drive</span>
          <span className={`count ${drive?.pending.length ? "flag" : ""}`}>{drive ? drive.pending.length : "…"}</span>
        </button>
        <button className={`nav ${view.kind === "reports" ? "active" : ""}`} onClick={() => setView({ kind: "reports" })}>
          <span>Reports (TP)</span>
        </button>
        <button className={`nav ${view.kind === "all" ? "active" : ""}`} onClick={() => setView({ kind: "all" })}>
          <span>All questions</span>
          <span className="count">{modules.reduce((s, m) => s + m.questions, 0)}</span>
        </button>
        {[1, 2].map((sem) => (
          <div key={sem}>
            <h2>Semester {sem}</h2>
            {modules.filter((m) => m.semester === sem).map((m) => {
              const active = view.kind === "module" && view.module === m.id;
              return (
                <div key={m.id}>
                  <button className={`nav ${active && !view.lesson && !view.unlinked ? "active" : ""}`} onClick={() => setView({ kind: "module", module: m.id })}>
                    <span>{m.name}</span>
                    <span className="count">
                      {m.flagged > 0 && <span className="flag">⚑{m.flagged} </span>}
                      {m.questions}
                    </span>
                  </button>
                  {active && (
                    <>
                      {lessons.filter((l) => l.module_id === m.id).map((l) => (
                        <button key={l.id} className={`nav lesson ${view.lesson === l.id ? "active" : ""}`} onClick={() => setView({ kind: "module", module: m.id, lesson: l.id })}>
                          <span>{l.title}</span>
                          <span className="count">{l.questions}</span>
                        </button>
                      ))}
                      <button className={`nav lesson ${view.unlinked ? "active" : ""}`} onClick={() => setView({ kind: "module", module: m.id, unlinked: true })}>
                        <span className="muted">Not in any lesson</span>
                      </button>
                    </>
                  )}
                </div>
              );
            })}
          </div>
        ))}
      </aside>

      <main className="main">
        <div className="topbar">
          <input type="search" placeholder="Search text, source, or #id" value={search} onChange={(e) => setSearch(e.target.value)} />
          <select value={origin} onChange={(e) => setOrigin(e.target.value)}>
            <option value="">Exam + generated</option>
            <option value="exam">Exam only</option>
            <option value="generated">Generated only</option>
          </select>
          <button onClick={fetchProdFlags} title="Re-read flags raised on the live site">↻ Prod flags</button>
          <span className="muted">{prodState}</span>
          <div className="batch">
            {batch?.file ? (
              <span>
                {batch.edits} pending edit{batch.edits === 1 ? "" : "s"} in <code>migrations/{batch.file}</code>
              </span>
            ) : (
              <span className="muted">No pending edits</span>
            )}
            <button onClick={() => loadBatch(true)} title="Check whether production already ran the batch">Check deploy</button>
          </div>
        </div>

        {batch?.remote_error && <div className="banner error">Couldn't check production migrations ({batch.remote_error}). Edits still go to the newest batch file.</div>}
        {mismatched.length > 0 && (
          <div className="banner">
            Flagged on production but the local question differs (edited since, or ids out of step): {mismatched.map((f) => `#${f.id}`).join(", ")}
          </div>
        )}

        <div className="content">
          {view.kind === "drive" ? (
            <DrivePanel drive={drive} onChange={setDrive} onError={say} />
          ) : view.kind === "reports" ? (
            <ReportsPanel onError={say} />
          ) : (
          <>
          {view.kind === "flags" && questions?.length === 0 && <p className="muted">Nothing flagged. 🎉</p>}
          {currentLesson && <LessonHeader key={currentLesson.id} lesson={currentLesson} onSaved={afterWrite} onError={say} />}
          {questions === null ? (
            <p className="muted">Loading…</p>
          ) : (
            <>
              <p className="muted">
                {questions.length === 300 ? "First 300 questions" : `${questions.length} question${questions.length === 1 ? "" : "s"}`}
                {current ? ` · ${current.name} (S${current.semester})` : ""}
              </p>
              {questions.map((q) => (
                <QuestionCard
                  key={q.id}
                  question={q}
                  prodFlagged={prodFlagged.has(q.id)}
                  lessons={lessons.filter((l) => l.module_id === q.module_id)}
                  moduleName={modules.find((m) => m.id === q.module_id)?.name ?? ""}
                  open={open === q.id}
                  onToggle={() => setOpen(open === q.id ? null : q.id)}
                  onSaved={afterWrite}
                  onError={say}
                />
              ))}
            </>
          )}
          </>
          )}
        </div>
      </main>
      {toast && <div className="toast">{toast}</div>}
    </div>
  );
}

function DrivePanel({ drive, onChange, onError }: { drive: Drive | null; onChange: (d: Drive) => void; onError: (m: string) => void }) {
  const [busy, setBusy] = useState(false);
  const [result, setResult] = useState("");

  const check = async () => {
    setBusy(true);
    try {
      const before = new Set(drive?.pending.map((f) => f.id));
      const d = await api<Drive>("/api/drive", { method: "POST" });
      onChange(d);
      const fresh = d.pending.filter((f) => !before.has(f.id)).length;
      setResult(d.baseline ? `First check: remembered ${d.total} existing files. New ones show up from the next check.` : fresh ? `${fresh} new or updated` : "Nothing new");
    } catch (e) {
      onError((e as Error).message);
    } finally {
      setBusy(false);
    }
  };
  const markSeen = async (ids: string[]) => {
    try {
      onChange(await api<Drive>("/api/drive/seen", { method: "POST", body: JSON.stringify({ ids }) }));
    } catch (e) {
      onError((e as Error).message);
    }
  };

  return (
    <>
      <div className="lesson-head">
        <button className="primary" disabled={busy} onClick={check}>{busy ? "Checking…" : "Check Drive"}</button>
        <span className="muted">
          {result || (drive?.checked_at ? `Last checked ${new Date(drive.checked_at).toLocaleString()} · ${drive.total} files` : "Never checked")}
        </span>
        <span className="spacer" />
        {!!drive?.pending.length && <button onClick={() => markSeen(drive.pending.map((f) => f.id))}>Mark all seen</button>}
      </div>
      {drive?.pending.length === 0 && <p className="muted">Nothing new.</p>}
      {drive?.pending.map((f) => {
        const slash = f.path.lastIndexOf("/");
        return (
          <div key={f.id} className="card">
            <div className="row">
              <span className={`tag ${f.status === "new" ? "green" : ""}`}>{f.status}</span>
              <span className="stem">
                <a href={f.url} target="_blank" rel="noreferrer">{f.path.slice(slash + 1)}</a>
                <div className="muted" style={{ fontSize: 12 }}>{f.path.slice(0, slash)}</div>
              </span>
              <span className="muted">{f.modified}</span>
              <button onClick={() => markSeen([f.id])}>Seen</button>
            </div>
          </div>
        );
      })}
    </>
  );
}

// --- Practical-work reports ------------------------------------------------------------------------

const store = {
  get: (k: string) => { try { return localStorage.getItem(k); } catch { return null; } },
  set: (k: string, v: string) => { try { localStorage.setItem(k, v); } catch { /* private mode */ } },
};

function ReportsPanel({ onError }: { onError: (m: string) => void }) {
  const [list, setList] = useState<ReportSummary[] | null>(null);
  const [slug, setSlug] = useState<string | null>(() => store.get("report"));
  const [detail, setDetail] = useState<ReportDetail | null>(null);
  const [creating, setCreating] = useState(false);

  const loadList = useCallback(async () => {
    const l = await api<ReportSummary[]>("/api/reports");
    setList(l);
    setSlug((s) => (s && l.some((r) => r.slug === s) ? s : l[0]?.slug ?? null));
  }, []);
  const loadDetail = useCallback(async () => {
    if (!slug) return setDetail(null);
    try { setDetail(await api<ReportDetail>(`/api/reports/${slug}`)); } catch (e) { onError((e as Error).message); }
  }, [slug, onError]);

  useEffect(() => void loadList().catch((e) => onError(e.message)), [loadList, onError]);
  useEffect(() => {
    if (slug) store.set("report", slug);
    void loadDetail();
  }, [slug, loadDetail]);
  // While Claude writes the report, follow its log.
  const busy = detail?.generating || detail?.report.request?.status === "generating";
  useEffect(() => {
    if (!busy) return;
    const t = setInterval(() => void loadDetail().then(loadList), 3000);
    return () => clearInterval(t);
  }, [busy, loadDetail, loadList]);

  const generate = async () => {
    try {
      await api(`/api/reports/${slug}/generate`, { method: "POST" });
      await loadDetail();
    } catch (e) {
      onError((e as Error).message);
    }
  };

  return (
    <>
      <PrinterCard onError={onError} />
      <div className="lesson-head">
        <select value={slug ?? ""} onChange={(e) => setSlug(e.target.value)} style={{ flex: 1 }}>
          {list?.length === 0 && <option value="">No reports yet</option>}
          {list?.map((r) => <option key={r.slug} value={r.slug}>{r.title} ({r.status})</option>)}
        </select>
        <button className="primary" onClick={() => setCreating(!creating)}>{creating ? "Cancel" : "New report"}</button>
      </div>
      {creating && (
        <NewReportForm
          onError={onError}
          onCreated={async (s) => {
            setCreating(false);
            await loadList();
            setSlug(s);
          }}
        />
      )}
      {detail && detail.slug === slug && (
        <>
          <div className="card report-head">
            <div>
              <strong>{detail.report.title}</strong>
              {detail.report.subtitle && <div className="muted">{detail.report.subtitle}</div>}
              <div className="muted" style={{ fontSize: 12 }}>
                {detail.report.module} · {detail.report.academic_year} · <code>data/reports/{detail.slug}</code>
              </div>
            </div>
            <span className={`tag ${detail.report.request?.status === "ready" ? "green" : detail.report.request?.status === "error" ? "red" : ""}`}>
              {detail.report.request?.status ?? "ready"}
            </span>
            <div className="actions">
              <a className="button" href={`/report/${detail.slug}/cover.pdf?download`} title="One A4 page with your name and group">Download cover PDF</a>
              <a className="button" href={`/report/${detail.slug}/cover.pdf`} target="_blank" rel="noreferrer">Open cover</a>
              {detail.figures.length > 0 && <a className="button" href={`/report/${detail.slug}/full.pdf`} target="_blank" rel="noreferrer">Typed report</a>}
              {!busy && detail.report.request?.status !== "ready" && <button className="primary" onClick={generate}>Generate with Claude</button>}
            </div>
          </div>
          {detail.error && <div className="banner error">{detail.error}</div>}
          {detail.report.request?.status !== "ready" && (
            <div className="card report-request">
              {detail.report.request?.notes && <p style={{ whiteSpace: "pre-wrap", margin: 0 }}>{detail.report.request.notes}</p>}
              <div className="muted" style={{ fontSize: 12 }}>
                Sources: {detail.report.request?.sources?.map((s) => s.replace("sources/", "")).join(", ") || "none"} · or run{" "}
                <code>/report {detail.slug}</code> in Claude Code
              </div>
              {busy && <p className="muted">Claude is writing the report… (this takes a few minutes)</p>}
              {detail.log && <pre className="log">{detail.log}</pre>}
            </div>
          )}
          <SheetBuilder key={detail.slug} detail={detail} />
        </>
      )}
    </>
  );
}

function PrinterCard({ onError }: { onError: (m: string) => void }) {
  const [s, setS] = useState<ReportSettings | null>(null);
  const [saved, setSaved] = useState<ReportSettings | null>(null);
  useEffect(() => {
    void api<ReportSettings>("/api/report-settings").then((x) => { setS(x); setSaved(x); });
  }, []);
  if (!s) return null;
  const save = async () => {
    try {
      const x = await api<ReportSettings>("/api/report-settings", { method: "PUT", body: JSON.stringify(s) });
      setS(x);
      setSaved(x);
    } catch (e) {
      onError((e as Error).message);
    }
  };
  const field = (k: keyof ReportSettings, label: string, width: number, num = false) => (
    <label className="field" style={{ width }}>
      {label}
      <input type={num ? "number" : "text"} step={0.05} value={s[k]} onChange={(e) => setS({ ...s, [k]: e.target.value })} />
    </label>
  );
  return (
    <div className="card printer">
      {field("name", "First and last name", 220)}
      {field("group", "Group", 80)}
      {field("offset_x_cm", "Printer offset X (cm)", 130, true)}
      {field("offset_y_cm", "Offset Y (cm)", 100, true)}
      <button className="primary" disabled={JSON.stringify(s) === JSON.stringify(saved)} onClick={save}>Save</button>
      <a href="/report-calibration.pdf" target="_blank" rel="noreferrer" title="Print once on blank paper, measure, enter the offsets">Calibration page</a>
      <a href="/report-assets/lined-paper-10mm.pdf" target="_blank" rel="noreferrer" title="A4, a line every 1 cm from y = 1 to 29 cm: print it, write on it, then print the stamps on it">Lined paper (10 mm)</a>
    </div>
  );
}

function NewReportForm({ onCreated, onError }: { onCreated: (slug: string) => void; onError: (m: string) => void }) {
  const [busy, setBusy] = useState(false);
  const submit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    setBusy(true);
    try {
      const res = await fetch("/api/reports", { method: "POST", body: new FormData(e.currentTarget) });
      const data = await res.json();
      if (!res.ok) throw new Error(data.error);
      onCreated(data.slug);
    } catch (err) {
      onError((err as Error).message);
    } finally {
      setBusy(false);
    }
  };
  const year = new Date().getMonth() >= 8 ? new Date().getFullYear() : new Date().getFullYear() - 1;
  return (
    <form className="card editor" onSubmit={submit}>
      <label className="field">Report title (as on the cover)<input name="title" required placeholder="Report on the second practical session: …" /></label>
      <label className="field">Topic / subtitle<input name="subtitle" placeholder="What the teacher asked for" /></label>
      <div className="cols" style={{ gridTemplateColumns: "1fr 160px" }}>
        <label className="field">Module<input name="module" placeholder="General Human Embryology" /></label>
        <label className="field">Academic year<input name="academic_year" defaultValue={`${year}/${year + 1}`} /></label>
      </div>
      <label className="field">
        Instructions and data for Claude
        <textarea name="notes" rows={4} placeholder="What to cover, the teacher's instructions, what the photos show, which figures you want…" />
      </label>
      <label className="field">Photos of slides, the teacher's guide, notes (any number)<input name="files" type="file" multiple /></label>
      <div className="actions"><span className="spacer" /><button className="primary" disabled={busy}>{busy ? "Uploading…" : "Create report"}</button></div>
    </form>
  );
}

// Places figures, chapter numbers, INTRODUCTION/CONCLUSION, page numbers and text on an A4 sheet the student already wrote on.
function SheetBuilder({ detail }: { detail: ReportDetail }) {
  const key = `sheet:${detail.slug}`;
  const [items, setItems] = useState<SheetItem[]>(() => {
    try { return JSON.parse(store.get(key) ?? "[]"); } catch { return []; }
  });
  const [shown, setShown] = useState(items); // the preview follows edits after a short pause
  useEffect(() => {
    store.set(key, JSON.stringify(items));
    const t = setTimeout(() => setShown(items), 400);
    return () => clearTimeout(t);
  }, [items, key]);

  const set = (i: number, patch: Partial<SheetItem>) => setItems(items.map((it, j) => (j === i ? ({ ...it, ...patch } as SheetItem) : it)));
  const add = (it: SheetItem) => setItems([...items, it]);
  const fig = (n: number) => detail.figures.find((f) => f.n === n);
  const q = encodeURIComponent(JSON.stringify(shown));
  const num = (i: number, k: string, v: number | undefined, label: string, step = 0.1, placeholder = "") => (
    <label className="num">
      {label}
      <input type="number" step={step} value={v ?? ""} placeholder={placeholder} onChange={(e) => set(i, { [k]: e.target.value === "" ? undefined : Number(e.target.value) } as Partial<SheetItem>)} />
    </label>
  );
  // Where a figure ends on the sheet: as in the report (its whole row), or alone at its own width.
  const bottom = (it: Extract<SheetItem, { kind: "figure" }>) => {
    const f = fig(it.fig);
    if (!f) return null;
    const h = it.x === undefined ? f.height_cm : figureHeight(f, it.w ?? f.width_cm ?? 12, it.caption !== false);
    return Math.round((it.y + h) * 10) / 10;
  };

  return (
    <div className="sheet-builder">
      <div className="sheet-items">
        <div className="actions">
          <strong>Print on a written sheet</strong>
          <span className="spacer" />
          <button onClick={() => add({ kind: "heading", text: "INTRODUCTION", y: 2.5 })}>+ Introduction</button>
          <button onClick={() => add({ kind: "chapter", n: 1, y: 2.5 })}>+ Chapter</button>
          <button onClick={() => add({ kind: "heading", text: "CONCLUSION", y: 2.5 })}>+ Conclusion</button>
          <button onClick={() => add({ kind: "page", n: (items.find((it) => it.kind === "page") as { n: number } | undefined)?.n ?? 1 })}>+ Page no.</button>
          <button onClick={() => add({ kind: "text", text: "", x: 18.5, y: 28 })}>+ Text</button>
          <button disabled={!items.length} onClick={() => setItems([])}>Clear</button>
        </div>
        <p className="muted" style={{ fontSize: 12, margin: 0 }}>
          y = cm from the paper's top edge; for Introduction, Conclusion, chapters and page numbers it's the bottom of the letters, so
          put it on a ruled line (the lined paper has one every cm, from 1 to 29). A page number ends at its x. Leave x empty to place it exactly as in the typed report (figures sharing a row print
          together); set x (and w) to put a figure anywhere. Put the written sheet back in the printer the way the calibration page
          says, then print at 100% / Actual size.
        </p>
        {items.map((it, i) => (
          <div key={i} className="sheet-item">
            {it.kind === "figure" && (
              <>
                <select value={it.fig} onChange={(e) => set(i, { fig: Number(e.target.value) })}>
                  {detail.figures.map((f) => <option key={f.n} value={f.n}>Fig {f.n}: {f.caption.slice(0, 50)}</option>)}
                </select>
                {it.x !== undefined && num(i, "w", it.w, "w", 0.1, String(fig(it.fig)?.width_cm ?? 12))}
                <label className="num"><input type="checkbox" checked={it.caption !== false} onChange={(e) => set(i, { caption: e.target.checked })} />caption</label>
                <span className="muted" style={{ fontSize: 12, whiteSpace: "nowrap" }} title="Where it ends on the sheet: write again below this">
                  {it.x === undefined && (fig(it.fig)?.row.length ?? 1) > 1 ? `with Fig ${fig(it.fig)!.row.filter((n) => n !== it.fig).join(", ")} · ` : ""}
                  ends y≈{bottom(it)}
                </span>
              </>
            )}
            {it.kind === "chapter" && (
              <>
                <select value={it.n} onChange={(e) => set(i, { n: Number(e.target.value) })}>
                  {(detail.chapters.length ? detail.chapters : ["…"]).map((c, j) => <option key={j} value={j + 1}>{j + 1}. {c}</option>)}
                  {Array.from({ length: 5 }, (_, j) => detail.chapters.length + j + 1).map((n) => <option key={n} value={n}>{n}</option>)}
                </select>
                {num(i, "line", it.line, "line", 0.1, "auto")}
                <label className="num">
                  <input type="checkbox" checked={!!it.title} onChange={(e) => set(i, { title: e.target.checked ? detail.chapters[it.n - 1] ?? "" : undefined })} />
                  print title
                </label>
              </>
            )}
            {it.kind === "heading" && (
              <>
                <input value={it.text} list="headings" placeholder="Heading" onChange={(e) => set(i, { text: e.target.value.toUpperCase() })} />
                <datalist id="headings">
                  <option value="INTRODUCTION" />
                  <option value="CONCLUSION" />
                </datalist>
              </>
            )}
            {it.kind === "page" && (
              <>
                <strong style={{ fontSize: 13 }}>Page</strong>
                {num(i, "n", it.n, "no.", 1)}
                {num(i, "total", it.total, "of", 1, "—")}
              </>
            )}
            {it.kind === "text" && <input value={it.text} placeholder="Text" onChange={(e) => set(i, { text: e.target.value })} />}
            {num(i, "x", it.x, "x", 0.1, it.kind === "text" ? "" : it.kind === "page" ? "20" : it.kind === "heading" ? "centre" : "auto")}
            {num(i, "y", it.y, "y", 0.1, it.kind === "page" ? "29" : "")}
            {it.kind === "text" && num(i, "size", it.size ?? 12, "pt", 1)}
            <button onClick={() => setItems(items.filter((_, j) => j !== i))} title="Remove">✕</button>
          </div>
        ))}
        <div className="actions">
          <span className="spacer" />
          <a
            className={`button primary ${items.length ? "" : "disabled"}`}
            href={`/report/${detail.slug}/sheet.pdf?items=${encodeURIComponent(JSON.stringify(items))}`}
            target="_blank"
            rel="noreferrer"
          >
            Sheet PDF → print
          </a>
        </div>

        <strong style={{ marginTop: 8 }}>Figures</strong>
        <div className="gallery">
          {detail.figures.map((f) => (
            <button key={f.n} className="thumb" onClick={() => add({ kind: "figure", fig: f.n, y: 3 })} title="Add to the sheet">
              <img src={`/report-files/${detail.slug}/${f.file}`} alt="" />
              <span><b>Fig {f.n}.</b> {f.caption}</span>
              <span className="muted">↕ {f.height_cm} cm{f.row.length > 1 ? ` · row with Fig ${f.row.filter((n) => n !== f.n).join(", ")}` : ""} · + add</span>
            </button>
          ))}
        </div>
      </div>
      <div className="sheet-preview">
        <iframe title="Sheet preview" src={`/report/${detail.slug}/sheet?preview=1&items=${q}`} />
      </div>
    </div>
  );
}

function LessonHeader({ lesson, onSaved, onError }: { lesson: LessonRow; onSaved: (notes: string[]) => void; onError: (m: string) => void }) {
  const [title, setTitle] = useState(lesson.title);
  const [position, setPosition] = useState(String(lesson.position));
  const dirty = title !== lesson.title || Number(position) !== lesson.position;

  const save = async () => {
    const patch: { title?: string; position?: number } = {};
    if (title !== lesson.title) patch.title = title;
    if (Number(position) !== lesson.position) patch.position = Number(position);
    try {
      onSaved((await api<{ notes: string[] }>(`/api/lessons/${lesson.id}`, { method: "PATCH", body: JSON.stringify(patch) })).notes);
    } catch (e) {
      onError((e as Error).message);
    }
  };

  return (
    <div className="lesson-head">
      <input className="title" value={title} onChange={(e) => setTitle(e.target.value)} />
      <input className="pos" type="number" min={1} value={position} onChange={(e) => setPosition(e.target.value)} title="Position in module" />
      <a href={`/lessons/${lesson.pdf}`} target="_blank" rel="noreferrer">PDF</a>
      <button className="primary" disabled={!dirty} onClick={save}>Save lesson</button>
    </div>
  );
}

type CardProps = {
  question: Question;
  prodFlagged: boolean;
  lessons: LessonRow[];
  moduleName: string;
  open: boolean;
  onToggle: () => void;
  onSaved: (notes: string[]) => void;
  onError: (m: string) => void;
};

function QuestionCard({ question: q, prodFlagged, lessons, moduleName, open, onToggle, onSaved, onError }: CardProps) {
  const flagged = q.flagged === 1 || prodFlagged;
  const answer = q.options.filter((o) => o.is_correct).map((o) => o.label).join("");
  const accuracy = q.reviews ? Math.round(((q.correct ?? 0) / q.reviews) * 100) : null;

  return (
    <div className={`card ${flagged ? "flagged" : ""}`}>
      <div className="row" onClick={onToggle}>
        <span className="id">#{q.id}</span>
        <span className="stem">{q.stem}</span>
        <span className="tags">
          {flagged && <span className="tag red">⚑ {q.flagged ? "flagged" : "flagged on prod"}</span>}
          {q.image && <span className="tag">img</span>}
          <span className="tag green">{answer || "no key"}</span>
          {accuracy !== null && <span className="tag" title={`${q.reviews} local reviews`}>{accuracy}%</span>}
          <span className="tag">{moduleName}</span>
          <span className="tag">{q.source}</span>
        </span>
      </div>
      {open && <Editor key={`${q.id}-${q.stem}-${answer}-${q.flagged}`} question={q} flagged={flagged} lessons={lessons} onSaved={onSaved} onError={onError} />}
    </div>
  );
}

function Editor({ question: q, flagged, lessons, onSaved, onError }: { question: Question; flagged: boolean; lessons: LessonRow[]; onSaved: (n: string[]) => void; onError: (m: string) => void }) {
  const [stem, setStem] = useState(q.stem);
  const [options, setOptions] = useState<Option[]>(q.options);
  const [explanation, setExplanation] = useState(q.explanation ?? "");
  const [image, setImage] = useState(q.image ?? "");
  const [page, setPage] = useState(q.pdf_page == null ? "" : String(q.pdf_page));
  const [isFlagged, setIsFlagged] = useState(flagged);
  const [links, setLinks] = useState<number[]>(q.lesson_ids);
  const [busy, setBusy] = useState(false);
  const [confirmDelete, setConfirmDelete] = useState(false);

  const patch: Record<string, unknown> = {};
  if (stem !== q.stem) patch.stem = stem;
  if (JSON.stringify(options) !== JSON.stringify(q.options)) patch.options = options;
  if (explanation !== (q.explanation ?? "")) patch.explanation = explanation || null;
  if (image !== (q.image ?? "")) patch.image = image || null;
  if (page !== (q.pdf_page == null ? "" : String(q.pdf_page))) patch.pdf_page = page ? Number(page) : null;
  if (isFlagged !== flagged) patch.flagged = isFlagged;
  if ([...links].sort().join() !== [...q.lesson_ids].sort().join()) patch.lesson_ids = links;
  const dirty = Object.keys(patch).length > 0;

  const setOption = (i: number, o: Partial<Option>) => setOptions(options.map((x, j) => (j === i ? { ...x, ...o } : x)));
  const removeOption = (i: number) => setOptions(options.filter((_, j) => j !== i).map((o, j) => ({ ...o, label: LABELS[j] })));
  const addOption = () => setOptions([...options, { label: LABELS[options.length], text: "", is_correct: 0 }]);

  const run = async (fn: () => Promise<{ notes: string[] }>) => {
    setBusy(true);
    try {
      onSaved((await fn()).notes);
    } catch (e) {
      onError((e as Error).message);
    } finally {
      setBusy(false);
    }
  };
  const save = () => run(() => api(`/api/questions/${q.id}`, { method: "PATCH", body: JSON.stringify(patch) }));
  // Fixing a flagged question usually means unflagging it in the same save.
  const saveAndUnflag = () => run(() => api(`/api/questions/${q.id}`, { method: "PATCH", body: JSON.stringify({ ...patch, flagged: false }) }));
  const remove = () => run(() => api(`/api/questions/${q.id}`, { method: "DELETE" }));

  const pdf = q.pdf ?? lessons.find((l) => links.includes(l.id))?.pdf;

  return (
    <div className="editor">
      <label className="field">
        Stem
        <textarea rows={2} value={stem} onChange={(e) => setStem(e.target.value)} />
      </label>

      <div className="options">
        {options.map((o, i) => (
          <div key={i} className={`option ${o.is_correct ? "correct" : ""}`}>
            <input type="checkbox" checked={o.is_correct === 1} onChange={(e) => setOption(i, { is_correct: e.target.checked ? 1 : 0 })} title="Correct" />
            <strong>{o.label}</strong>
            <input type="text" value={o.text} onChange={(e) => setOption(i, { text: e.target.value })} />
            <button onClick={() => removeOption(i)} disabled={options.length <= 2} title="Remove option">✕</button>
          </div>
        ))}
        {options.length < 5 && (
          <div>
            <button onClick={addOption}>+ Option {LABELS[options.length]}</button>
          </div>
        )}
      </div>

      <label className="field">
        Explanation
        <textarea rows={2} value={explanation} onChange={(e) => setExplanation(e.target.value)} />
      </label>

      <div className="cols">
        <label className="field">
          Image (path under public/images/)
          <input value={image} onChange={(e) => setImage(e.target.value)} placeholder="s1/lessons/…png" />
        </label>
        <label className="field">
          PDF page
          <input type="number" min={1} value={page} onChange={(e) => setPage(e.target.value)} />
        </label>
      </div>
      {image && <img className="preview" src={`/images/${image}`} alt="" />}

      {lessons.length > 0 && (
        <div className="field">
          <div className="muted" style={{ fontSize: 12, marginBottom: 4 }}>Lessons</div>
          <div className="lessons">
            {lessons.map((l) => (
              <label key={l.id}>
                <input
                  type="checkbox"
                  checked={links.includes(l.id)}
                  onChange={(e) => setLinks(e.target.checked ? [...links, l.id] : links.filter((x) => x !== l.id))}
                />
                {l.title}
              </label>
            ))}
          </div>
        </div>
      )}

      <div className="actions">
        <label style={{ display: "flex", gap: 6, alignItems: "center" }}>
          <input type="checkbox" style={{ width: "auto" }} checked={isFlagged} onChange={(e) => setIsFlagged(e.target.checked)} />
          Flagged (hidden from study)
        </label>
        {pdf && (
          <a href={`/lessons/${pdf}${page ? `#page=${page}` : ""}`} target="_blank" rel="noreferrer">
            Open PDF{page ? ` p. ${page}` : ""}
          </a>
        )}
        <span className="spacer" />
        {confirmDelete ? (
          <>
            <span className="muted">Delete for good (also on deploy)?</span>
            <button className="danger" disabled={busy} onClick={remove}>Yes, delete</button>
            <button onClick={() => setConfirmDelete(false)}>Cancel</button>
          </>
        ) : (
          <button className="danger" onClick={() => setConfirmDelete(true)}>Delete</button>
        )}
        {flagged && isFlagged && <button disabled={busy} onClick={saveAndUnflag}>Save & unflag</button>}
        <button className="primary" disabled={!dirty || busy} onClick={save}>Save</button>
      </div>
    </div>
  );
}

createRoot(document.getElementById("root")!).render(
  <StrictMode>
    <App />
  </StrictMode>,
);
