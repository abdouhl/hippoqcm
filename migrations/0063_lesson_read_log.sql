-- Every time a user marks a lesson read, of the PDF or of its summary, so reads can be counted.
CREATE TABLE lesson_read_log (
  user_id   INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  lesson_id INTEGER NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
  kind      TEXT    NOT NULL CHECK (kind IN ('pdf', 'summary')),
  read_at   INTEGER NOT NULL, -- unix ms, set by the device; a resent read is only logged once
  PRIMARY KEY (user_id, lesson_id, read_at)
);

INSERT INTO lesson_read_log (user_id, lesson_id, kind, read_at)
SELECT user_id, lesson_id, 'pdf', read_at FROM lesson_reads;

DROP TABLE lesson_reads;
