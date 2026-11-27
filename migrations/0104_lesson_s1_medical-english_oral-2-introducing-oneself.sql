-- Generated from data/lessons/s1-medical-english-oral-2-introducing-oneself.json — lesson "Oral Expression · L2 Introducing oneself": 0 exam + 10 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Oral Expression · L2 Introducing oneself', 's1/medical-english/oral-2-introducing-oneself.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the reading text, before any examination begins a patient needs to know:', '"A patient needs to know two things: who you are, and what your role is."', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Who you are', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'What your role is', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'How long you have been working', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Your date of birth', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A short, confident introduction, according to the text, includes:', 'Name, role and a brief explanation of what will happen next help the patient feel safe.', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Your name', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Your role', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A brief explanation of what will happen next', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A detailed description of your training', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why should students and trainees state their role clearly?', 'Students should say so clearly "rather than letting the patient assume they are a fully qualified doctor or nurse".', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'So the patient does not assume they are a fully qualified doctor or nurse', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Because students are not allowed to talk to patients', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'To avoid confirming the patient''s identity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'To shorten the consultation', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Confirming the patient''s full name and date of birth is described as:', '"It is not just politeness; it is also a basic safety check before any procedure."', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A matter of politeness', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A basic safety check before any procedure', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Optional for nurses', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Only needed at discharge', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences are appropriate for a first-year student meeting a patient?', 'C would let the patient believe the student is a qualified senior doctor.', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'I''m a first-year student; I''ll be observing today, if that''s alright with you.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Pleased to meet you.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'I''m the consultant in charge of your case.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Please, make yourself comfortable.', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are role nouns listed in the lecture?', 'Role nouns: physician, nurse, student nurse, consultant, receptionist, paramedic.', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'consultant', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'paramedic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'student nurse', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'receptionist', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the model dialogue, what does the nurse do before checking the blood pressure?', '"My name is Nadia, and I''ll be your nurse this morning… Could you confirm your full name and date of birth… I''m just going to check your blood pressure now, if that''s alright."', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gives her name and role', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Asks the patient to confirm his full name and date of birth', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Asks permission ("if that''s alright")', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Asks for the patient''s insurance card', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which expression means "I will be responsible for your care today"?', '"I''m Dr / Nurse [name]. I''ll be looking after you today." Observing is what a student does.', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'I''ll be looking after you today.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'I''ll be observing today.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Make yourself comfortable.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It''s a pleasure to meet you.', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The written self-introduction (70–90 words) must include:', 'Name, role, what will happen during the visit, and a polite closing question.', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Your name and role', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'One sentence explaining what will happen during the visit', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A polite closing question', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient''s diagnosis', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the controlled speaking practice, students rewrite the model dialogue by changing:', 'Rewrite it by changing the role and the procedure mentioned at the end.', 'Lesson: Oral Expression · L2 Introducing oneself', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L2 Introducing oneself'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The role (student nurse, paramedic, consultant)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The procedure mentioned at the end', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The language to French', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient''s diagnosis only', 0);
