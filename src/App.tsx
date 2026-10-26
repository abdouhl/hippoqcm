import { useCallback, useEffect, useRef, useState } from "react";
import type { Lesson, Module } from "../shared/types";
import Account from "./Account";
import { getJSON } from "./api";
import Decks from "./Decks";
import Exam from "./Exam";
import { Icon, type IconName } from "./icons";
import Insights from "./Insights";
import { LessonPage, ModulePage } from "./Lessons";
import { Footer, NotFound, StaticPage, isPage } from "./Pages";
import Settings from "./Settings";
import { SyncBadge } from "./SyncBadge";
import Study from "./Study";
import Today from "./Today";
import { Skeleton, transition } from "./ui";

type Tab = "home" | "decks" | "insights" | "settings";

type View =
  | { kind: Tab }
  | { kind: "module"; module: Module }
  | { kind: "lesson"; module: Module; lesson: Lesson }
  | { kind: "study"; title: string; endpoint: string; backLabel: string }
  | { kind: "exam"; module: Module; lessons?: Lesson[] }
  | { kind: "account"; incoming: string | null };

const TABS: { kind: Tab; label: string; icon: IconName }[] = [
  { kind: "home", label: "Today", icon: "today" },
  { kind: "decks", label: "Decks", icon: "decks" },
  { kind: "insights", label: "Insights", icon: "insights" },
  { kind: "settings", label: "Settings", icon: "settings" },
];
const isTab = (kind: View["kind"]): kind is Tab => TABS.some((t) => t.kind === kind);

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

  const show = (next: View) => {
    viewRef.current = next;
    setView(next);
    window.scrollTo(0, 0);
  };

  const open = useCallback((next: View) => {
    stack.current.push(viewRef.current);
    window.history.pushState({ depth: stack.current.length }, "");
    transition(() => show(next), "forward");
  }, []);

  // In-app back buttons go through history too, so it stays in step with the screen shown.
  const back = useCallback(() => {
    if (stack.current.length > 0) window.history.back();
    else transition(() => show({ kind: "home" }), "back");
  }, []);

  // Tabs sit side by side above Today: going from Today to a tab opens it (so back returns to Today),
  // from one tab to another swaps it in place, and Today goes all the way back.
  const switchTab = useCallback(
    (tab: Tab) => {
      const current = viewRef.current.kind;
      if (tab === current) return window.scrollTo({ top: 0, behavior: "smooth" });
      if (tab === "home") {
        if (stack.current.length > 0) window.history.go(-stack.current.length);
        else transition(() => show({ kind: "home" }), "tab");
      } else if (current === "home") {
        stack.current.push(viewRef.current);
        window.history.pushState({ depth: stack.current.length }, "");
        transition(() => show({ kind: tab }), "tab");
      } else {
        transition(() => show({ kind: tab }), "tab");
      }
    },
    [],
  );

  useEffect(() => {
    const onPop = (e: PopStateEvent) => {
      setPath(window.location.pathname);
      const depth = typeof e.state?.depth === "number" ? e.state.depth : 0;
      if (stack.current.length <= depth) return;
      const left = viewRef.current.kind;
      let prev = viewRef.current;
      while (stack.current.length > depth) prev = stack.current.pop()!;
      const update = () => show(prev);
      // iOS already animates its swipe back; don't slide the screen a second time.
      if ((e as PopStateEvent & { hasUAVisualTransition?: boolean }).hasUAVisualTransition) update();
      else transition(update, isTab(prev.kind) && isTab(left) ? "tab" : "back");
      if (left === "study" || left === "exam") loadModules(); // refresh due counts
    };
    window.addEventListener("popstate", onPop);
    return () => window.removeEventListener("popstate", onPop);
  }, [loadModules]);

  const navigate = useCallback((to: string) => {
    if (to !== window.location.pathname) window.history.pushState(null, "", to);
    stack.current = [];
    setPath(to);
    show({ kind: "home" });
  }, []);

  useEffect(loadModules, [loadModules]);

  const page = path.replace(/^\/+|\/+$/g, "");
  useEffect(() => {
    document.title = isPage(page) ? `${page[0].toUpperCase()}${page.slice(1)} · HippoQCM` : "HippoQCM";
  }, [page]);

  if (isPage(page)) return <StaticPage page={page} navigate={navigate} />;
  if (page !== "") return <NotFound navigate={navigate} />;

  const study = (target: { title: string; endpoint: string }, backLabel: string) =>
    open({ kind: "study", ...target, backLabel });

  if (view.kind === "study") {
    return <Study title={view.title} endpoint={view.endpoint} backLabel={view.backLabel} onExit={back} />;
  }

  if (view.kind === "exam") {
    return <Exam module={view.module} lessons={view.lessons} onExit={back} />;
  }

  if (view.kind === "account") {
    return <Account incoming={view.incoming} onBack={back} />;
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
          study(
            {
              title: lessons.length === 1 ? lessons[0].title : `${module.name} · ${lessons.length} lessons`,
              endpoint: `/api/modules/${module.id}/study?ids=${lessons.map((l) => l.id).join(",")}`,
            },
            module.name,
          )
        }
        onStudy={(lessonsOnly) =>
          study(
            {
              title: `${module.name} · S${module.semester}${lessonsOnly ? " · my lessons" : ""}`,
              endpoint: `/api/modules/${module.id}/study${lessonsOnly ? "?lessons=1" : ""}`,
            },
            module.name,
          )
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
        onStudy={(lesson) => study({ title: lesson.title, endpoint: `/api/lessons/${lesson.id}/study` }, "Lesson")}
      />
    );
  }

  // The four tabs.
  const openModule = (module: Module) => open({ kind: "module", module });
  let screen;
  if (view.kind === "settings") {
    screen = <Settings onAccount={() => open({ kind: "account", incoming: null })} navigate={navigate} />;
  } else if (error) {
    screen = <p className="error">Couldn't load modules: {error}</p>;
  } else if (!modules) {
    screen = <Skeleton kind="cards" />;
  } else if (view.kind === "insights") {
    screen = <Insights modules={modules} onStudy={(t) => study(t, "Insights")} />;
  } else if (view.kind === "decks") {
    screen = (
      <Decks
        modules={modules}
        onStudy={(t) => study(t, "Decks")}
        onOpenModule={openModule}
        onOpenLesson={(module, lesson) => {
          // Put the module under the lesson, so back goes where the lesson's "← Module" says.
          open({ kind: "module", module });
          open({ kind: "lesson", module, lesson });
        }}
      />
    );
  } else {
    screen = (
      <Today
        modules={modules}
        onStudy={(t) => study(t, "Today")}
        onOpenModule={openModule}
        onSettings={() => switchTab("settings")}
        onAccount={() => open({ kind: "account", incoming: null })}
      />
    );
  }

  return (
    <>
      <TabBar current={view.kind as Tab} onSwitch={switchTab} />
      <main className="tab-main">
        {screen}
        {view.kind === "home" && <Footer navigate={navigate} />}
      </main>
    </>
  );
}

// Bottom tab bar on phones; on wider screens the same buttons sit in a top bar with the logo.
function TabBar({ current, onSwitch }: { current: Tab; onSwitch: (tab: Tab) => void }) {
  return (
    <nav className="tabbar" aria-label="Main">
      <div className="tabbar-inner">
        <span className="brand tabbar-brand">
          <img src="/logo.svg" alt="" width="28" height="28" />
          <span>Hippo<em>QCM</em></span>
        </span>
        <div className="tabs">
          {TABS.map((t) => (
            <button
              key={t.kind}
              className={t.kind === current ? "tab on" : "tab"}
              aria-current={t.kind === current ? "page" : undefined}
              onClick={() => onSwitch(t.kind)}
            >
              <Icon name={t.icon} size={22} />
              <span>{t.label}</span>
            </button>
          ))}
        </div>
        <span className="tabbar-sync"><SyncBadge /></span>
      </div>
    </nav>
  );
}
