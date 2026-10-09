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
// What the question list shows: one module (optionally one lesson or its unlinked questions), or the flag queue.
type View = { kind: "flags" } | { kind: "all" } | { kind: "module"; module: number; lesson?: number; unlinked?: boolean };

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
        </div>
      </main>
      {toast && <div className="toast">{toast}</div>}
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
