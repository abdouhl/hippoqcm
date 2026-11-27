-- Generated from data/lessons/s1-medical-english-reading-2-vocabulary.json — lesson "Reading · Seq 2 Medical vocabulary and terminology": 0 exam + 15 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Reading · Seq 2 Medical vocabulary and terminology', 's1/medical-english/reading-2-vocabulary.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the root (stem) of a medical term:', 'Root placement: beginning (hepatitis), middle (encephalitis), end (psychopath).', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It gives the term its essential meaning', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is always placed at the end of the word', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It can appear at the beginning, middle or end of a word', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Every medical term has at least one root', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the course''s "tree" image of a medical word:', 'The trunk (root word) remains the central, defining core.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The root is the trunk', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The combining vowel is the trunk', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The suffix is the branches and leaves', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The prefix is the root system that supports and modifies it', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Polyarthritis means:', 'poly- (many) + arthr (joint) + -itis (inflammation).', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Looking inside a joint', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Inflammation of many joints', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Surgical repair of a joint', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Pain in one joint', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which terms keep the combining vowel "o" correctly according to the rules?', 'Keep o between two roots and before a suffix starting with a consonant; drop it before a vowel: hepatitis.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'cardiomyopathy', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'cardiology', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'gastroscopy', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'hepatoitis', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why is there no "o" in hepatitis?', 'Rule 2: suffix starting with a consonant → use o; suffix starting with a vowel → drop o.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The suffix -itis starts with a vowel', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Hepatitis has no root', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The o is only used with prefixes', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Hepat is a Latin root', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"Lymphadenopathy (not lymphoadenopathy)" illustrates that:', 'lymph (clear fluid) + aden (gland) + pathy (disease) — the exception to rule 1.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Two roots can never be joined', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It means disease of the lymph glands', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'When the second root starts with a vowel, the o between roots may be dropped', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The word is easier to say without the o', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the term to its meaning:', 'cardiogram = recording of the heart''s activity; cardiology = study of the heart.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'hepatomegaly — enlargement of the liver', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'cardiogram — study of the heart', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'arthroplasty — surgical repair of a joint', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'cardialgia — pain in the heart', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which suffixes begin with a vowel and are attached without the combining vowel?', '-logy, -gram, -pathy start with a consonant and take the o.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '-itis', 1),
  ((SELECT MAX(id) FROM questions), 'B', '-algia', 1),
  ((SELECT MAX(id) FROM questions), 'C', '-gram', 0),
  ((SELECT MAX(id) FROM questions), 'D', '-ectomy', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the prefix to its meaning:', 'tachy- = fast (tachycardia).', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'endo- — inner, within', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'tachy- — around', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'brady- — slow', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'peri- — around', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About prefixes, the course says:', 'The prefix is a "directional sign" giving specific information about the root.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Every medical term must have a prefix', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A prefix always means the same thing, whatever word it is attached to', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Not all medical terms have a prefix', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Changing the prefix changes the meaning even if the root stays the same', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In "subhepatic", which part means "below"?', 'sub- = below/under; hepat = liver; -ic = pertaining to.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sub-', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'subhepat', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'hepat', 0),
  ((SELECT MAX(id) FROM questions), 'D', '-ic', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which plurals are correct?', '-us → -i: villus → villi.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'adenoma → adenomata', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'ganglion → ganglia', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'villus → villuses', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'phalanx → phalanges', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which plurals are correct?', 'The course insists on "multiple diverticula", not "diverticulums".', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 10, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'diverticulum → diverticulums', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'macula → maculae', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'testis → testes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'appendix → appendices', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which statements about the history of medical terms are made in the course?', 'Traditional terms (carditis, osteotomy) coexist with modern names for tests and treatments.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Medical terms have not changed since antiquity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Most come from ancient Greek and Latin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Many date back to the 1st century B.C., the time of Hippocrates', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Medical language keeps growing (e.g. MRI, ultrasound)', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the term to its combined roots or prefix:', 'myocardial = pertaining to the heart muscle (myo = muscle); "around the heart" is pericardium.', 'Lesson: Reading · Seq 2 Medical vocabulary and terminology', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 2 Medical vocabulary and terminology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'hypodermic — under the skin', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'cardiopulmonary — heart + lungs', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'myocardial — around the heart', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'phototherapy — light + treatment', 1);
