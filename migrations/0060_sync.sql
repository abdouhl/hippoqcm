-- Sync like Anki's: devices pull only what changed, resent reviews don't double count, and
-- study settings follow the sync code.

-- Bumped by any change to shared content, so a device whose snapshot has the current version
-- only needs its own progress (cards, reads, settings) on refresh.
CREATE TABLE content_version (id INTEGER PRIMARY KEY CHECK (id = 1), version INTEGER NOT NULL);
INSERT INTO content_version (id, version) VALUES (1, 1);

CREATE TRIGGER content_modules_ins AFTER INSERT ON modules BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_modules_upd AFTER UPDATE ON modules BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_modules_del AFTER DELETE ON modules BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_lessons_ins AFTER INSERT ON lessons BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_lessons_upd AFTER UPDATE ON lessons BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_lessons_del AFTER DELETE ON lessons BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_questions_ins AFTER INSERT ON questions BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_questions_upd AFTER UPDATE ON questions BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_questions_del AFTER DELETE ON questions BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_options_ins AFTER INSERT ON options BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_options_upd AFTER UPDATE ON options BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_options_del AFTER DELETE ON options BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_links_ins AFTER INSERT ON question_lessons BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_links_upd AFTER UPDATE ON question_lessons BEGIN UPDATE content_version SET version = version + 1; END;
CREATE TRIGGER content_links_del AFTER DELETE ON question_lessons BEGIN UPDATE content_version SET version = version + 1; END;

-- A batch whose response was lost gets sent again; the same review must only be logged once.
DELETE FROM review_log WHERE id NOT IN (
  SELECT MIN(id) FROM review_log GROUP BY user_id, question_id, reviewed_at
);
CREATE UNIQUE INDEX idx_review_log_unique ON review_log(user_id, question_id, reviewed_at);

-- Study settings (src/prefs.ts) per user; the newest save wins.
CREATE TABLE user_prefs (
  user_id    INTEGER PRIMARY KEY REFERENCES users(id) ON DELETE CASCADE,
  settings   TEXT    NOT NULL, -- JSON
  updated_at INTEGER NOT NULL  -- unix ms, set by the device that saved them
);
