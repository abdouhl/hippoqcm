-- Generated from data/lessons/s1-medical-english-social-2-disciplines.json — lesson "Social Sciences · Seq 2 Social sciences and their disciplines": 0 exam + 21 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Social Sciences · Seq 2 Social sciences and their disciplines', 's1/medical-english/social-2-disciplines.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About anthropology:', 'Being limited to primitive societies is listed as a misconception.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The term comes from the Greek anthropos (mankind) and logos (study)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is also a natural science in some respects', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is limited to the study of "primitive" societies', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is the comparative study of humans as a group', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The four main sub-fields of anthropology are:', 'Applied anthropology is sometimes added as a fifth branch but is not as well established.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Physical anthropology', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sociocultural anthropology', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Linguistic and archaeological anthropology', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Applied anthropology, the best-established branch', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In archaeological anthropology, "ecofacts" are:', 'Artifacts = material remains; ecofacts = ecological footprints of past societies.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Natural features studied by physical geography', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The material remains of human societies', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The footprints on the ecology left by past societies', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Written records of ancient societies', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Linguistic anthropology:', 'Duranti (1997). It often studies languages of indigenous non-Western peoples with no form of writing.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Studies language as a cultural resource and speaking as a cultural practice', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Usually focuses on unwritten languages', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Studies only the grammar of written Western languages', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is also called anthropological linguistics or ethnolinguistics', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Misconceptions about anthropology listed in the course:', 'Overlap with other disciplines (law, religion, politics, art…) is true, not a misconception.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Anthropologists only study rural people and rural areas', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Anthropology overlaps with other disciplines that study society', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Anthropology is limited to "primitive" societies', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Anthropologists want to preserve defunct cultural practices in museums', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About history:', 'Historiography = the writing of history based on critical examination of sources.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Herodotus is called the father of history', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ibn Khaldun is called the father of historiography', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The word comes from the Greek Historie, meaning careful enquiry or investigation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Historiography is the study of the earth''s surface', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the course, the fruits of the study of history are:', 'Four fruits: order, variety, prediction, limitation.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Exact laws of human behaviour', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Appreciation of variety', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Imposition of order', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Possibilities of prediction and realization of limitation', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About archaeology:', 'Prehistoric = before writing; industrial archaeologists study the post-Industrial-Revolution period.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It starts with the first artefacts, about 2.5 million years ago in East Africa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ethno-archaeologists study how people living today organize and use objects', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The word means "discourse about ancient things"', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Prehistoric archaeologists study the period after the Industrial Revolution', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Geography differs from geology because:', 'Geography = natural environment and its influence on social and cultural development (Dorrell et al., 2019).', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Geography also studies humans', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Geography is limited to map-making', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Geology studies the human landscape', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Geology focuses mainly on the physical Earth and the processes shaping it', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The two main divisions of geography and the link between geography and other disciplines:', '"If a phenomenon can be mapped, it has some kind of relationship to geography."', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The link is the spatial perspective', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The link is the chronological perspective', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Human geography — the human landscape and human–environment relations', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Physical geography — physical features of the earth', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About political science:', 'Subfields: political theory, comparative politics, international relations, political economy, political sociology, public administration, environmental politics.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"Political" comes from the Greek polis (city or sovereign state)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Government is the only institution with legitimate authority to use coercive power', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Aristotle viewed man as a "political animal"', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its main subfield is microeconomics', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the history of economics:', 'Marx challenged capitalism with the labour theory of value; Smith, Rousseau and Locke promoted the self-regulating economy.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 10, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Adam Smith is known as the father of modern economics', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The word comes from oikos and nemein: "one who manages a household"', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Karl Marx promoted the self-regulating economy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Alfred Marshall saw economics as a study of wealth and a study of man', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Microeconomics, as opposed to macroeconomics:', 'Macroeconomics = aggregative economics, general equilibrium, level of income and employment.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 11, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has price determination as its central problem', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Deals with partial equilibrium analysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Studies individual economic units', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is also called aggregative economics', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which statements are normative economics?', 'Normative = value judgments ("what ought to be"). C and D are the course''s examples of positive economics.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 11, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Poverty and unemployment are the biggest problems in Africa', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The life expectancy at birth in Somalia is rising', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The poor should pay no taxes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Females ought to be given job opportunities', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the psychologist to the approach:', 'Maslow (with Carl Rogers) is humanistic psychology. Skinner is the behaviourist.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 12, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sigmund Freud — psychoanalytic theory', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Abraham Maslow — behaviourism', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'William James — functionalism', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Wundt — structuralism', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'B. F. Skinner:', 'Gestalt principles were introduced by Wertheimer, Koffka and Köhler.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 13, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Spoke of reinforcement and punishment as major factors driving behaviour', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Introduced Gestalt principles in the United States', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Was a behaviourist', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Developed the operant conditioning chamber', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The word Gestalt roughly translates to:', 'Gestalt psychology: how parts relate to each other as a whole in perception.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 12, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Mind', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Whole', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Structure', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Behaviour', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the origins of sociology:', 'First US course: University of Kansas, 1890 (Elements of Sociology).', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 13, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The term was coined by Auguste Comte in 1838', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The first US sociology course was taught at Harvard in 1950', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The first European department was founded in Bordeaux in 1895 by Durkheim', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It comes from the Latin socius (companion) and the Greek logos', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A study of the accepted rules of conversation among teenagers is an example of:', 'Macro-level analysis looks at trends among large groups, e.g. how language use has changed over time.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 14, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Macro-level sociology', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Archaeological anthropology', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Normative economics', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Micro-level sociology', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About Ibn Khaldun''s New Science (''Ilm al-''Umran):', 'He stressed that social and historical phenomena are controlled by laws that must be discovered.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 15, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its central concept is ''Assabiyya — what holds groups together', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It holds that social phenomena are the outcome of chance', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It uses a dualist bedouin/sedentary typology', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its introduction is the Muqaddimah ("Prologue")', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to Ibn Khaldun, historians commit errors because of:', 'Three major factors; remedies include absolute objectivity and checking reports and reporters.', 'Lesson: Social Sciences · Seq 2 Social sciences and their disciplines', NULL, 'generated', 15, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 2 Social sciences and their disciplines'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Bias and prejudice', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Blind acceptance of reports given by others', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Excessive use of statistics', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ignorance of the natures of civilization and peoples', 1);
