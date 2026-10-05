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
};

export type Lesson = {
  id: number;
  module_id: number;
  title: string;
  pdf: string; // path under /lessons
  position: number;
  completed_at: number; // unix ms
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
  stem: string;
  explanation: string | null;
  image: string | null; // path under /images
  source: string | null;
  origin: "exam" | "generated";
  pdf: string | null; // lesson PDF for generated questions, path under /lessons
  pdf_page: number | null;
  options: Option[];
  card: CardRow | null; // null = never reviewed
};

export type ReviewInput = {
  question_id: number;
  rating: 1 | 2 | 3 | 4;
  correct: boolean;
  selected: string;
  card: CardRow;
  reviewed_at: number;
};
