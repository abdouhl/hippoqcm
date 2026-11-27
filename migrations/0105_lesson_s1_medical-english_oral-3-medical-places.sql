-- Generated from data/lessons/s1-medical-english-oral-3-medical-places.json — lesson "Oral Expression · L3 Describing medical places": 0 exam + 10 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Oral Expression · L3 Describing medical places', 's1/medical-english/oral-3-medical-places.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the department to its function. Which pairs are correct?', 'Outpatients = doctors examine patients; surgical operations take place in the operating theatre.', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Radiology — X-rays are taken here', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Pharmacy — you buy or collect medicine here', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Outpatients Department — surgical operations are performed here', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Emergency Department — patients with serious injuries are treated here', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A&E stands for:', 'Emergency Room / A&E (Accident and Emergency).', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Accident and Emergency', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Admission and Examination', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Anaesthesia and Emergency', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ambulance and Entrance', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are prepositions of place from the lecture''s vocabulary list?', 'next to, opposite, at the end of the corridor, on the second floor, between, past, on your left/right. "Afterwards" is a time adverb.', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'opposite', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'between', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'at the end of the corridor', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'afterwards', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which directions are written correctly?', 'The correct forms are "next to the pharmacy" and "on your left".', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It''s on the second floor.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It''s at the end of the corridor.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It''s next the pharmacy.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It''s the second door in your left.', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the reading text, patients arriving by ambulance are usually:', 'Ambulance patients go straight to the Emergency Department; patients with an appointment wait in the outpatient department.', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Taken straight to the Emergency Department', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Asked to wait in the outpatient department', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Sent to the pharmacy first', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Registered at the laboratory', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the Intensive Care Unit in the reading text:', 'The ICU is close to the operating theatres; it''s the pharmacy and laboratory that are on the ground floor near reception.', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It receives serious cases that need continuous monitoring', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is normally located close to the operating theatres', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its location allows patients to be moved quickly after surgery', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is usually on the ground floor next to the pharmacy', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why are the pharmacy and laboratory often near reception?', 'They are on the ground floor near reception because almost every department sends samples or collects medication there.', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Almost every department needs to send samples there or collect medication', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are the first place ambulance patients go', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They need continuous monitoring', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Visitors are not allowed in other departments', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In a general hospital as described in the text:', 'Central reception with corridors; appointment patients wait in outpatients; ambulance cases go straight to Emergency; ICU is near the theatres.', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Corridors lead from a central reception area to the main departments', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Patients with an appointment wait in the outpatient department until called', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Emergency patients wait in reception until called', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The ICU is far from the operating theatres to avoid infection', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which is the most polite way to ask for directions, as in the model dialogue?', '"Excuse me, could you tell me where … is?" — polite opener + indirect question (subject before verb).', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Excuse me, could you tell me where the radiology department is?', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Where is radiology?', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Tell me where the radiology department is.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Excuse me, where the radiology department is?', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the model dialogue, where is the radiology department?', '"Go down this corridor, and it''s the second door on your left, next to the pharmacy." The waiting room is just opposite, on the ground floor.', 'Lesson: Oral Expression · L3 Describing medical places', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L3 Describing medical places'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Down the corridor, second door on the left', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Next to the pharmacy', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Opposite the waiting room on the second floor', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'At the end of the corridor on the right', 0);
