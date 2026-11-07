-- Every mock exam handed in, for the score history of each past paper and "exam readiness".
CREATE TABLE exam_attempts (
  user_id      INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  started_at   INTEGER NOT NULL,                 -- unix ms; with user_id, identifies the attempt
  module_id    INTEGER NOT NULL REFERENCES modules(id) ON DELETE CASCADE,
  paper        TEXT,                             -- "EMD1 2024-2025"; NULL = random mock exam
  submitted_at INTEGER NOT NULL,                 -- unix ms
  questions    INTEGER NOT NULL,
  correct      INTEGER NOT NULL,                 -- answers exactly right
  score        REAL    NOT NULL,                 -- out of 20, under `scoring`
  scoring      TEXT    NOT NULL,                 -- 'all-or-nothing' | 'partial'
  PRIMARY KEY (user_id, started_at)
);
CREATE INDEX idx_exam_attempts_module ON exam_attempts(user_id, module_id, submitted_at);
