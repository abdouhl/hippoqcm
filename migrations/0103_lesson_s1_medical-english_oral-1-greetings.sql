-- Generated from data/lessons/s1-medical-english-oral-1-greetings.json — lesson "Oral Expression · L1 Greetings and polite expressions": 0 exam + 11 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Oral Expression · L1 Greetings and polite expressions', 's1/medical-english/oral-1-greetings.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which greetings belong to a formal register?', 'The lecture contrasts "Hi there!" (informal) with "Good morning, Madam." (formal); the answer key adds "How do you do?" as very formal, used on first meeting.', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Good morning, Madam.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'How do you do?', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Hi there!', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Hey!', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"How do you do?" is, according to the answer key:', 'It is listed as very formal, on first meeting. To ask about health, the lecture uses "How are you feeling today?".', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Very formal', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Used on a first meeting', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A question about the patient''s health that needs a detailed answer', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Informal', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which expressions are closing phrases from the lecture''s vocabulary list?', 'Take care / Get well soon / See you tomorrow close an exchange; "Excuse me, could I ask you something?" opens a polite request.', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Take care.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Get well soon.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'See you tomorrow.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Excuse me, could I ask you something?', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A patient arrives at reception. According to the reading text, the receptionist should:', 'Always greet first. Use Mr/Mrs unless the patient invites you to use their first name.', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Greet the patient before asking for any paperwork', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ask for the paperwork first, then greet', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Use the patient''s first name immediately', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Use the patient''s name with Mr or Mrs once known', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why does the text recommend "Mr" or "Mrs" rather than the first name?', 'Answer key: because it is more respectful, and Mr/Mrs should be used unless the patient invites you to use their first name.', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is more respectful', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The first name may be used if the patient invites you to', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'First names are forbidden in hospitals', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It saves time', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'If a patient looks anxious, the text advises you to:', 'Slow down your speech and keep your tone warm.', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Slow down your speech', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Keep your tone warm', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Speak faster to finish quickly', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Switch to a very formal register', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the model dialogue, which lines are polite requests?', '"May I…, please?" and "Please take a seat" are requests. "Thank you very much" is thanks; "Good morning" is the greeting.', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'May I have your name, please?', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Please take a seat; the doctor will call you shortly.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Thank you very much.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Good morning. How can I help you?', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The guided speaking practice keeps which structure for every new situation?', 'The dialogue is adapted (elderly patient arriving late, worried parent, visitor) while keeping the greeting–request–thanks structure.', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Greeting – request – thanks', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Request – greeting – thanks', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Thanks – greeting – request', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Greeting – complaint – apology', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The appointment-confirmation email should contain:', 'The task asks for a greeting, the appointment details, a practical instruction and a polite closing, using at least three polite expressions (60–80 words).', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A greeting', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The day and time of the appointment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A polite closing line', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient''s full medical history', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the listening task (British Council, Hospital Scene 1), what is happening?', 'The answer key: the characters are at the hospital, where Stephen is being examined; expect simple, everyday greetings rather than very formal language.', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ashlie and Stephen are at the hospital', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Stephen is being examined', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Mostly very formal language is used', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The characters are at a pharmacy', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which reply is appropriate to "Thank you very much"?', 'The vocabulary list pairs "Thank you very much." with "You''re welcome."', 'Lesson: Oral Expression · L1 Greetings and polite expressions', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Oral Expression · L1 Greetings and polite expressions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'You''re welcome.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Pleased to meet you.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Get well soon.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'How are you feeling today?', 0);
