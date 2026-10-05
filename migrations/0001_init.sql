-- Modules: one row per module per semester (Anatomie S1 and Anatomie S2 are separate).
CREATE TABLE modules (
  id        INTEGER PRIMARY KEY,
  semester  INTEGER NOT NULL CHECK (semester IN (1, 2)),
  name      TEXT    NOT NULL,
  UNIQUE (semester, name)
);

CREATE TABLE questions (
  id          INTEGER PRIMARY KEY,
  module_id   INTEGER NOT NULL REFERENCES modules(id) ON DELETE CASCADE,
  stem        TEXT    NOT NULL,
  explanation TEXT,
  -- Free-form origin, e.g. "EMD1 2023". "Rattrapage" lives here too.
  source      TEXT,
  created_at  INTEGER NOT NULL DEFAULT (unixepoch())
);
CREATE INDEX idx_questions_module ON questions(module_id);

-- Options A–E. A question is answered correctly only if the selected set
-- matches the set of is_correct options exactly (all-or-nothing).
CREATE TABLE options (
  id          INTEGER PRIMARY KEY,
  question_id INTEGER NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  label       TEXT    NOT NULL CHECK (label IN ('A', 'B', 'C', 'D', 'E')),
  text        TEXT    NOT NULL,
  is_correct  INTEGER NOT NULL DEFAULT 0 CHECK (is_correct IN (0, 1)),
  UNIQUE (question_id, label)
);

-- FSRS card state, one per question. Scheduling runs client-side (ts-fsrs);
-- the server just stores the resulting state.
CREATE TABLE cards (
  question_id    INTEGER PRIMARY KEY REFERENCES questions(id) ON DELETE CASCADE,
  due            INTEGER NOT NULL,          -- unix ms
  stability      REAL    NOT NULL,
  difficulty     REAL    NOT NULL,
  elapsed_days   INTEGER NOT NULL,
  scheduled_days INTEGER NOT NULL,
  learning_steps INTEGER NOT NULL DEFAULT 0,
  reps           INTEGER NOT NULL,
  lapses         INTEGER NOT NULL,
  state          INTEGER NOT NULL,          -- 0 New, 1 Learning, 2 Review, 3 Relearning
  last_review    INTEGER                    -- unix ms
);
CREATE INDEX idx_cards_due ON cards(due);

CREATE TABLE review_log (
  id          INTEGER PRIMARY KEY,
  question_id INTEGER NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  rating      INTEGER NOT NULL,             -- 1 Again, 2 Hard, 3 Good, 4 Easy
  correct     INTEGER NOT NULL CHECK (correct IN (0, 1)),
  selected    TEXT    NOT NULL,             -- e.g. "ACD"
  reviewed_at INTEGER NOT NULL              -- unix ms
);
CREATE INDEX idx_review_log_question ON review_log(question_id);

INSERT INTO modules (semester, name) VALUES
  (1, 'Anatomie'), (1, 'Biochimie'), (1, 'Biophysique'), (1, 'Biostatistique'),
  (1, 'Chimie'), (1, 'Cytologie'), (1, 'Embryologie'), (1, 'Physiologie'),
  (2, 'Anatomie'), (2, 'Biochimie'), (2, 'Biophysique'), (2, 'Chimie'),
  (2, 'Cytologie'), (2, 'Histologie'), (2, 'Informatique'), (2, 'SSH');
