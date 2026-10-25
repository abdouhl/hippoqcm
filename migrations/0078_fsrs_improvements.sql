-- Scheduling improvements (src/fsrs.ts).

-- How often a question's topic came up in past exams: the number of exam sessions that asked it.
-- Exam questions count the sessions that repeated the same stem; generated ones get it from the
-- /lesson draft (`weight`), 0 when unknown.
ALTER TABLE questions ADD COLUMN exam_weight INTEGER NOT NULL DEFAULT 0;
UPDATE questions SET exam_weight = (
  SELECT COUNT(DISTINCT substr(o.source, 1, instr(o.source || ' Q', ' Q') - 1))
  FROM questions o
  WHERE o.module_id = questions.module_id AND o.origin = 'exam' AND lower(trim(o.stem)) = lower(trim(questions.stem))
)
WHERE origin = 'exam';

-- What the scheduler knew at each review, for fitting FSRS parameters and checking its predictions.
ALTER TABLE review_log ADD COLUMN state INTEGER;          -- card state before the review, 0 New … 3 Relearning
ALTER TABLE review_log ADD COLUMN elapsed_days REAL;      -- days since the previous review
ALTER TABLE review_log ADD COLUMN retrievability REAL;    -- predicted chance of recall, before answering
ALTER TABLE review_log ADD COLUMN duration_ms INTEGER;    -- question shown → answer checked
ALTER TABLE review_log ADD COLUMN guessed INTEGER;        -- 1 = answered with "Not sure"
ALTER TABLE review_log ADD COLUMN exam INTEGER;           -- 1 = answered in a mock exam

-- FSRS weights fitted from review_log by scripts/optimize.ts: one row per user, user_id NULL for everyone.
CREATE TABLE fsrs_params (
  id         INTEGER PRIMARY KEY,
  user_id    INTEGER UNIQUE REFERENCES users(id) ON DELETE CASCADE,
  w          TEXT    NOT NULL, -- JSON array of the 21 FSRS-6 weights
  reviews    INTEGER NOT NULL, -- reviews they were fitted on
  updated_at INTEGER NOT NULL  -- unix ms
);

-- A question whose wording or key changes is partly a new question: what was learnt about the old
-- one no longer holds. Cut its stability and make it due now, keeping the review history.
CREATE TRIGGER cards_stem_changed AFTER UPDATE OF stem ON questions WHEN OLD.stem IS NOT NEW.stem
BEGIN
  UPDATE cards SET stability = MIN(stability, 1), due = MIN(due, unixepoch() * 1000) WHERE question_id = NEW.id;
END;
CREATE TRIGGER cards_option_changed AFTER UPDATE OF text, is_correct ON options
  WHEN OLD.text IS NOT NEW.text OR OLD.is_correct IS NOT NEW.is_correct
BEGIN
  UPDATE cards SET stability = MIN(stability, 1), due = MIN(due, unixepoch() * 1000) WHERE question_id = NEW.question_id;
END;
