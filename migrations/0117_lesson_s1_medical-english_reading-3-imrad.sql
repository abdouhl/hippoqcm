-- Generated from data/lessons/s1-medical-english-reading-3-imrad.json — lesson "Reading · Seq 3 Structure of research articles (IMRaD)": 0 exam + 17 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Reading · Seq 3 Structure of research articles (IMRaD)', 's1/medical-english/reading-3-imrad.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'IMRaD stands for:', 'An acronym from the four main sections of a paper: Introduction, Methods, Results and Discussion.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Introduction, Measurement, Research and Discussion', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Investigation, Methods, Results and Diagnosis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Introduction, Methods, Results and Discussion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Introduction, Materials, Review and Data', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why is the IMRaD format used?', 'Logical sequence, quick access to information, universal standard in research communication.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It allows authors to skip the Methods section', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is the structure of many journals, a universal standard', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It presents information in a logical sequence (question → methods → results → implications)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It lets readers find specific information without reading the whole paper', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the lecture, which section would a statistician typically go to first?', '"A statistician might go straight to the Methods, while a clinician may jump to the Results and Discussion."', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Results', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Methods', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Discussion', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Introduction', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the IMRaD section to the question it answers:', 'Results = What did you find? Discussion = What do the findings mean? (Table 2.1)', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Introduction — Why was this study done?', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Methods — How was the study done?', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Discussion — What did you find?', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Results — What do the findings mean?', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The Introduction of a research article contains:', 'Statistical analysis is part of the Results.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The specific gap in knowledge', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Background context and existing knowledge', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The research question or hypothesis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The statistical analysis of the data', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the Methods section:', 'Interpretation belongs to the Discussion. Methods = design, participants, materials, procedures — replicable.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It interprets the findings', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is the detailed "recipe" of the study', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It states the study design (e.g. RCT, cohort)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It must be replicable by others', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the Results section:', 'Table 2.1: "No interpretation here" — interpretation is in the Discussion.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It presents all data and findings objectively', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It includes statistical analysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Key results are often shown in tables, graphs and charts', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It interprets the results and compares them with the literature', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The Discussion section includes:', 'Participants and materials are in the Methods. Discussion: interpretation, fit with knowledge, limitations, implications.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The detailed list of participants and materials', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'How findings fit with existing knowledge', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Limitations of the study', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Interpretation of the results', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A sentence such as "Our results suggest that…" or "This is the first study to show…" belongs to:', 'Formative Part 1, item 5: interpretive statements belong to the Discussion.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The Introduction', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The Results', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The Discussion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The Methods', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"Describes how the study was conducted, including sample size and procedures" corresponds to:', 'Formative Part 1, item 3.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Introduction', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Results', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Discussion', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Methods', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Mapping a research article helps by:', 'Fourth benefit: preparing readers to apply findings in practice or further research.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Identifying the research question, methods and key results', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Improving understanding and recall', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Replacing the need to read the Methods', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Supporting critical evaluation of the study''s quality and relevance', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Tools for mapping a research article cited by the lecture:', 'Tables, mind maps, flowcharts or digital templates.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Abstracts only', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Mind maps', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Tables', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Flowcharts', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'When mapping the Discussion, the questions to ask include:', '"Who participated, what intervention?" is asked when mapping the Methods.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'What are the study''s limitations?', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'What future actions are recommended?', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'What do the results mean?', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Who participated and what intervention was used?', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the "Hand Washing Training for Posyandu Cadres" study (Susila et al., 2025):', 'It was a community service activity (educational intervention). The 1,200-student RCT is the formative excerpt.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10 Posyandu cadres took part', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The intervention used counseling, a PowerPoint presentation and printed brochures', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It was a randomized controlled trial of 1,200 students', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The health problem was diarrhea and typhoid in Indonesian children', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The implied limitations of the hand-washing training study are:', 'Table 4.1, Limitations (implied).', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'No intervention was delivered', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Too many participants to evaluate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Small number of participants (only 10)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'No pre- and post-tests or long-term follow-up mentioned', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the WHO data cited in the Discussion, hand washing with soap reduces:', '40% for diarrhea, 20% for respiratory infections.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Respiratory infections by 40%', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Respiratory infections by 20%', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Diarrhea risk by 40%', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Diarrhea risk by 20%', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the formative excerpt (school hand hygiene study), which statements are correct?', 'Primary outcome = number of sick days reported. RCT in 10 schools (n=1,200) over 12 weeks.', 'Lesson: Reading · Seq 3 Structure of research articles (IMRaD)', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 3 Structure of research articles (IMRaD)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The primary outcome was hand-washing technique scores', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The design was a randomized controlled trial', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The main result was a 30% reduction in respiratory-illness absences', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The limitation/next step is that long-term effects require further study', 1);
