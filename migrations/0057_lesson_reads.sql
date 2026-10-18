-- Which lessons each user has read. A lesson is unread until its user marks it.
CREATE TABLE lesson_reads (
  user_id   INTEGER NOT NULL REFERENCES users(id) ON DELETE CASCADE,
  lesson_id INTEGER NOT NULL REFERENCES lessons(id) ON DELETE CASCADE,
  read_at   INTEGER NOT NULL, -- unix ms
  PRIMARY KEY (user_id, lesson_id)
);

-- Lessons added so far were added once the author (user 1) had finished them.
INSERT INTO lesson_reads (user_id, lesson_id, read_at) SELECT 1, id, completed_at FROM lessons;
