-- Lessons: one per studied lesson PDF. A lesson exists once it's completed, so
-- completed_at is set on insert. pdf is a path under /lessons (e.g. "s1/cytology/membrane.pdf").
CREATE TABLE lessons (
  id           INTEGER PRIMARY KEY,
  module_id    INTEGER NOT NULL REFERENCES modules(id) ON DELETE CASCADE,
  title        TEXT    NOT NULL,
  pdf          TEXT    NOT NULL,
  position     INTEGER NOT NULL,
  completed_at INTEGER NOT NULL DEFAULT (unixepoch() * 1000), -- unix ms
  UNIQUE (module_id, title)
);
CREATE INDEX idx_lessons_module ON lessons(module_id);

-- Many-to-many: a past exam question can belong to several lessons.
CREATE TABLE question_lessons (
  question_id INTEGER NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  lesson_id   INTEGER NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
  PRIMARY KEY (question_id, lesson_id)
);
CREATE INDEX idx_question_lessons_lesson ON question_lessons(lesson_id);

-- 'exam' = from a past exam, 'generated' = written from a lesson PDF.
ALTER TABLE questions ADD COLUMN origin TEXT NOT NULL DEFAULT 'exam' CHECK (origin IN ('exam', 'generated'));
-- 1-based physical page in the lesson PDF the question is drawn from.
ALTER TABLE questions ADD COLUMN pdf_page INTEGER;
-- Flagged as wrong/bad from the study screen; hidden from study until fixed.
ALTER TABLE questions ADD COLUMN flagged INTEGER NOT NULL DEFAULT 0 CHECK (flagged IN (0, 1));
