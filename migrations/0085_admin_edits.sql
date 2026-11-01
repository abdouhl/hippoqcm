-- Edits made in the local admin panel (scripts/admin). Ids match production: both run the same migrations.

-- S1 Physiology: reorder lessons
UPDATE lessons SET position = 2 WHERE id = 28;
UPDATE lessons SET position = 3 WHERE id = 12;

-- S1 Physiology: reorder lessons
UPDATE lessons SET position = 1 WHERE id = 28;
UPDATE lessons SET position = 2 WHERE id = 3;

-- S1 Physiology: reorder lessons
UPDATE lessons SET position = 3 WHERE id = 29;
UPDATE lessons SET position = 4 WHERE id = 12;
