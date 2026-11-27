-- Generated from data/lessons/s1-medical-english-skills-2-key-terms.json — lesson "Work Techniques · L2 Identifying key terms": 0 exam + 14 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Work Techniques · L2 Identifying key terms', 's1/medical-english/skills-2-key-terms.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the lecture, key terms in medical texts are:', 'Medical English is a nominalized register: meaning is concentrated in nouns and noun phrases.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Mostly nouns and nominal compounds', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Mostly verbs', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Mostly function words such as "of" and "the"', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Almost always content words', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'What does it mean that medical English is a "nominalized register"?', 'Nominalization shifts emphasis from action to conceptual entity.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Texts use "diagnosis" rather than "the patient is diagnosed"', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Verbs carry most of the meaning', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Nouns are avoided', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Processes and actions are often expressed as nouns rather than verbs', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the term to its category:', 'Femur is an anatomical term (body structure). Pathological terms: anemia, tuberculosis, cancer.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'analgesics — pharmacological', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'femur — pathological', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'dialysis — procedural', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'biopsy — diagnostic', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In a report about lung cancer confirmed by biopsy and treated with chemotherapy, which classifications are correct?', 'The lecture uses exactly this example to show that one passage combines several categories.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'biopsy — diagnostic', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'lung — anatomical', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'cancer — pathological', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'chemotherapy — pharmacological', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which text features signal key terms (lecture''s Table 3)?', 'Repetition, definitions, headings, bold/italic terms and noun clusters signal key terms; function words are removed in extraction.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Definitions', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Function words', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Headings', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Repetition', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Skimming is used to:', 'Locating specific information (values, diagnoses) is scanning.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Identify the general topic, purpose and structure', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Read every sentence in detail', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Locate a specific laboratory value', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Get a global understanding of a text', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A student searches a discharge report only for the words "pneumonia", "fever" and the CT scan result. This is:', 'Scanning = targeted search for predefined keywords or data (micro-level extraction).', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nominalization', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Chunking', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Scanning', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Skimming', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Put in order the first three steps of the keyword extraction model:', 'Steps: title/headings → repetition → nouns/noun phrases → remove function words → group → validate in context.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 remove function words → 2 group → 3 validate', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1 nouns → 2 headings → 3 repetition', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1 title and headings → 2 repeated words → 3 nouns and noun phrases', 1),
  ((SELECT MAX(id) FROM questions), 'D', '1 validate → 2 group → 3 repetition', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the keyword extraction model:', 'The first step is reading titles and headings.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The first step is to remove function words', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The final step is to validate keywords in context', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Removing function words filters grammatical noise', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Grouping related terms builds conceptual clusters', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About medical noun phrases such as "chronic obstructive pulmonary disease":', 'Their density increases efficiency but also increases cognitive load for learners.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They reduce cognitive load for learners', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Each element narrows the clinical meaning', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They must be interpreted holistically, not word by word', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They function as single semantic units', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the noun phrase to its meaning:', 'CNS disorder = brain/spinal cord pathology; long-term lung disease = COPD.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'central nervous system disorder — long-term lung disease', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'myocardial infarction — heart attack', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'elevated blood glucose level — high blood sugar', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'acute renal failure — sudden kidney dysfunction', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which information has the highest priority in semantic prioritization?', 'High: diagnoses/diseases/outcomes · medium: procedures/explanations · low: supporting descriptions.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Procedures (e.g. CT scan)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Diagnoses, diseases and outcomes (e.g. pneumonia, stroke)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Function words', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Adjectives and general verbs', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the reading error to its correction strategy (Table 8):', 'Ignoring repetition (weak scanning) → track repeated lexical items.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ignoring repetition — translate every word', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Translating every word — focus on key terms only', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Overlooking headings — use structural reading', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Misreading noun phrases — learn a chunking strategy', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are common difficulties in key-term identification listed by the lecture?', 'Using headings is a recommended strategy, not a difficulty.', 'Lesson: Work Techniques · L2 Identifying key terms', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L2 Identifying key terms'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Misinterpreting abbreviations such as ECG or MRI', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Confusing technical and general vocabulary', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Using headings to orient reading', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Over-focusing on unknown words', 1);
