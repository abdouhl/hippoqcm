import { useEffect, useState } from "react";
import type { Lesson, Module } from "../shared/types";
import { getJSON } from "./api";

function useLessons(moduleId: number) {
  const [lessons, setLessons] = useState<Lesson[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  useEffect(() => {
    getJSON<Lesson[]>(`/api/modules/${moduleId}/lessons`)
      .then(setLessons)
      .catch((e: Error) => setError(e.message));
  }, [moduleId]);
  return { lessons, error };
}

const formatDate = (ms: number) => new Date(ms).toLocaleDateString(undefined, { day: "numeric", month: "short" });

type ModuleProps = {
  module: Module;
  onBack: () => void;
  onOpenLesson: (lesson: Lesson) => void;
  onStudy: (lessonsOnly: boolean) => void;
  onExam: () => void;
};

export function ModulePage({ module, onBack, onOpenLesson, onStudy, onExam }: ModuleProps) {
  const { lessons, error } = useLessons(module.id);

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
        <button className="secondary" onClick={onExam} disabled={module.question_count === 0}>
          ⏱ Mock exam
        </button>
      </div>

      <h2>Lessons</h2>
      {error && <p className="error">Couldn't load lessons: {error}</p>}
      {lessons && lessons.length === 0 && (
        <p className="meta">No lessons yet. Finish one, then run <code>/lesson path/to/lesson.pdf</code>.</p>
      )}
      <ul className="modules">
        {lessons?.map((l) => (
          <li key={l.id}>
            <button className="module" onClick={() => onOpenLesson(l)}>
              <span className="name">
                <span className="check">✓</span> {l.title}
              </span>
              <span className="meta">
                {l.question_count} Qs ({l.exam_count} exam) · {l.due_count} due
              </span>
            </button>
          </li>
        ))}
      </ul>
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
  const { lessons, error } = useLessons(module.id);
  const lesson = lessons?.find((l) => l.id === lessonId);

  const header = (
    <header className="study-header">
      <button className="link" onClick={onBack}>← {module.name}</button>
      {lesson && <span className="meta">✓ Done {formatDate(lesson.completed_at)}</span>}
    </header>
  );

  if (error) return <main>{header}<p className="error">{error}</p></main>;
  if (!lessons) return <main>{header}<p>Loading…</p></main>;
  if (!lesson) return <main>{header}<p className="error">Lesson not found</p></main>;

  const pdfUrl = `/lessons/${lesson.pdf}`;
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
        <span className="meta">Lesson PDF</span>
        <a href={pdfUrl} target="_blank" rel="noreferrer">Open in new tab ↗</a>
      </div>
      <iframe className="pdf" src={pdfUrl} title={`${lesson.title} PDF`} />
    </main>
  );
}
