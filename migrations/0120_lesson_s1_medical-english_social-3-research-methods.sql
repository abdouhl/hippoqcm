-- Generated from data/lessons/s1-medical-english-social-3-research-methods.json — lesson "Social Sciences · Seq 3 Social sciences and their methods": 0 exam + 21 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Social Sciences · Seq 3 Social sciences and their methods', 's1/medical-english/social-3-research-methods.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the history of the social sciences:', '18th century (Age of Enlightenment, age of revolutions): social philosophy gave way to a scientific emphasis.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Their emergence was helped by the Industrial and French revolutions', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They emerged as a distinct form of research in the 18th century', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They appeared as a distinct discipline in the 20th century', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Their origins can be traced back to the ancient Greeks', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Positivism was first articulated by:', 'Comte, best described in his 1848 work A General View of Positivism.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Thomas Kuhn', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Auguste Comte', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Émile Durkheim', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Max Weber', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About positivism as a mode of knowledge:', 'Positivism focuses on the scientific method''s ability to produce facts and falsifiable statements.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It rejects the scientific method', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It moved away from metaphysical speculation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It focuses on facts and falsifiable statements about the empirical world', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is knowledge based on actual positive sense experience', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to Burrell and Morgan (1979):', 'Ontology: social order or constant change? Epistemology: objective or subjective approach?', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Epistemology refers to our assumptions about the best way to study the world', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Epistemology is the study of human emotions', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Ontology refers to our assumptions about how we see the world', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ontology refers to the best method to collect data', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Statistical analysis was first incorporated into social scientific writings with:', 'Before that, early social science relied heavily on human observation.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Kuhn''s The Structure of Scientific Revolutions (1962)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Comte''s A General View of Positivism (1848)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Burrell and Morgan''s Sociological Paradigms (1979)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Émile Durkheim''s Suicide (1897)', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Compared with the natural sciences, the social sciences tend to be:', 'Independence from the observer is a feature of the natural sciences.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Less accurate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Less deterministic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Independent of the person making the observations', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Less unambiguous', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About inductive and deductive research:', 'Deductive = theory-testing (and possibly refining, improving, extending the theory).', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Inductive research is also called theory-building research', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Inductive research infers theoretical concepts and patterns from observed data', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Deductive research tests concepts and patterns from theory using new empirical data', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Deductive research is also called theory-building research', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Inductive (theory-building) research is most valuable when:', 'Deductive research is more productive when many competing theories exist.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'There are few prior theories or explanations', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The theory has been proven', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Data are already fully analysed', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'There are many competing theories of the same phenomenon', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The word "paradigm" was popularized by:', 'In The Structure of Scientific Revolutions.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'McDonald (1993)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Auguste Comte (1848)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Saunders et al. (2009)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Thomas Kuhn (1962)', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the paradigm to its emphasis:', 'Postmodernism claims there is no objective, knowable truth; a value-free sociology is the positivist aim.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Postmodernism — value-free, objective truth', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Positivism — objectivity, knowability and deductive logic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Social constructionism — truth as varying, socially constructed and ever-changing', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Critical paradigm — power, inequality and social change', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The interpretivist paradigm:', 'Saunders, Lewis & Thornhill (2009). Value-free sociology is positivism.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Stresses understanding differences among humans as social actors', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Calls for a value-free sociology', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Emphasizes research among people rather than objects', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Uses the analogy of the theatre, where actors interpret their parts', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The course illustrates the social constructionist idea that meaning is constructed socially with:', 'Different meanings of hand gestures show meaning is constructed socially and collectively. The two students illustrate interpretivism.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Durkheim''s study of suicide', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Hand gestures that vary across regions of the world', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Two students from different academic fields', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Birth and marriage certificates', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which paradigm states that social science can never be truly objective or value-free and should seek social change?', 'The critical paradigm, unlike positivism.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Social constructionism', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Positivism', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Interpretivism', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Critical paradigm', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Mental attitudes required for successful scientific research:', 'Curiosity, scepticism and objectivity.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Prejudice', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Objectivity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Scepticism', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Curiosity', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the course''s approach to a social-science problem:', 'Order: observe → define problem → review literature → observe more → framework & hypothesis → design → collect data → analyse → conclude.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Drawing conclusions comes before collecting data', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Choosing a research design is described as the crux of the research process', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'After analysing the results the hypothesis can be confirmed, rejected or modified', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reviewing the literature comes after defining the problem', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the method to its example:', 'Tracing past developments is the historical method.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Historical method — collecting birth and marriage certificates', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Comparative and cross-cultural method — comparing how different societies meet similar needs', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Case method — detailed study of a single person, a town or a whole country', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Case method — tracing past developments of a social situation', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Qualitative research methods listed in the course:', 'Correlational research is one of the 4 quantitative methods (survey, correlational, causal-comparative, experimental).', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Correlational research', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Case study research', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'One-on-one online interview and content analysis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ethnographic research and focus groups', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About primary and secondary research:', 'Secondary research uses information already collected by others.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primary research is conducted by the researchers themselves', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Primary data are collected first-hand and are highly accurate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Newspapers, reports and audiovisual evidence are secondary data', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Secondary research always uses close-ended questionnaires sent by the researcher', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why is it difficult to discover exact laws governing social life?', 'Investigators seldom employ controlled experiments; they use careful observation and abstraction.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Social scientists routinely use controlled experiments', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'There is a human element in any social situation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Laws are not measurable (e.g. satisfaction, democracy)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Society is extremely complex', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Recasting a research problem so that it fits one''s favourite method (e.g. survey research) is called:', 'Methods should be chosen to fit the problem, not the other way around.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Pursuing research fads', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Favored research methods', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Blind data mining', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Unresearchable problems', 0);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"Blind data mining" means:', 'B = research fads, C = insufficiently motivated questions, D = unresearchable problems.', 'Lesson: Social Sciences · Seq 3 Social sciences and their methods', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 3 Social sciences and their methods'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Collecting data first with available instruments, then figuring out what to do with it', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Studying problems that cannot be answered with evidence', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Choosing popular topics with a limited shelf life', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Choosing pet problems that interest only the researcher', 0);
