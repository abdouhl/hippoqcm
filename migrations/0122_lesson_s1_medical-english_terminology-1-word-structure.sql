-- Generated from data/lessons/s1-medical-english-terminology-1-word-structure.json — lesson "Terminology · Unit 1 Word structure (root, prefix, suffix)": 0 exam + 15 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Terminology · Unit 1 Word structure (root, prefix, suffix)', 's1/medical-english/terminology-1-word-structure.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The three fundamental components of medical terms are:', 'Root (core), prefix (beginning), suffix (end).', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The article', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The prefix', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The root', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The suffix', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the root of a medical term:', 'The suffix is at the end; the root is the core.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It often relates to a body part, system or function', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'cardi- (heart) is an example', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It always comes at the end of the word', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It conveys the essential meaning', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A prefix modifies the meaning of a term by conveying information such as:', 'Indicating a grammatical form (or condition, disease, procedure) is the role of the suffix.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Time', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The grammatical form of the word', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Location', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Number or status', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the unit, hyper- means:', 'hyper- = above/excessive; hypo- = below.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Below or deficient', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Above or excessive', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Inflammation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Study of', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Combining vowels in medical terms:', 'They help pronunciation without changing meaning.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Appear in gastroenterology (stomach + intestine + study)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are usually "o"', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are added between elements to aid pronunciation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Change the meaning of the root', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Cardiology means:', 'cardi- (heart) + -logy (study of).', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Removal of the heart', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Inflammation of the heart', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The study of the heart', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pain in the heart', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the procedure suffix to its meaning:', '-plasty = repair/restore/replace; -otripsy = crush.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '-plasty — crush', 0),
  ((SELECT MAX(id) FROM questions), 'B', '-ectomy — excision / removal of', 1),
  ((SELECT MAX(id) FROM questions), 'C', '-ostomy — create a new opening', 1),
  ((SELECT MAX(id) FROM questions), 'D', '-otomy — make an incision / cut into', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the term to its procedure:', 'Colostomy = creation of a new opening of the colon (-ostomy).', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Colostomy — removal of the colon', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Nephrectomy — removal of a kidney', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Arthroscopy — examination of a joint', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Rhinoplasty — repair of the nose', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Pericardiocentesis and pleurodesis contain suffixes meaning, respectively:', '-centesis = puncture/aspiration; -desis = bind/fuse together.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Incision — removal', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Puncture/aspiration — bind/fuse together', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Instrument for viewing — inspection', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Repair — crush', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which statements about -scope and -oscopy are correct?', '-opsy = examination/inspection (biopsy).', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lithotripsy uses -otripsy, meaning crush', 1),
  ((SELECT MAX(id) FROM questions), 'B', '-scope = instrument for viewing (otoscope)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '-opsy = repair (biopsy)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '-oscopy = examination/viewing of (arthroscopy)', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the root to its meaning:', 'Axillo- = armpit (axillary vein); vesico- = bladder/blister.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Rhino- — nose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Reno- — kidney', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Tympano- — eardrum', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Axillo- — bladder', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which root–meaning pairs come from the unit''s Medical Roots chart?', 'Umbilico- = umbilicus; sinus- = sinuses.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Tracheo- — trachea', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Vasculo- — blood vessel', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Vesico- — bladder/blister', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Umbilico- — sinuses', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the suffix to its meaning:', '-stasis = stop (hemostasis = stopping of bleeding).', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '-oma — tumour (melanoma)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '-algia — pain (neuralgia)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '-pnea — breathing (tachypnea)', 1),
  ((SELECT MAX(id) FROM questions), 'D', '-stasis — inflammation (hemostasis)', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Word formation and parts of speech in the unit:', 'operate (verb) → operation (noun) → operative (adjective).', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'infect → infection → infectious', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'diagnose is a verb; diagnosis is a noun', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'arthritis is a noun; arthritic is an adjective', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'operative is a verb', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the role-play, "gastritis" is explained as:', 'gastro = stomach, -itis = inflammation.', 'Lesson: Terminology · Unit 1 Word structure (root, prefix, suffix)', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 1 Word structure (root, prefix, suffix)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Pain in the stomach', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Study of the stomach', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Inflammation of the stomach', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Removal of the stomach', 0);
