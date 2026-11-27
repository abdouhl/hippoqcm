-- Generated from data/lessons/s1-medical-english-social-1-humanities.json — lesson "Social Sciences · Seq 1 Humanities and social sciences": 0 exam + 15 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Social Sciences · Seq 1 Humanities and social sciences', 's1/medical-english/social-1-humanities.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the introduction, humanities and social sciences:', 'Humanities are classified as non-science academic disciplines.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are both focused on human life', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Differ in that humanities are mostly analytical or philosophical', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Differ in that social sciences are more scientific and experimental', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are both classified as natural sciences', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the history of the humanities:', 'The Sophists'' general education prepared young men for active citizenship in the polis (city-state).', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are traditionally known as the liberal arts', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Their modern conception dates from the Sophists in the mid-5th century BCE', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They appeared with the Industrial Revolution', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They date back to the ancient Greeks, who used them to educate citizens', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which disciplines belong to the humanities according to the course?', 'Sociology is a social science (man as a social being). Humanities: history, philosophy, religion, languages, literatures, arts, media, cultural studies.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Literature and languages', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Religion and history', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Philosophy', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Sociology', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The Encyclopedia Britannica (2006) defines the humanities as:', 'B is the course''s definition of social science; C is Fairchild''s; D is Seligman''s.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sciences dealing with the individual as a member of the group', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'General term for all sciences concerned with human affairs', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The scientific study of social, cultural and economic forces', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Branches of knowledge that investigate human beings, their culture and their self-expression', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Characteristics of the humanities stated in the course:', '"It neither seeks objective truth nor tries to explain the causality of events."', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They use narrative imagination as an important tool', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Their methods are creative and speculative by nature', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'There is no search for objective truth', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They explain the causality of events', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'What distinguishes the humanities from the natural sciences, according to the course?', '"What distinguishes the humanities from the natural Sciences is the mode of approach to any question."', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The search for objective, measurable truth', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The use of laboratory experiments', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Their recent origin', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The mode of approach to any question', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The humanities are described as self-reflexive and answer the fundamental question:', '"…answers the fundamental question what it means to be human."', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'How to measure human behaviour', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'What laws govern society', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'What it means to be human', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'How to cure social problems', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Compared with the humanities, the social sciences:', 'Subjectivity (experience, feelings, assumptions, philosophy) characterizes the humanities.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Study issues in a systematic and scientific way', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Deal with the basic elements of culture that determine general patterns of human behaviour', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are more objective, relying on facts, experiments and reality', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are more subjective, relying on feelings and assumptions', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The humanities, unlike the social sciences:', 'Reliance on facts and experiments is the social-science side of the comparison.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are more subjective', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Express spiritual and aesthetic values and the meaning of life', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Focus more on emotions and feelings than on the system employed', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Rely mainly on experiments', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Social science aims at:', 'Artistic self-expression is the domain of the humanities.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Studying how people interact, behave and develop a culture', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Understanding all aspects of society', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Studying only artistic self-expression', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Finding solutions to deal with social problems', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the scholar to his definition of social sciences:', 'Mitchell: strictly, the application of the scientific method to the complex network of human relationships.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Peter Lewis — concerned with the laws that govern society', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Mitchell — the study of human self-expression through the arts', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Fairchild — a general term for all the sciences concerned with human affairs', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Seligman — sciences dealing with the activities of the individual as member of the group', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The social sciences view man from two dimensions. Which pairings are correct?', 'Individual: his way of thinking (psychology). Social: his behaviour with others (sociology).', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Man as an individual being — psychology', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Man as a social being — philosophy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Man as a social being — sociology', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Man as an individual being — sociology', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the course, foreign-language learning develops at the same time:', '"Learners develop cognitive, social and linguistic competence at the same time."', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Only grammatical accuracy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Social competence', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Linguistic competence', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cognitive competence', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Fields said to be natural byproducts of social-science thinking:', 'Social-science thinking underlies law, international relations and government.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Literature', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'International relations', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Law', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Government', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The course presents English as:', 'English is "not only important in communicating directly" but also in education, technology and work, and for studying abroad.', 'Lesson: Social Sciences · Seq 1 Humanities and social sciences', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 1 Humanities and social sciences'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The first international medium used to interact with people worldwide', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Needed for digital and internet communication and the professional world', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Important in the world of education', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Useful only for direct conversation', 0);
