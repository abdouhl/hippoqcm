import { useCallback, useEffect, useState } from "react";
import type { Lesson, Module } from "../shared/types";
import Account, { needsCodeReminder } from "./Account";
import { getJSON, syncNow, useSyncStatus } from "./api";
import Decks from "./Decks";
import Exam from "./Exam";
import Insights from "./Insights";
import { LessonPage, ModulePage } from "./Lessons";
import { Footer, NotFound, StaticPage, isPage } from "./Pages";
import Settings from "./Settings";
import Study from "./Study";

type View =
  | { kind: "home" }
  | { kind: "module"; module: Module }
  | { kind: "lesson"; module: Module; lesson: Lesson }
  | { kind: "study"; title: string; endpoint: string; back: View; backLabel: string }
  | { kind: "exam"; module: Module; lessons?: Lesson[] }
  | { kind: "insights" }
  | { kind: "settings" }
  | { kind: "account"; incoming: string | null };

// A restore link looks like https://…/#code=XXXX-XXXX-XXXX-XXXX. The code stays in the fragment so it
// never reaches the server's logs; it's taken out of the address bar as soon as it's read.
function takeIncomingCode(): string | null {
  const match = window.location.hash.match(/^#code=([\w-]+)$/);
  if (!match) return null;
  window.history.replaceState(null, "", window.location.pathname);
  return match[1];
}

export default function App() {
  const [modules, setModules] = useState<Module[] | null>(null);
  const [error, setError] = useState<string | null>(null);
  const [view, setView] = useState<View>(() => {
    const incoming = takeIncomingCode();
    return incoming ? { kind: "account", incoming } : { kind: "home" };
  });
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
    getJSON<Module[]>("/api/modules")
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

  if (view.kind === "exam") {
    return (
      <Exam
        module={view.module}
        lessons={view.lessons}
        onExit={() => {
          setView({ kind: "module", module: view.module });
          loadModules();
        }}
      />
    );
  }

  if (view.kind === "account") {
    return <Account incoming={view.incoming} onBack={() => setView({ kind: "home" })} />;
  }

  if (view.kind === "settings") {
    return <Settings onBack={() => setView({ kind: "home" })} />;
  }

  if (view.kind === "insights") {
    if (!modules) return <main><p>Loading…</p></main>;
    return (
      <Insights
        modules={modules}
        onBack={() => setView({ kind: "home" })}
        onStudy={({ title, endpoint }) =>
          setView({ kind: "study", title, endpoint, back: view, backLabel: "Insights" })
        }
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
        onExam={(lessons) => setView({ kind: "exam", module, lessons })}
        onStudyLessons={(lessons) =>
          setView({
            kind: "study",
            title: lessons.length === 1 ? lessons[0].title : `${module.name} · ${lessons.length} lessons`,
            endpoint: `/api/modules/${module.id}/study?ids=${lessons.map((l) => l.id).join(",")}`,
            back: view,
            backLabel: module.name,
          })
        }
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
      <nav className="home-nav">
        <span className="home-links">
          <button className="link" onClick={() => setView({ kind: "insights" })}>📊 Insights</button>
          <button className="link" onClick={() => setView({ kind: "settings" })}>⚙ Settings</button>
          <button className="link" onClick={() => setView({ kind: "account", incoming: null })}>🔑 Save progress</button>
        </span>
        <SyncBadge />
      </nav>
      {needsCodeReminder() && (
        <button className="code-reminder" onClick={() => setView({ kind: "account", incoming: null })}>
          <b>Don't lose your progress.</b> Save your sync code so you can restore it on another device or after
          clearing your browser. →
        </button>
      )}
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

// "just now", "5 min ago", "3 h ago", "2 d ago".
function ago(ms: number): string {
  const min = Math.floor((Date.now() - ms) / 60_000);
  if (min < 1) return "just now";
  if (min < 60) return `${min} min ago`;
  if (min < 60 * 24) return `${Math.floor(min / 60)} h ago`;
  return `${Math.floor(min / 60 / 24)} d ago`;
}

// Sync state; tap to sync now. Shows when the app is offline or has reviews waiting to sync.
function SyncBadge() {
  const { online, pending, snapshotAt } = useSyncStatus();
  const [syncing, setSyncing] = useState(false);
  const sync = async () => {
    setSyncing(true);
    await syncNow();
    setSyncing(false);
  };
  if (syncing) return <span className="sync">Syncing…</span>;
  if (online && pending === 0) {
    return snapshotAt ? (
      <button className="sync ok" title="Saved for offline study. Tap to sync now" onClick={sync}>
        ✓ Synced {ago(snapshotAt)}
      </button>
    ) : null;
  }
  return (
    <button className="sync off" title="Tap to sync now" onClick={sync}>
      {online ? "Syncing" : "Offline"}
      {pending > 0 && ` · ${pending} change${pending === 1 ? "" : "s"} to sync`}
    </button>
  );
}
