-- Anonymous users. Each device makes up a random sync code; only its SHA-256 hash is stored.
-- Entering the same code on another device opens the same progress.
CREATE TABLE users (
  id         INTEGER PRIMARY KEY,
  token_hash TEXT    NOT NULL UNIQUE,                  -- hex SHA-256 of the normalized code
  created_at INTEGER NOT NULL DEFAULT (unixepoch() * 1000), -- unix ms
  last_seen  INTEGER                                   -- unix ms, last write
);

-- Progress from before accounts existed belongs to user 1, the app's author. A SHA-256 of an
-- 80-bit random code can't be reversed, so the hash is safe to commit.
INSERT INTO users (id, token_hash) VALUES (1, '3814149511915df8059f19e57ca63b377504f0eae68bc999b881619555076127');

-- Cards become per user: the primary key changes, so the table is rebuilt.
CREATE TABLE cards_new (
  user_id        INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  question_id    INTEGER NOT NULL REFERENCES questions(id) ON DELETE CASCADE,
  due            INTEGER NOT NULL,          -- unix ms
  stability      REAL    NOT NULL,
  difficulty     REAL    NOT NULL,
  elapsed_days   INTEGER NOT NULL,
  scheduled_days INTEGER NOT NULL,
  learning_steps INTEGER NOT NULL DEFAULT 0,
  reps           INTEGER NOT NULL,
  lapses         INTEGER NOT NULL,
  state          INTEGER NOT NULL,          -- 0 New, 1 Learning, 2 Review, 3 Relearning
  last_review    INTEGER,                   -- unix ms
  PRIMARY KEY (user_id, question_id)
);
INSERT INTO cards_new (user_id, question_id, due, stability, difficulty, elapsed_days, scheduled_days,
                       learning_steps, reps, lapses, state, last_review)
  SELECT 1, question_id, due, stability, difficulty, elapsed_days, scheduled_days,
         learning_steps, reps, lapses, state, last_review
  FROM cards;
DROP TABLE cards;
ALTER TABLE cards_new RENAME TO cards;
CREATE INDEX idx_cards_user_due ON cards(user_id, due);

ALTER TABLE review_log ADD COLUMN user_id INTEGER REFERENCES users(id) ON DELETE CASCADE;
UPDATE review_log SET user_id = 1;
CREATE INDEX idx_review_log_user ON review_log(user_id, reviewed_at);
