import { lazy, Suspense, useEffect, useRef, useState } from "react";
import type { Lesson, LessonRead, Module, ReadKind } from "../shared/types";
import { addLessonRead, getJSON, undoLessonRead } from "./api";
import { Icon } from "./icons";
import { ScreenHeader, Skeleton, useMedia } from "./ui";

const PdfViewer = lazy(() => import("./PdfViewer"));

// Touch screens can't show a PDF in a frame: they get the pdf.js viewer instead (src/PdfViewer.tsx).
const TOUCH = "(hover: none), (max-width: 600px)";
const useTouch = () => useMedia(TOUCH);

function useLessons(moduleId: number) {
  const [lessons, setLessons] = useState<Lesson[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    getJSON<Lesson[]>(`/api/modules/${moduleId}/lessons`)
      .then(setLessons)
      .catch((e: Error) => setError(e.message));
  }, [moduleId]);

  // Show reads here right away; the writes sync in the background.
  const setReads = (lesson: Lesson, reads: LessonRead[]) =>
    setLessons((ls) => ls?.map((l) => (l.id === lesson.id ? { ...l, reads, read_at: reads.at(-1)?.at ?? null } : l)) ?? null);
  const addRead = (lesson: Lesson, kind: ReadKind) => {
    const read = { kind, at: Date.now() };
    setReads(lesson, [...lesson.reads, read]);
    addLessonRead(lesson.id, read).catch((e: Error) => setError(e.message));
  };
  const undoRead = (lesson: Lesson, kind: ReadKind) => {
    const last = lesson.reads.filter((r) => r.kind === kind).at(-1);
    if (!last) return;
    setReads(lesson, lesson.reads.filter((r) => r !== last));
    undoLessonRead(lesson.id, last.at).catch((e: Error) => setError(e.message));
  };
  return { lessons, error, addRead, undoRead };
}

const NOUN: Record<ReadKind, string> = { pdf: "lesson", summary: "summary" };
const readCount = (lesson: Lesson, kind: ReadKind) => lesson.reads.filter((r) => r.kind === kind).length;

// Each press logs one more read of the lesson PDF or its summary; ↶ takes the last one back.
function ReadButton({ lesson, kind, onRead, onUndo }: { lesson: Lesson; kind: ReadKind; onRead: () => void; onUndo: () => void }) {
  const reads = lesson.reads.filter((r) => r.kind === kind);
  const last = reads.at(-1);
  return (
    <span className="read-toggle-group">
      <button
        className={last ? "read-toggle on" : "read-toggle"}
        onClick={onRead}
        title={last ? `Read the ${NOUN[kind]} again (last ${formatDate(last.at)})` : `Mark the ${NOUN[kind]} as read`}
      >
        {last ? <><Icon name="check" size={14} /> {NOUN[kind]} read {reads.length}×</> : `Mark ${NOUN[kind]} read`}
      </button>
      {last && (
        <button className="read-undo" onClick={onUndo} title={`Undo the read of ${formatDate(last.at)}`} aria-label="Undo last read">
          <Icon name="undo" size={14} />
        </button>
      )}
    </span>
  );
}

// Lesson pdf paths that have a summary page (public/summaries/index.json, written by scripts/summary.ts).
let summaries: Promise<Set<string>> | null = null;
export function useHasSummary(pdf: string | undefined) {
  const [has, setHas] = useState(false);
  useEffect(() => {
    if (!pdf) return;
    summaries ??= fetch("/summaries/index.json")
      .then((r) => (r.ok ? r.json() : []))
      .then((list: string[]) => new Set(list))
      .catch(() => new Set<string>());
    summaries.then((set) => setHas(set.has(pdf)));
  }, [pdf]);
  return has;
}

// TD sets solved with the module's lessons (public/exercises/index.json, written by scripts/exercises.ts).
export type ExerciseSet = { path: string; title: string; count: number; lessons: string[]; pdf: string | null };
let exerciseSets: Promise<ExerciseSet[]> | null = null;
const slug = (name: string) => name.toLowerCase().normalize("NFD").replace(/[^a-z0-9]+/g, "-").replace(/^-|-$/g, "");
const loadExerciseSets = () =>
  (exerciseSets ??= fetch("/exercises/index.json")
    .then((r) => (r.ok ? r.json() : []))
    .catch(() => []));
export const setsOf = (all: ExerciseSet[], module: Module) =>
  all.filter((s) => s.path.startsWith(`s${module.semester}/${slug(module.name)}/`));
export function useAllExerciseSets() {
  const [sets, setSets] = useState<ExerciseSet[]>([]);
  useEffect(() => {
    loadExerciseSets().then(setSets);
  }, []);
  return sets;
}
export function useExerciseSets(module: Module) {
  const all = useAllExerciseSets();
  return setsOf(all, module);
}

// Exercises ticked "done", per set path → section ids ("ex1"…). Kept on this device only.
const DONE_KEY = "hippoqcm.exercisesDone";
function readDone(): Record<string, string[]> {
  try {
    return JSON.parse(localStorage.getItem(DONE_KEY) ?? "{}") as Record<string, string[]>;
  } catch {
    return {};
  }
}
const doneIn = (path: string) => readDone()[path] ?? [];
function toggleDone(path: string, id: string) {
  const all = readDone();
  const ids = new Set(all[path] ?? []);
  if (!ids.delete(id)) ids.add(id);
  all[path] = [...ids];
  try {
    localStorage.setItem(DONE_KEY, JSON.stringify(all));
  } catch {
    // Private mode: the tick just won't be remembered.
  }
  return all[path];
}

// Which tab the module page shows, remembered for the session so coming back from a set keeps it.
type ModuleTab = "lessons" | "exercises";
const tabKey = (module: Module) => `hippoqcm.moduleTab.${module.id}`;
function readTab(module: Module): ModuleTab {
  try {
    return sessionStorage.getItem(tabKey(module)) === "exercises" ? "exercises" : "lessons";
  } catch {
    return "lessons";
  }
}

function ExerciseRow({ set, onOpen }: { set: ExerciseSet; onOpen: () => void }) {
  const done = Math.min(doneIn(set.path).length, set.count);
  return (
    <li>
      <button className="module" onClick={onOpen}>
        <span className="name">
          <span className={done === set.count ? "check" : "check unread"}>
            <Icon name={done === set.count ? "check" : "pencil"} size={16} />
          </span>{" "}
          {set.title}
        </span>
        <span className="meta">
          {set.count} exercise{set.count === 1 ? "" : "s"}
          {done > 0 ? ` · ${done}/${set.count} done` : ""} · solved with {set.lessons.length} lesson
          {set.lessons.length === 1 ? "" : "s"}
        </span>
      </button>
    </li>
  );
}

const formatDate = (ms: number) => new Date(ms).toLocaleDateString(undefined, { day: "numeric", month: "short" });

type ModuleProps = {
  module: Module;
  onBack: () => void;
  onOpenLesson: (lesson: Lesson) => void;
  onOpenExercises: (set: ExerciseSet) => void;
  onStudy: (lessonsOnly: boolean) => void;
  onStudyLessons: (lessons: Lesson[]) => void;
  onExam: (lessons?: Lesson[]) => void;
};

export function ModulePage({ module, onBack, onOpenLesson, onOpenExercises, onStudy, onStudyLessons, onExam }: ModuleProps) {
  const { lessons, error, addRead, undoRead } = useLessons(module.id);
  const exercises = useExerciseSets(module);
  const [tab, setTabState] = useState<ModuleTab>(() => readTab(module));
  const setTab = (next: ModuleTab) => {
    setTabState(next);
    try {
      sessionStorage.setItem(tabKey(module), next);
    } catch {
      // Not remembered; harmless.
    }
  };
  const showExercises = tab === "exercises" && exercises.length > 0;
  const [picked, setPicked] = useState<Set<number>>(new Set());
  const selection = lessons?.filter((l) => picked.has(l.id)) ?? [];
  const pick = (ids: number[]) => setPicked(new Set(ids));
  const togglePick = (id: number) =>
    setPicked((prev) => {
      const next = new Set(prev);
      if (!next.delete(id)) next.add(id);
      return next;
    });

  return (
    <main>
      <ScreenHeader backLabel="Back" onBack={onBack}>
        <span className="meta">Semester {module.semester}</span>
      </ScreenHeader>
      <h1>{module.name}</h1>
      <div className="actions start">
        <button onClick={() => onStudy(false)} disabled={module.question_count === 0}>
          <Icon name="play" size={16} /> Study module · {module.due_count} due
        </button>
        {module.lesson_question_count > 0 && (
          <button className="secondary" onClick={() => onStudy(true)}>
            Only my lessons · {module.lesson_question_count} Qs
          </button>
        )}
        <button className="secondary" onClick={() => onExam()} disabled={module.question_count === 0}>
          <Icon name="timer" size={16} /> Mock exam
        </button>
      </div>

      {exercises.length > 0 ? (
        <div className="chips module-tabs" role="tablist">
          <button role="tab" aria-selected={!showExercises} className={showExercises ? "chip" : "chip on"} onClick={() => setTab("lessons")}>
            <Icon name="book" size={15} /> Lessons{lessons ? ` · ${lessons.length}` : ""}
          </button>
          <button role="tab" aria-selected={showExercises} className={showExercises ? "chip on" : "chip"} onClick={() => setTab("exercises")}>
            <Icon name="pencil" size={15} /> Exercises · {exercises.length}
          </button>
        </div>
      ) : (
        <h2>Lessons</h2>
      )}
      {showExercises ? (
        <ul className="modules">
          {exercises.map((set) => (
            <ExerciseRow key={set.path} set={set} onOpen={() => onOpenExercises(set)} />
          ))}
        </ul>
      ) : (
      <>
      {error && <p className="error">Couldn't load lessons: {error}</p>}
      {lessons && lessons.length === 0 && (
        <p className="meta">No lessons yet. Finish one, then run <code>/lesson path/to/lesson.pdf</code>.</p>
      )}
      {lessons && lessons.length > 1 && (
        <p className="meta lesson-pick">
          Select:{" "}
          <button className="link" onClick={() => pick(lessons.map((l) => l.id))}>all</button> ·{" "}
          <button className="link" onClick={() => pick(lessons.filter((l) => l.read_at).map((l) => l.id))}>read</button>
          {picked.size > 0 && (
            <> · <button className="link" onClick={() => pick([])}>none</button></>
          )}
        </p>
      )}
      <ul className="modules">
        {lessons?.map((l) => (
          <li key={l.id} className={picked.has(l.id) ? "lesson-item picked" : "lesson-item"}>
            <input
              type="checkbox"
              checked={picked.has(l.id)}
              onChange={() => togglePick(l.id)}
              aria-label={`Select ${l.title}`}
            />
            <button className="module" onClick={() => onOpenLesson(l)}>
              <span className="name">
                <span className={l.read_at ? "check" : "check unread"}><Icon name={l.read_at ? "check" : "book"} size={16} /></span> {l.title}
              </span>
              <span className="meta">
                {l.question_count} Qs ({l.exam_count} exam) · {l.due_count} due
                {readCount(l, "summary") > 0 && <> · summary read {readCount(l, "summary")}×</>}
              </span>
            </button>
            <ReadButton lesson={l} kind="pdf" onRead={() => addRead(l, "pdf")} onUndo={() => undoRead(l, "pdf")} />
          </li>
        ))}
      </ul>
      {selection.length > 0 && (
        <div className="actions start selection-bar">
          <button onClick={() => onStudyLessons(selection)} disabled={selection.every((l) => l.question_count === 0)}>
            Study {selection.length} lesson{selection.length === 1 ? "" : "s"}
          </button>
          <button className="secondary" onClick={() => onExam(selection)} disabled={selection.every((l) => l.question_count === 0)}>
            <Icon name="timer" size={16} /> Mock exam on {selection.length === 1 ? "it" : "them"}
          </button>
        </div>
      )}
      </>
      )}
    </main>
  );
}

type LessonProps = {
  module: Module;
  lessonId: number;
  onBack: () => void;
  onStudy: (lesson: Lesson) => void;
  onOpenExercises: (set: ExerciseSet) => void;
};

export function LessonPage({ module, lessonId, onBack, onStudy, onOpenExercises }: LessonProps) {
  const { lessons, error, addRead, undoRead } = useLessons(module.id);
  const moduleSets = useExerciseSets(module);
  const lesson = lessons?.find((l) => l.id === lessonId);
  const hasSummary = useHasSummary(lesson?.pdf);
  const [view, setView] = useState<ReadKind>("summary");
  // A PDF page a summary links to ("/lessons/x.pdf#page=3"), shown in the PDF tab until the tabs are switched.
  const [target, setTarget] = useState<{ url: string; page?: number } | null>(null);
  const touch = useTouch();
  const show = (kind: ReadKind) => {
    setTarget(null);
    setView(kind);
  };
  // The read button counts whichever one is on screen.
  const kind: ReadKind = hasSummary ? view : "pdf";

  const header = (
    <ScreenHeader backLabel={module.name} onBack={onBack}>
      {lesson && (
        <ReadButton lesson={lesson} kind={kind} onRead={() => addRead(lesson, kind)} onUndo={() => undoRead(lesson, kind)} />
      )}
    </ScreenHeader>
  );

  if (error) return <main>{header}<p className="error">{error}</p></main>;
  if (!lessons) return <main>{header}<Skeleton /></main>;
  if (!lesson) return <main>{header}<p className="error">Lesson not found</p></main>;

  const lessonSets = moduleSets.filter((set) => set.lessons.includes(lesson.pdf));
  const pdfUrl = target?.url ?? `/lessons/${lesson.pdf}`;
  const showSummary = hasSummary && view === "summary";
  const docUrl = showSummary
    ? `/summaries/${lesson.pdf.replace(/\.pdf$/, ".html")}`
    : target?.page ? `${pdfUrl}#page=${target.page}` : pdfUrl;
  // Links from the summary to a lesson PDF open in the PDF tab, not inside the summary's frame.
  const catchPdfLinks = (frame: HTMLIFrameElement) => {
    frame.contentDocument?.addEventListener("click", (e) => {
      const link = (e.target as Element).closest?.("a[href]") as HTMLAnchorElement | null;
      const url = link && new URL(link.href, location.href);
      if (!url || url.origin !== location.origin || !url.pathname.match(/^\/lessons\/.+\.pdf$/)) return;
      e.preventDefault();
      const page = Number(url.hash.match(/page=(\d+)/)?.[1]) || undefined;
      setView("pdf");
      setTarget({ url: url.pathname, page });
    });
  };
  return (
    <main className="wide">
      {header}
      <h1>{lesson.title}</h1>
      {lessonSets.length > 0 && (
        <div className="lesson-exercises">
          <span className="meta">Practice exercises:</span>
          {lessonSets.map((set) => (
            <button key={set.path} className="chip" onClick={() => onOpenExercises(set)}>
              <Icon name="pencil" size={14} /> {set.title}
            </button>
          ))}
        </div>
      )}
      <div className="actions start">
        <button onClick={() => onStudy(lesson)} disabled={lesson.question_count === 0}>
          Practice · {lesson.due_count} due
        </button>
        <span className="meta">
          {lesson.question_count} questions · {lesson.exam_count} from past exams ·{" "}
          {lesson.question_count - lesson.exam_count} generated
        </span>
      </div>
      <div className="pdf-bar">
        {hasSummary ? (
          <div className="chips">
            <button className={showSummary ? "chip on" : "chip"} onClick={() => show("summary")}>Summary</button>
            <button className={showSummary ? "chip" : "chip on"} onClick={() => show("pdf")}>PDF</button>
          </div>
        ) : (
          <span className="meta">Lesson PDF</span>
        )}
        <a className="pdf-open" href={docUrl} target="_blank" rel="noreferrer">Open in new tab <Icon name="external" size={14} /></a>
      </div>
      {showSummary || !touch ? (
        <iframe
          key={docUrl}
          className={showSummary ? "pdf summary" : "pdf"}
          src={docUrl}
          title={`${lesson.title} ${showSummary ? "summary" : "PDF"}`}
          onLoad={(e) => showSummary && catchPdfLinks(e.currentTarget)}
        />
      ) : (
        <Suspense fallback={<p className="meta">Loading PDF…</p>}>
          <PdfViewer url={pdfUrl} page={target?.page} title={`${lesson.title} PDF`} />
        </Suspense>
      )}
    </main>
  );
}

// One TD set: the worked exercises, and the TD sheet or a lesson PDF page its solutions link to.
export function ExercisePage({ module, set, onBack }: { module: Module; set: ExerciseSet; onBack: () => void }) {
  // A PDF the page links to ("/lessons/x.pdf#page=3"), or the TD sheet; null = the exercises.
  const [target, setTarget] = useState<{ url: string; page?: number } | null>(null);
  const touch = useTouch();
  const pageUrl = `/exercises/${set.path}`;
  const docUrl = !target ? pageUrl : target.page ? `${target.url}#page=${target.page}` : target.url;
  const sheet = set.pdf && `/exercises/${set.pdf}`;
  const [done, setDone] = useState<string[]>(() => doneIn(set.path));
  const [solutionsOpen, setSolutionsOpen] = useState(false);
  const frame = useRef<HTMLIFrameElement | null>(null);
  const doneCount = Math.min(done.length, set.count);

  const openSolutions = (open: boolean, doc = frame.current?.contentDocument) => {
    doc?.querySelectorAll<HTMLDetailsElement>("details.solution").forEach((d) => (d.open = open));
  };
  const toggleSolutions = () => {
    openSolutions(!solutionsOpen);
    setSolutionsOpen(!solutionsOpen);
  };

  // Inside the exercises page: PDF links open below instead of inside the frame, and each exercise gets a
  // "Mark done" button (ticks kept in localStorage, counted on the module page).
  const setUpFrame = (el: HTMLIFrameElement) => {
    frame.current = el;
    const doc = el.contentDocument;
    if (!doc) return;
    doc.addEventListener("click", (e) => {
      const link = (e.target as Element).closest?.("a[href]") as HTMLAnchorElement | null;
      const url = link && new URL(link.href, location.href);
      if (!url || url.origin !== location.origin || !url.pathname.match(/^\/(lessons|exercises)\/.+\.pdf$/)) return;
      e.preventDefault();
      setTarget({ url: url.pathname, page: Number(url.hash.match(/page=(\d+)/)?.[1]) || undefined });
    });
    const style = doc.createElement("style");
    style.textContent = `
      .ex-done { margin-left: 8px; vertical-align: middle; font: 600 0.8rem system-ui, sans-serif; padding: 4px 10px;
        border-radius: 999px; border: 1px solid var(--border); background: var(--surface); color: var(--muted); cursor: pointer; }
      .ex-done.on { background: var(--ok-bg); border-color: var(--ok); color: var(--ok); }
      section.exercise.done { border-color: var(--ok); }
      .toc a.done::after { content: " ✓"; color: var(--ok); }`;
    doc.head.append(style);
    for (const section of doc.querySelectorAll<HTMLElement>("section.exercise[id]")) {
      const heading = section.querySelector("h2");
      if (!heading || heading.querySelector(".ex-done")) continue;
      const button = doc.createElement("button");
      button.type = "button";
      button.className = "ex-done";
      const tocLink = doc.querySelector<HTMLAnchorElement>(`.toc a[href="#${section.id}"]`);
      const paint = (ids: string[]) => {
        const on = ids.includes(section.id);
        button.classList.toggle("on", on);
        button.textContent = on ? "✓ Done" : "Mark done";
        button.setAttribute("aria-pressed", String(on));
        section.classList.toggle("done", on);
        tocLink?.classList.toggle("done", on);
      };
      button.addEventListener("click", () => {
        const ids = toggleDone(set.path, section.id);
        paint(ids);
        setDone(ids);
      });
      paint(doneIn(set.path));
      heading.append(button);
    }
    if (solutionsOpen) openSolutions(true, doc);
  };
  return (
    <main className="wide">
      <ScreenHeader backLabel={module.name} onBack={onBack} />
      <h1>{set.title}</h1>
      <div className="actions start">
        <span className="meta">
          {doneCount}/{set.count} exercise{set.count === 1 ? "" : "s"} done
        </span>
        {!target && (
          <button className="secondary" onClick={toggleSolutions}>
            {solutionsOpen ? "Hide all solutions" : "Show all solutions"}
          </button>
        )}
      </div>
      <div className="pdf-bar">
        <div className="chips">
          <button className={target ? "chip" : "chip on"} onClick={() => setTarget(null)}>Exercises</button>
          {sheet && (
            <button className={target?.url === sheet ? "chip on" : "chip"} onClick={() => setTarget({ url: sheet })}>TD sheet</button>
          )}
          {target && target.url !== sheet && <button className="chip on">Lesson PDF{target.page ? ` · p. ${target.page}` : ""}</button>}
        </div>
        <a className="pdf-open" href={docUrl} target="_blank" rel="noreferrer">Open in new tab <Icon name="external" size={14} /></a>
      </div>
      {!target || !touch ? (
        <iframe
          key={docUrl}
          className={target ? "pdf" : "pdf summary"}
          src={docUrl}
          title={`${set.title} ${target ? "PDF" : "exercises"}`}
          onLoad={(e) => !target && setUpFrame(e.currentTarget)}
        />
      ) : (
        <Suspense fallback={<p className="meta">Loading PDF…</p>}>
          <PdfViewer url={target.url} page={target.page} title={`${set.title} PDF`} />
        </Suspense>
      )}
    </main>
  );
}
