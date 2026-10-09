import type { MouseEvent, ReactNode } from "react";

export const CONTACT_EMAIL = "abderahmane@elhellal.com";
const UPDATED = "8 October 2026";

export type PageKey = "about" | "privacy" | "terms" | "contact";

export const PAGES: Record<PageKey, { title: string; body: () => ReactNode }> = {
  about: { title: "About HippoQCM", body: About },
  privacy: { title: "Privacy", body: Privacy },
  terms: { title: "Terms of use", body: Terms },
  contact: { title: "Contact", body: Contact },
};

export const isPage = (key: string): key is PageKey => key in PAGES;

type Navigate = (path: string) => void;

/** Same-tab link that goes through the app's history router instead of a full reload. */
export function Link({ to, navigate, children }: { to: string; navigate: Navigate; children: ReactNode }) {
  const onClick = (e: MouseEvent<HTMLAnchorElement>) => {
    if (e.metaKey || e.ctrlKey || e.shiftKey || e.button !== 0) return;
    e.preventDefault();
    navigate(to);
  };
  return <a href={to} onClick={onClick}>{children}</a>;
}

export function Footer({ navigate }: { navigate: Navigate }) {
  return (
    <footer className="site-footer">
      <nav>
        <Link to="/about" navigate={navigate}>About</Link>
        <Link to="/privacy" navigate={navigate}>Privacy</Link>
        <Link to="/terms" navigate={navigate}>Terms</Link>
        <Link to="/contact" navigate={navigate}>Contact</Link>
      </nav>
      <p>Made in Annaba by a first-year medical student · not affiliated with the university</p>
    </footer>
  );
}

export function StaticPage({ page, navigate }: { page: PageKey; navigate: Navigate }) {
  const { title, body: Body } = PAGES[page];
  return (
    <main className="page">
      <header className="study-header">
        <Link to="/" navigate={navigate}>← Decks</Link>
      </header>
      <h1>{title}</h1>
      <Body />
      <Footer navigate={navigate} />
    </main>
  );
}

export function NotFound({ navigate }: { navigate: Navigate }) {
  return (
    <main className="page done">
      <p className="score">404</p>
      <p>This page doesn't exist.</p>
      <Link to="/" navigate={navigate}>Back to decks</Link>
    </main>
  );
}

const Mail = () => <a href={`mailto:${CONTACT_EMAIL}`}>{CONTACT_EMAIL}</a>;

function About() {
  return (
    <>
      <p className="lead">
        HippoQCM is a spaced-repetition MCQ trainer for first-year medicine at the Faculty of Medicine of Annaba.
        It was built by a first-year student to revise each lesson right after studying it, and to keep
        reviewing it until the EMDs.
      </p>
      <h2>How it works</h2>
      <ul>
        <li>
          <b>Past exams.</b> The decks contain questions from previous years' EMDs, sorted by year,
          semester and module.
        </li>
        <li>
          <b>Lessons.</b> When a lesson is finished, its past exam questions are linked to it and new
          exam-style questions are written from the lesson PDF. They focus on the topics that come up most
          often in past exams.
        </li>
        <li>
          <b>Spaced repetition.</b> Each answer is graded (Again, Hard, Good, Easy). The FSRS algorithm then
          schedules the next review just before you are likely to forget it. Questions you know come back
          less often, and the ones you miss come back sooner.
        </li>
        <li>
          <b>Activity.</b> The grid on the home page shows how many questions you reviewed each day.
        </li>
      </ul>
      <h2>Accuracy</h2>
      <p>
        Answer keys come from past exam corrections and the lesson material, but mistakes happen, especially
        in generated questions. If an answer looks wrong, tap <b>Flag</b> while studying and it will be
        checked against the lesson. Always trust your course and your teachers over this app.
      </p>
    </>
  );
}

function Privacy() {
  return (
    <>
      <p className="meta">Last updated {UPDATED}</p>
      <p className="lead">There are no sign-ups, ads or third-party trackers.</p>
      <h2>What is stored</h2>
      <ul>
        <li>
          <b>Study progress, on the server:</b> each review (which question, the grade you chose and when) and
          the resulting schedule for each card. This is what makes spaced repetition work. It is filed under a
          random sync code your device makes up on its first visit (the server keeps only a scrambled hash of
          it), not under your name, email or any other identity.
        </li>
        <li>
          <b>Flags:</b> when you flag a question, only the question is marked for review.
        </li>
        <li>
          <b>In your browser:</b> your sync code, which decks you left expanded, and questions saved for offline
          study. Clearing site data removes them, so keep a copy of your code (see <b>Save progress</b>).
        </li>
      </ul>
      <h2>What is not collected</h2>
      <p>
        HippoQCM collects no names, emails, passwords, location or analytics, and uses no cookies. Nothing is
        sold or shared.
      </p>
      <h2>Hosting</h2>
      <p>
        The app runs on Cloudflare, which processes standard request data (such as IP addresses) to serve and
        protect the site, under its own privacy policy.
      </p>
      <h2>Questions</h2>
      <p>
        To erase your progress, open <b>Save progress</b> and choose <b>Delete my progress</b>. For anything else
        about your data, write to <Mail />.
      </p>
    </>
  );
}

function Terms() {
  return (
    <>
      <p className="meta">Last updated {UPDATED}</p>
      <p className="lead">HippoQCM is a free, personal revision tool. By using it you accept the points below.</p>
      <h2>Study aid only</h2>
      <p>
        HippoQCM is for revising exams. It is not medical advice and must never be used to make decisions
        about a patient's diagnosis or treatment.
      </p>
      <h2>No guarantee</h2>
      <p>
        Questions and answer keys may contain errors or be out of date with the current program. The app is
        provided as is, with no guarantee of accuracy, availability or exam results. Your course, your
        teachers and the official corrections take precedence.
      </p>
      <h2>Not official</h2>
      <p>
        HippoQCM is an independent student project. It is not affiliated with or endorsed by the Faculty of
        Medicine of Annaba, Badji Mokhtar University, or any of their departments.
      </p>
      <h2>Content and copyright</h2>
      <p>
        Past exam questions and lesson PDFs belong to their authors and the faculty. They are reproduced
        here only for students' personal revision. If you own any of this content and want it credited or
        removed, write to <Mail /> and it will be handled promptly.
      </p>
      <h2>Fair use</h2>
      <p>
        Please don't scrape, overload or attempt to break the service. It is a small app run by one student.
      </p>
    </>
  );
}

function Contact() {
  return (
    <>
      <p className="lead">Questions, wrong answers, ideas or content requests are all welcome.</p>
      <p className="contact-email"><Mail /></p>
      <h2>Useful to include</h2>
      <ul>
        <li>For a wrong answer: the module, the question text, and what you think the right answer is (with the lesson page if you have it). For a single question, the <b>Flag</b> button is faster.</li>
        <li>For a missing lesson or exam year: the module and, if you can, the PDF.</li>
        <li>For copyright: the content concerned and whether you want it credited or removed.</li>
      </ul>
    </>
  );
}
