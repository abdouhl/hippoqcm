-- Generated from data/lessons/s1-medical-english-grammar-2-nouns-and-verbs.json — lesson "Grammar · L2 Common medical nouns and verbs": 0 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Grammar · L2 Common medical nouns and verbs', 's1/medical-english/grammar-2-nouns-and-verbs.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which nouns are uncountable according to the lecture?', 'Uncountable: pain (general), information, equipment, treatment (concept), blood, fever. Infection and diagnosis are countable (infections, diagnoses).', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'equipment', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'infection', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'diagnosis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'information', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About uncountable nouns:', '"Much" goes with uncountable nouns (How much medication?), "many" with countable ones (How many tablets?).', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They cannot be used with a/an or numbers', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They have only one (singular) form', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They are used with "many"', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They always take a singular verb', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences are correct?', 'Illness names such as measles are uncountable (singular verb). Pain is uncountable: much pain, not many.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient presented with many pain.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'How much medication is left?', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'How many tablets are left?', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Measles is highly infectious.', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which minor ailments does the lecture say are countable?', 'Illness names (flu, chickenpox, diabetes, pneumonia) are usually uncountable; some minor ailments are countable.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a headache', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'a cold', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'a flu', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'a sore throat', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Toothache, earache, stomach-ache and backache are:', 'British English treats them as usually uncountable; American English as generally countable.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Usually uncountable in British English', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Always countable in both varieties', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Always plural', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Generally countable in American English', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which plurals are correct?', '-a → -ae, -um → -a, -us → -i, -ex/-ix → -ices (appendix → appendices).', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'nucleus → nuclei', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'vertebra → vertebrae', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'appendix → appendixae', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'bacterium → bacteria', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which plurals are correct?', '-on → -a, -is → -es, -ex → -ices. "Diagnosises" is the lecture''s example of an incorrect plural.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'diagnosis → diagnosises', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'cortex → cortices', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'prognosis → prognoses', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'criterion → criteria', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which plural endings match the lecture''s table?', 'Latin -a takes -ae: vertebrae.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '-um → -a (ovum → ova)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'consonant + y → -ies (therapy → therapies)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '-a → -as (vertebra → vertebras)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '-us → -i (bronchus → bronchi)', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which verbs does the lecture list in the Diagnosis category?', 'Diagnosis: diagnose, identify, detect, confirm, rule out. Relapse is a patient-state verb.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'confirm', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'detect', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'rule out', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'relapse', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Choose the correct verb–noun collocations:', '"The doctor did a diagnosis" is listed as an error: make collocates with diagnosis.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'do a diagnosis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'make a diagnosis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'run a test', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'take a temperature', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences use the correct collocation?', '"Got surgery" → underwent surgery, the correct clinical term.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient underwent emergency surgery.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient received appropriate care.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient got surgery.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The nurse administered the injection.', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"The doctor made an examination." According to the lecture, the correct version is:', 'Perform / conduct collocate with an examination, surgery, a procedure, an investigation; "make an examination" is a common ESL error.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The doctor gave an examination.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The doctor performed an examination.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The doctor took an examination.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The doctor conducted an examination.', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About collocations in medical English:', 'These combinations cannot be predicted from translation alone.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They often involve "delexical" verbs paired with specific nouns', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They can always be predicted by translating from one''s own language', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They are words that naturally and frequently occur together', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They must be learned as whole units', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which verb + preposition combinations are correct?', 'respond to: "The infection responded to antibiotics."', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'recover from surgery', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'discharged from hospital', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'admitted to the emergency department', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'responded at antibiotics', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match each tense to its clinical meaning:', '"The patient presents with chest pain" / "She has been prescribed metformin" / "He was diagnosed in 2019".', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Past simple — completed past action', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Present simple — current condition', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Present perfect — action that will happen tomorrow', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Present perfect — past action with present relevance', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which verb → noun pairs are correct?', 'investigate → investigation.', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'investigate → investigatement', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'recover → recovery', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'prescribe → prescription', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'monitor → monitoring', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentence uses nominalisation to sound more formal?', 'The noun form (recovery) creates a more objective, professional tone than the verb (recovered).', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient made a good recovery.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient recovered well.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient is recovering.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient will recover soon.', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which corrections are right?', 'Medicament is rarely used in modern medical English: use medication(s).', 'Lesson: Grammar · L2 Common medical nouns and verbs', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L2 Common medical nouns and verbs'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'several bacterias → several bacteria', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The nurse gave medication → The nurse administered medication', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The doctor prescribed medicaments → this is the preferred modern term', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient took treatment → The patient received treatment', 1);
