-- Anatomy lesson PDFs now hold only the English course notes (the French slides were cut off).
-- Re-point the generated questions that cited a slide page: to the English page on the same topic,
-- or to no page when the notes don't cover it.

UPDATE questions SET pdf_page = 3 WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 23 AND stem = 'The image shows three sections of the head (1, 2, 3 from left to right). In which planes were they cut?';
UPDATE questions SET pdf_page = NULL WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 33 AND stem = 'After a knee injury, a patient has blood in the joint cavity. This is called:';
UPDATE questions SET pdf_page = 4 WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 64 AND stem = 'Arthroscopy:';
UPDATE questions SET pdf_page = 4 WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 58 AND stem = 'After a posterior hip dislocation, the round ligament is torn. What complication can this cause?';
UPDATE questions SET pdf_page = NULL WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 68 AND stem = 'About muscle exploration methods shown in the course:';
UPDATE questions SET pdf_page = NULL WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 75 AND stem = 'Match the muscle pathology with its definition:';
UPDATE questions SET pdf_page = 11 WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 54 AND stem = 'The glenoid labrum:';
UPDATE questions SET pdf_page = 16 WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 74 AND stem = 'With participation of the scapulothoracic joint, shoulder abduction can reach:';
UPDATE questions SET pdf_page = 5 WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'generated' AND pdf_page = 120 AND stem = 'This palmar view of a right carpus shows the carpal bones numbered 1 to 8. Which identifications are correct?';
