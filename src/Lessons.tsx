import { useEffect, useState } from "react";
import type { Lesson, LessonRead, Module, ReadKind } from "../shared/types";
import { addLessonRead, getJSON, undoLessonRead } from "./api";

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
        {last ? `✓ ${NOUN[kind]} read ${reads.length}×` : `Mark ${NOUN[kind]} read`}
      </button>
      {last && (
        <button className="read-undo" onClick={onUndo} title={`Undo the read of ${formatDate(last.at)}`} aria-label="Undo last read">
          ↶
        </button>
      )}
    </span>
  );
}

// Lesson pdf paths that have a summary page (public/summaries/index.json, written by scripts/summary.ts).
let summaries: Promise<Set<string>> | null = null;
function useHasSummary(pdf: string | undefined) {
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

const formatDate = (ms: number) => new Date(ms).toLocaleDateString(undefined, { day: "numeric", month: "short" });

type ModuleProps = {
  module: Module;
  onBack: () => void;
  onOpenLesson: (lesson: Lesson) => void;
  onStudy: (lessonsOnly: boolean) => void;
  onStudyLessons: (lessons: Lesson[]) => void;
  onExam: (lessons?: Lesson[]) => void;
};

export function ModulePage({ module, onBack, onOpenLesson, onStudy, onStudyLessons, onExam }: ModuleProps) {
  const { lessons, error, addRead, undoRead } = useLessons(module.id);
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
      <header className="study-header">
        <button className="link" onClick={onBack}>← Modules</button>
        <span className="meta">S{module.semester}</span>
      </header>
      <h1>{module.name}</h1>
      <div className="actions start">
        <button onClick={() => onStudy(false)} disabled={module.question_count === 0}>
          Study module · {module.due_count} due
        </button>
        {module.lesson_question_count > 0 && (
          <button className="secondary" onClick={() => onStudy(true)}>
            Only my lessons · {module.lesson_question_count} Qs
          </button>
        )}
        <button className="secondary" onClick={() => onExam()} disabled={module.question_count === 0}>
          ⏱ Mock exam
        </button>
      </div>

      <h2>Lessons</h2>
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
                <span className={l.read_at ? "check" : "check unread"}>{l.read_at ? "✓" : "○"}</span> {l.title}
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
            ⏱ Mock exam on {selection.length === 1 ? "it" : "them"}
          </button>
        </div>
      )}
    </main>
  );
}

type LessonProps = {
  module: Module;
  lessonId: number;
  onBack: () => void;
  onStudy: (lesson: Lesson) => void;
};

export function LessonPage({ module, lessonId, onBack, onStudy }: LessonProps) {
  const { lessons, error, addRead, undoRead } = useLessons(module.id);
  const lesson = lessons?.find((l) => l.id === lessonId);
  const hasSummary = useHasSummary(lesson?.pdf);
  const [view, setView] = useState<ReadKind>("summary");
  // The read button counts whichever one is on screen.
  const kind: ReadKind = hasSummary ? view : "pdf";

  const header = (
    <header className="study-header">
      <button className="link" onClick={onBack}>← {module.name}</button>
      {lesson && (
        <ReadButton lesson={lesson} kind={kind} onRead={() => addRead(lesson, kind)} onUndo={() => undoRead(lesson, kind)} />
      )}
    </header>
  );

  if (error) return <main>{header}<p className="error">{error}</p></main>;
  if (!lessons) return <main>{header}<p>Loading…</p></main>;
  if (!lesson) return <main>{header}<p className="error">Lesson not found</p></main>;

  const pdfUrl = `/lessons/${lesson.pdf}`;
  const showSummary = hasSummary && view === "summary";
  const docUrl = showSummary ? `/summaries/${lesson.pdf.replace(/\.pdf$/, ".html")}` : pdfUrl;
  return (
    <main className="wide">
      {header}
      <h1>{lesson.title}</h1>
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
            <button className={showSummary ? "chip on" : "chip"} onClick={() => setView("summary")}>Summary</button>
            <button className={showSummary ? "chip" : "chip on"} onClick={() => setView("pdf")}>PDF</button>
          </div>
        ) : (
          <span className="meta">Lesson PDF</span>
        )}
        <a className="pdf-open" href={docUrl} target="_blank" rel="noreferrer">Open in new tab ↗</a>
      </div>
      <iframe
        className={showSummary ? "pdf summary" : "pdf"}
        src={docUrl}
        title={`${lesson.title} ${showSummary ? "summary" : "PDF"}`}
      />
    </main>
  );
}
