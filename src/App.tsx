import { useCallback, useEffect, useRef, useState } from "react";
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
  | { kind: "study"; title: string; endpoint: string; backLabel: string }
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

  const loadModules = useCallback(() => {
    getJSON<Module[]>("/api/modules")
      .then(setModules)
      .catch((e: Error) => setError(e.message));
  }, []);

  // Each screen opened gets a history entry, so the phone's back button or swipe goes back a screen
  // instead of closing the installed app. `stack` holds the screens under the current one.
  const stack = useRef<View[]>([]);
  const viewRef = useRef(view);
  viewRef.current = view;

  const open = useCallback((next: View) => {
    stack.current.push(viewRef.current);
    window.history.pushState({ depth: stack.current.length }, "");
    viewRef.current = next;
    setView(next);
    window.scrollTo(0, 0);
  }, []);

  // In-app back buttons go through history too, so it stays in step with the screen shown.
  const back = useCallback(() => {
    if (stack.current.length > 0) window.history.back();
    else setView({ kind: "home" });
  }, []);

  useEffect(() => {
    const onPop = (e: PopStateEvent) => {
      setPath(window.location.pathname);
      const depth = typeof e.state?.depth === "number" ? e.state.depth : 0;
      if (stack.current.length <= depth) return;
      const left = viewRef.current.kind;
      let prev = viewRef.current;
      while (stack.current.length > depth) prev = stack.current.pop()!;
      setView(prev);
      if (left === "study" || left === "exam") loadModules(); // refresh due counts
      window.scrollTo(0, 0);
    };
    window.addEventListener("popstate", onPop);
    return () => window.removeEventListener("popstate", onPop);
  }, [loadModules]);

  const navigate = useCallback((to: string) => {
    if (to !== window.location.pathname) window.history.pushState(null, "", to);
    stack.current = [];
    setPath(to);
    setView({ kind: "home" });
    window.scrollTo(0, 0);
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
        onExit={back}
      />
    );
  }

  if (view.kind === "exam") {
    return (
      <Exam
        module={view.module}
        lessons={view.lessons}
        onExit={back}
      />
    );
  }

  if (view.kind === "account") {
    return <Account incoming={view.incoming} onBack={back} />;
  }

  if (view.kind === "settings") {
    return <Settings onBack={back} />;
  }

  if (view.kind === "insights") {
    if (!modules) return <main><p>Loading…</p></main>;
    return (
      <Insights
        modules={modules}
        onBack={back}
        onStudy={({ title, endpoint }) =>
          open({ kind: "study", title, endpoint, backLabel: "Insights" })
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
        onBack={back}
        onOpenLesson={(lesson) => open({ kind: "lesson", module, lesson })}
        onExam={(lessons) => open({ kind: "exam", module, lessons })}
        onStudyLessons={(lessons) =>
          open({
            kind: "study",
            title: lessons.length === 1 ? lessons[0].title : `${module.name} · ${lessons.length} lessons`,
            endpoint: `/api/modules/${module.id}/study?ids=${lessons.map((l) => l.id).join(",")}`,
            backLabel: module.name,
          })
        }
        onStudy={(lessonsOnly) =>
          open({
            kind: "study",
            title: `${module.name} · S${module.semester}${lessonsOnly ? " · my lessons" : ""}`,
            endpoint: `/api/modules/${module.id}/study${lessonsOnly ? "?lessons=1" : ""}`,
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
        onBack={back}
        onStudy={(lesson) =>
          open({
            kind: "study",
            title: lesson.title,
            endpoint: `/api/lessons/${lesson.id}/study`,
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
          <button className="link" onClick={() => open({ kind: "insights" })}>📊 Insights</button>
          <button className="link" onClick={() => open({ kind: "settings" })}>⚙ Settings</button>
          <button className="link" onClick={() => open({ kind: "account", incoming: null })}>🔑 Save progress</button>
        </span>
        <SyncBadge />
      </nav>
      {needsCodeReminder() && (
        <button className="code-reminder" onClick={() => open({ kind: "account", incoming: null })}>
          <b>Don't lose your progress.</b> Save your sync code so you can restore it on another device or after
          clearing your browser. →
        </button>
      )}
      <Decks
        modules={modules}
        onStudy={({ title, endpoint }) =>
          open({ kind: "study", title, endpoint, backLabel: "Decks" })
        }
        onOpenModule={(module) => open({ kind: "module", module })}
        onOpenLesson={(module, lesson) => {
          // Put the module under the lesson, so back goes where the lesson's "← Module" says.
          open({ kind: "module", module });
          open({ kind: "lesson", module, lesson });
        }}
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
