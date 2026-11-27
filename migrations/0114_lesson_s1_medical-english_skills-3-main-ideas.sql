-- Generated from data/lessons/s1-medical-english-skills-3-main-ideas.json — lesson "Work Techniques · L3 Main ideas and supporting details": 0 exam + 14 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Work Techniques · L3 Main ideas and supporting details', 's1/medical-english/skills-3-main-ideas.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the information level to its content:', 'The topic is macro-level. Micro details validate and illustrate but do not define the core message.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Macro-level — global concept / central proposition', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Micro-level — statistics, examples, observations', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Micro-level — the topic of the paragraph', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Meso-level — explanations, causes, mechanisms', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"Diabetes is a metabolic disorder." In the lecture''s hierarchy, this is:', 'Table 1 gives it as the macro-level example: the global concept, used for topic identification.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A supporting detail', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Macro-level information', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Meso-level information', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Micro-level information', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In medical texts, the main idea typically corresponds to:', 'Recurring functions: definition, clinical statement, scientific claim, diagnostic classification. Numerical data are micro-level support.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A definition establishing a medical concept', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A scientific claim presenting a generalizable observation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A diagnostic classification', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A list of numerical data', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A paragraph describes symptoms and risk factors without ever stating its topic in one sentence. Its main idea is:', 'Implicit main ideas require inference (Table 2). Distributed ones are spread across sentences, as in research explanations of a mechanism.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Comparative', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Implicit', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Explicit', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Absent', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the linguistic marker to the type of supporting detail:', '"for example / such as" mark exemplification; "includes / consists of" mark descriptive detail.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"for example" — descriptive detail', 0),
  ((SELECT MAX(id) FROM questions), 'B', '"due to" — causal explanation', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"studies show" — clinical evidence', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"whereas" — comparative analysis', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the lecture, supporting details:', 'The lecture insists they are not merely secondary: without them medical statements would remain abstract and lack credibility.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Show how and why a claim is scientifically valid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are merely secondary and can always be ignored', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Act as epistemic justification tools', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Operationalize, justify and contextualize the main idea', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Put the typical medical paragraph in order:', 'Opening (main idea/definition) → development (mechanisms) → support (studies/data) → closure (synthesis/implication).', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Opening → Development → Support → Closure', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Opening → Support → Closure → Development', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Support → Opening → Closure → Development', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Development → Opening → Support → Closure', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the structure of medical paragraphs:', 'The topic sentence is usually first, but not always: readers must reconstruct meaning by inference.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The main idea may be distributed across several sentences', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is not always linear', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The main idea is always the first sentence', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'In research articles the main idea may appear at the end', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are indicators of a main idea (Table 5)?', 'Topic sentence position, repetition, generalization, nominalization and thematic focus signal main ideas; numbers are micro details.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lexical repetition of key terms', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Generalization ("affects multiple systems")', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Numerical data', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Nominalization such as "cardiovascular dysfunction"', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the recognition strategy to its purpose:', 'Highlighting key nouns and verbs isolates evidence.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Highlighting — remove the main idea', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Substitution test — identify redundancy', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Question test (Why? How? What example?) — locate explanation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Deletion test — check whether meaning collapses without the sentence', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the lecture''s COPD extract:', 'Morbidity and mortality are the impact (consequence). The pattern is definition → mechanism → cause → symptoms → consequence.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The cause is long-term exposure to harmful particles, especially cigarette smoke', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Coughing and shortness of breath are the symptoms', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The main idea is that COPD is a progressive lung disease', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Morbidity and mortality are the main idea', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About macro and micro information:', 'Micro details are not sufficient to reconstruct the overall meaning; over-focusing on them leads to fragmented comprehension.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Macro information is essential in a summary', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A symptom list is micro information', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Micro information is optional in a summary', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Micro details alone are enough to rebuild the overall meaning', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The four steps for reconstructing a main idea in a summary are:', 'Table 9: lexical core → reduce noise → conceptual synthesis → academic summary.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 10, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Remove key terms → keep examples → merge → copy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Identify key terms → remove examples → merge concepts → reformulate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Reformulate → identify key terms → add details → merge', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Quote the text → add examples → translate → shorten', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Identifying the main idea first, before details, is called:', 'Main idea identification is a core component of top-down processing, where global meaning is established before detailed interpretation.', 'Lesson: Work Techniques · L3 Main ideas and supporting details', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L3 Main ideas and supporting details'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Scanning', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Bottom-up processing', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Word-by-word decoding', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Top-down processing', 1);
