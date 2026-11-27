-- Generated from data/lessons/s1-medical-english-terminology-2-body-parts.json — lesson "Terminology · Unit 2 Names of body parts": 0 exam + 13 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Terminology · Unit 2 Names of body parts', 's1/medical-english/terminology-2-body-parts.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the reading, the brain regulates:', 'The brain is the control centre. Bile is produced by the liver.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Emotions', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Thought and memory', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Bile production', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Voluntary and involuntary movements', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The functions of the liver described in the text are:', 'Filtering waste from the blood and maintaining fluid balance is the kidneys'' role.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Detoxifying harmful substances', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Producing bile to aid digestion', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Filtering waste from the blood to make urine', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Processing nutrients', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The kidneys:', 'Bile = liver; oxygen supply = lungs.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Supply oxygen to the blood', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Maintain fluid balance', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Produce bile', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Filter waste from the blood', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The largest organ of the body, according to the text, is:', 'The skin acts as a protective barrier against injury, germs and temperature changes.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The liver', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The brain', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The intestines', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The skin', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the organ to its function:', 'Bones form the framework; muscles attach to bones and allow movement, posture and strength.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Heart — pump circulating blood that carries oxygen and nutrients', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Lungs — supply oxygen and remove carbon dioxide', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Stomach and intestines — break down food and absorb nutrients', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Muscles — form the strong framework supporting the body', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The endocrine system:', 'Defence against infections = immune system.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Regulates growth, metabolism and mood', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Defends the body against infections', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Filters blood', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Releases hormones', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the sense to its organ, as in the text:', 'Touch — skin; hearing — ears.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Smell — nose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sight — eyes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Touch — ears', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Taste — tongue', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Word roots for body parts given in the learning objectives:', 'Examples cited: cardio, derma, neuro.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'neuro — nerve', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'derma — blood', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'cardio — heart', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'derma — skin', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences are grammatically correct?', 'After does, use the base form have.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient has pain in the chest.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Does the liver have important functions?', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Does the liver has important functions?', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The kidneys are responsible for filtering blood.', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The correct question form of "The eyes are sensitive to light" is:', 'With be, invert subject and verb; plural subject → are.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the eyes sensitive to light?', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Does the eyes sensitive to light?', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Do the eyes are sensitive to light?', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Are the eyes sensitive to light?', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Choose the correct verb: "The lungs ___ essential for breathing."', 'Plural subject (lungs) + adjective → are.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'does', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'has', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'is', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'are', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why is understanding body parts and systems important, according to the text?', '"Not only important for medical professionals but also for anyone who wishes to take care of their health."', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It helps anyone make informed choices about nutrition, exercise and medical care', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is only useful to doctors', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It contributes to a longer and healthier life', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is important for medical professionals', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the doctor–patient role-play, which are appropriate answers to "Where do you feel pain?"', '"I does" is ungrammatical; the doctor''s question asks for a location.', 'Lesson: Terminology · Unit 2 Names of body parts', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 2 Names of body parts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'My head hurts.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'I feel pain in my chest, near the heart.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'My stomach hurts.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Yes, I does have pain.', 0);
