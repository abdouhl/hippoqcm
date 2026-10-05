import { useCallback, useEffect, useState } from "react";
import type { Lesson, Module } from "../shared/types";
import Decks from "./Decks";
import { LessonPage, ModulePage } from "./Lessons";
import { Footer, NotFound, StaticPage, isPage } from "./Pages";
import Study from "./Study";

type View =
  | { kind: "home" }
  | { kind: "module"; module: Module }
  | { kind: "lesson"; module: Module; lesson: Lesson }
  | { kind: "study"; title: string; endpoint: string; back: View; backLabel: string };

export default function App() {
  const [modules, setModules] = useState<Module[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [view, setView] = useState<View>({ kind: "home" });
  const [path, setPath] = useState(() => window.location.pathname);

  useEffect(() => {
    const onPop = () => setPath(window.location.pathname);
    window.addEventListener("popstate", onPop);
    return () => window.removeEventListener("popstate", onPop);
  }, []);

  const navigate = useCallback((to: string) => {
    if (to !== window.location.pathname) window.history.pushState(null, "", to);
    setPath(to);
    setView({ kind: "home" });
    window.scrollTo(0, 0);
  }, []);

  const loadModules = useCallback(() => {
    fetch("/api/modules")
      .then((r) => (r.ok ? r.json() : Promise.reject(new Error(`HTTP ${r.status}`))))
      .then(setModules)
      .catch((e: Error) => setError(e.message));
  }, []);

  useEffect(loadModules, [loadModules]);

  const page = path.replace(/^\/+|\/+$/g, "");
  useEffect(() => {
    document.title = isPage(page) ? `${page[0].toUpperCase()}${page.slice(1)} · HippoQCM` : "HippoQCM";
  }, [page]);

  if (isPage(page)) return <StaticPage page={page} navigate={navigate} />;
  if (page !== "") return <NotFound navigate={navigate} />;

  if (view.kind === "study") {
    return (
      <Study
        title={view.title}
        endpoint={view.endpoint}
        backLabel={view.backLabel}
        onExit={() => {
          setView(view.back);
          loadModules(); // refresh due counts
        }}
      />
    );
  }

  if (view.kind === "module") {
    // Use the freshest counts after returning from a study session.
    const module = modules?.find((m) => m.id === view.module.id) ?? view.module;
    return (
      <ModulePage
        module={module}
        onBack={() => setView({ kind: "home" })}
        onOpenLesson={(lesson) => setView({ kind: "lesson", module, lesson })}
        onStudy={(lessonsOnly) =>
          setView({
            kind: "study",
            title: `${module.name} · S${module.semester}${lessonsOnly ? " · my lessons" : ""}`,
            endpoint: `/api/modules/${module.id}/study${lessonsOnly ? "?lessons=1" : ""}`,
            back: view,
            backLabel: module.name,
          })
        }
      />
    );
  }

  if (view.kind === "lesson") {
    return (
      <LessonPage
        module={view.module}
        lessonId={view.lesson.id}
        onBack={() => setView({ kind: "module", module: view.module })}
        onStudy={(lesson) =>
          setView({
            kind: "study",
            title: lesson.title,
            endpoint: `/api/lessons/${lesson.id}/study`,
            back: { kind: "lesson", module: view.module, lesson },
            backLabel: "Lesson",
          })
        }
      />
    );
  }

  if (error) return <main><p className="error">Couldn't load modules: {error}</p></main>;
  if (!modules) return <main><p>Loading…</p></main>;

  return (
    <main>
      <h1 className="brand">
        <img src="/logo.svg" alt="" width="36" height="36" />
        <span><span>Hippo<em>QCM</em></span><small>Medical MCQs, spaced out</small></span>
      </h1>
      <Decks
        modules={modules}
        onStudy={({ title, endpoint }) =>
          setView({ kind: "study", title, endpoint, back: { kind: "home" }, backLabel: "Decks" })
        }
        onOpenModule={(module) => setView({ kind: "module", module })}
        onOpenLesson={(module, lesson) => setView({ kind: "lesson", module, lesson })}
      />
      <Footer navigate={navigate} />
    </main>
  );
}
