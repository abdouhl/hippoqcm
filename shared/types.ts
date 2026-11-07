export type Module = {
  id: number;
  semester: 1 | 2;
  name: string;
  question_count: number;
  due_count: number; // new + learn + review
  new_count: number; // never seen
  learn_count: number; // learning/relearning, due now
  review_count: number; // graduated reviews, due now
  lesson_count: number;
  lesson_question_count: number; // questions linked to at least one lesson
  calc_count?: number; // questions that need a calculation; missing from servers older than it
  read_new_count?: number; // never seen, linked to a lesson you've marked read; missing from older servers
};

// One "mark as read" press, of the lesson PDF or of its summary page.
export type ReadKind = "pdf" | "summary";
export type LessonRead = { kind: ReadKind; at: number }; // at = unix ms

export type Lesson = {
  id: number;
  module_id: number;
  title: string;
  pdf: string; // path under /lessons
  position: number;
  completed_at: number; // unix ms, when the lesson was added
  read_at: number | null; // unix ms, this user's latest read; null = unread
  reads: LessonRead[]; // every read by this user, oldest first
  question_count: number;
  exam_count: number;
  due_count: number;
  new_count: number;
  learn_count: number;
  review_count: number;
};

// Reviews done on one local day; day = days since the unix epoch in the client's timezone.
export type ActivityDay = { day: number; count: number };

export type Label = "A" | "B" | "C" | "D" | "E";

export type Option = {
  label: Label;
  text: string;
  is_correct: 0 | 1;
};

// Mirrors the `cards` table; dates are unix ms.
export type CardRow = {
  due: number;
  stability: number;
  difficulty: number;
  elapsed_days: number;
  scheduled_days: number;
  learning_steps: number;
  reps: number;
  lapses: number;
  state: number;
  last_review: number | null;
};

export type StudyQuestion = {
  id: number;
  module_id: number;
  stem: string;
  explanation: string | null;
  image: string | null; // path under /images
  source: string | null;
  origin: "exam" | "generated";
  pdf: string | null; // lesson PDF for generated questions, path under /lessons
  pdf_page: number | null;
  exam_weight?: number; // exam sessions that asked this topic; missing in snapshots saved before it existed
  calc?: number; // 1 = answering needs a calculation (done without a calculator in the exam); missing in older snapshots
  mental?: string | null; // how to do that calculation by hand: shortcuts, rounding, which options estimation rules out
  lesson_ids?: number[]; // lessons the question is linked to; missing in older snapshots
  options: Option[];
  card: CardRow | null; // null = never reviewed
};

export type ReviewInput = {
  question_id: number;
  rating: 1 | 2 | 3 | 4;
  correct: boolean;
  selected: string;
  card: CardRow | null; // null = logged without moving the schedule (a mock-exam answer to a question not due yet)
  reviewed_at: number;
  // What the scheduler knew before the answer, for fitting parameters (scripts/optimize.ts) and calibration.
  state?: number;
  elapsed_days?: number | null;
  retrievability?: number | null;
  duration_ms?: number | null;
  guessed?: boolean;
  exam?: boolean;
};

// Review counts for one slice; recent_* cover the last RECENT_DAYS days, avg_ms the timed answers.
export type ReviewStats = { reviews: number; correct: number; recent_reviews: number; recent_correct: number; avg_ms: number | null };

export type Insights = {
  recent_days: number;
  modules: ({ module_id: number } & ReviewStats)[];
  lessons: ({ id: number; module_id: number; title: string; position: number } & ReviewStats)[];
  // Cards per module by maturity: learning/relearning, young (stability < 21 d), mature (≥ 21 d).
  maturity: { module_id: number; learning: number; young: number; mature: number }[];
  // Reviews per local week (week = Monday-start index: epoch day of its Monday = week * 7 - 3).
  weeks: { week: number; reviews: number; correct: number }[];
  // Reviews split by "Not sure", question origin and outcome, with total answer time for the timed ones.
  breakdown: { guessed: 0 | 1; origin: "exam" | "generated"; correct: 0 | 1; reviews: number; timed: number; total_ms: number }[];
  leeches: { id: number; module_id: number; stem: string; lapses: number; reps: number }[];
  // Wrong answers split by cause: ticked a false option only, missed a true one only, or both.
  errors: { total: number; extra: number; missed: number; both: number };
  // Reviews bucketed by the predicted chance of recall (bucket 7 = 70–79%), against how often they were right.
  calibration: { bucket: number; reviews: number; correct: number }[];
  // Lessons marked read (PDF or summary) at least once, per module; missing from older servers.
  lessons_read?: { module_id: number; read: number }[];
};

// How a mock exam is graded; chosen in Settings.
export type Scoring = "all-or-nothing" | "partial";

// A past exam paper of a module, rebuilt from question sources like "EMD1 2024-2025 Q17".
export type Paper = { paper: string; count: number; missing: number[] }; // missing = question numbers not in the app

// One mock exam handed in.
export type ExamAttempt = {
  started_at: number; // unix ms
  module_id: number;
  paper: string | null; // "EMD1 2024-2025"; null = random mock exam
  submitted_at: number;
  questions: number;
  correct: number; // answers exactly right
  score: number; // out of 20, under `scoring`
  scoring: Scoring;
};

// Offline copy of the deck tree and every unflagged question, from /api/snapshot.
export type Snapshot = {
  modules: Pick<Module, "id" | "semester" | "name">[];
  lessons: Pick<Lesson, "id" | "module_id" | "title" | "pdf" | "position" | "completed_at" | "reads">[];
  questions: (StudyQuestion & { lesson_ids: number[] })[];
  content_version: number; // bumped by any change to modules, lessons or questions
  prefs: SyncedPrefs;
  attempts?: ExamAttempt[]; // this user's handed-in mock exams; missing from older servers
  fsrs_w: number[] | null; // FSRS weights fitted for this user (or everyone); null = defaults
  fetched_at: number; // unix ms
};

// Study settings saved under a sync code; null until a device saves some.
export type SyncedPrefs = { settings: Record<string, unknown>; updated_at: number } | null;

// /api/snapshot?content=<version> when the caller's content is current: only the caller's progress.
export type SnapshotUpdate = {
  content_version: number;
  cards: ({ question_id: number } & CardRow)[];
  reads: { lesson_id: number; kind: ReadKind; read_at: number }[];
  prefs: SyncedPrefs;
  attempts?: ExamAttempt[];
  fsrs_w: number[] | null;
  fetched_at: number;
};

// Progress tied to a sync code, from /api/account.
export type Account = { created_at: number; reviews: number; cards: number };
