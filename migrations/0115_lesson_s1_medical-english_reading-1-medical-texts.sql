-- Generated from data/lessons/s1-medical-english-reading-1-medical-texts.json — lesson "Reading · Seq 1 Introduction to medical texts": 0 exam + 17 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Reading · Seq 1 Introduction to medical texts', 's1/medical-english/reading-1-medical-texts.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are considered primary literature?', 'Primary literature reports original findings (new discoveries, trial results, case studies). Reviews and meta-analyses are secondary: they synthesize primary research.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Original research articles', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Meta-analyses', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Systematic reviews', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Clinical trial results reported for the first time', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which statements about medical text sources are correct?', 'Historical treatises (Edwin Smith Papyrus, Sushruta Samhita, Canon of Medicine) help understand the evolution of medical thought.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Historical treatises have no value for modern medicine', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Peer-reviewed journals are considered more reliable than non-peer-reviewed publications', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Patient records are confidential documents', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'PubMed is provided by the National Library of Medicine', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the text to its description:', 'Sushruta Samhita is an ancient treatise from India.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The Canon of Medicine — medieval encyclopedia by Ibn Sina', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sushruta Samhita — modern textbook of surgery', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Edwin Smith Papyrus — ancient treatise from Egypt', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Harrison''s Principles of Internal Medicine — the most widely read medical textbook', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the course, the most efficient way to start reading a research article is to:', 'Experts recommend reviewing the abstract''s conclusions first, then the methods and results, appraising at each step whether to continue.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Read the abstract''s conclusions to judge relevance', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Start with the reference list', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Read only the figures', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Read the whole paper from start to finish', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'IMRAD stands for:', 'The usual organization of an original research article, preceded by a structured abstract.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Investigation, Methods, Results, and Diagnosis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Introduction, Measurements, Analysis, and Discussion', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Introduction, Methods, Results, and Discussion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Introduction, Materials, Review, and Data', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About review articles:', 'Meta-analyses are secondary literature.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A meta-analysis is a primary research article', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Systematic reviews address specific questions with defined methods for selecting papers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Narrative reviews give a qualitative overview of broad topics without a specific research question', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A meta-analysis combines the statistical findings of several studies', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the title of a research article:', 'A specific title tells the reader immediately what the study is about.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"Comparison of Microwave with Conventional Tissue Processing on Quality of Histological Sections" is a better title than "Microwave processing – A blessing for pathologists"', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The best titles are descriptive and self-explanatory', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the first point of attraction for readers', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A vague, intriguing title is preferred', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the abstract:', 'Statistical methods are assessed in the Methods section.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is used to assess the statistical methods in detail', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It helps readers quickly decide whether the paper is relevant', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is limited in word count', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Most journals now require a structured abstract with subheadings', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Where are the aims of a study (and often the hypothesis) usually stated?', 'The introduction moves from background to literature to gap, and usually states the aims at its end; check later in the discussion whether the hypothesis was addressed.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In the title only', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'In the reference list', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In the results', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'At the end of the introduction', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match each section with its role:', 'Statistical significance is reported in the Results.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Introduction — statistical significance of the findings', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Methods — study design, sample, data collection, statistics', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Results — key findings, p-values, confidence intervals', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Discussion — implications, limitations, future research', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In a case report, which section is described as "the heart of the report"?', 'The case presentation gives background, history, findings and tests, interventions and follow-up in chronological order.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Introduction', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Abstract', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'References', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Case presentation', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About case reports:', 'Case reports describe a single patient (rarely up to four).', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Their abstract is usually 150–250 words', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They require written informed consent from the patient or guardian', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They are based on large population samples', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They must be de-identified', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which features can make a clinical case worth publishing as a case report?', 'Also ethical or public-health relevance (ICMJE and leading journals).', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 10, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Innovative diagnostic or therapeutic approach', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Educational merit, even for a common condition', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Rare or unique presentation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Atypical progression or outcome', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which tools are cited for critically appraising case reports?', 'IMRAD is the structure of research articles; PubMed is a search database.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 11, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'CARE guidelines', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'JBI checklists', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'IMRAD', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'PubMed', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Research article (a) or case report (b)? Which matches are correct?', 'Case reports aim at educational value and hypothesis generation, with selective references; hypothesis testing belongs to research articles.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 12, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Typically extensive in references — (a)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Aims at statistical significance and hypothesis testing — (b)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Focuses on a single patient — (b)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Follows IMRAD — (a)', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"A 32-year-old woman presented with persistent cough and fever. Chest X-ray revealed consolidation in the right lower lobe..." This excerpt most likely comes from:', 'A narrative about one patient''s presentation and investigations is typical of a case report.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A meta-analysis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A case report', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A medical textbook preface', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A randomized controlled trial', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are reasons for reading journal articles listed in Table 1?', 'Eight reasons: stay updated, solve problems, understand disease, grasp fundamentals, generate research ideas, academic requirements, support own views, impress others. The course recommends learning basic biostatistics.', 'Lesson: Reading · Seq 1 Introduction to medical texts', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Reading · Seq 1 Introduction to medical texts'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'To generate research ideas', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'To stay updated in a field', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'To solve specific clinical problems', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'To avoid learning statistics', 0);
