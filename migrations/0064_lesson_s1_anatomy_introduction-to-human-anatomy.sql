-- Generated from data/lessons/s1-anatomy-introduction-to-human-anatomy.json — lesson "Introduction to human anatomy": 3 exam + 14 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Introduction to human anatomy', 's1/anatomy/introduction-to-human-anatomy.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q4',
    'EMD1 2024-2025 Q1',
    'EMD1 2025-2026 Q1'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the definitions of anatomy given in the course:', 'Anatomy comes from the Greek anatomia / Latin anatomia = dissection. Ribet''s definition is the study of the form, reciprocal relationships and final structure of organs; the study of external forms for artists is artistic anatomy. Also false: "Rouvière defined it as the science of the external forms of the body"; "Paturet (1951) considered it "the only solid basis of the whole art of medicine"".', 'Lesson: Introduction to human anatomy', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Vesalius (1543) considered it "the only solid basis of the whole art of medicine"', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The word comes from Greek and Latin terms meaning "dissection" ("to cut through")', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ribet (1961) defined it as the study of the external forms of the human body intended for artists', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Rouvière defined it as the science of the external forms of the body', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Paturet (1951) considered it "the only solid basis of the whole art of medicine"', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the beginnings of anatomy (antiquity):', 'Aristotle is the founder of comparative anatomy (pathological anatomy was founded by Morgagni in the 18th century). Galen conducted his research on monkeys, not on human corpses.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hippocrates taught human anatomy in Greece', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The first anatomical descriptions on papyrus date back to 3000 BC', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Galen, "prince of physicians", carried out his research on human corpses', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Aristotle used the term "anatomy" for the first time', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Aristotle is the founder of pathological anatomy', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About anatomy among Muslims (10th–13th century):', 'The "Canon of Medicine" was written by Ibn Sina; Ibn Rushd wrote "Anatomy of the Organs". Also false: "Ibn Al-Haitham wrote "Anatomy of the Organs""; "Ibn Sina gave the first description of the pulmonary circulation".', 'Lesson: Introduction to human anatomy', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ibn Rushd (Averroes) wrote the "Canon of Medicine"', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Ibn Sina gave the first description of the pulmonary circulation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Ibn an-Nafis gave the first description of the pulmonary circulation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ibn Al-Haitham wrote "Anatomy of the Organs"', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Ibn Sina (Avicenna) used corpses from the battlefields to dissect', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which scientist gave the first description of the pulmonary circulation and wrote "Comments on the anatomy of the Canon of Ibn Sina"?', 'Ibn an-Nafis (1213–1288) first described the pulmonary circulation. William Harvey, in the 17th century, only rediscovered and demonstrated it.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ibn Al-Haitham', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Ibn an-Nafis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ibn Sina', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ibn Rushd', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'William Harvey', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About anatomy during the Renaissance:', 'Renaissance anatomy spans the 15th–16th centuries; Vesalius wrote the Fabrica (1543) and performed the first public dissection. Sylvius described the middle cerebral artery; pulmonary circulation was first described by Ibn an-Nafis. Also false: "It covers the 10th to 13th centuries"; "Gabriel Fallopius discovered the capillary vessels".', 'Lesson: Introduction to human anatomy', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It covers the 10th to 13th centuries', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Vesalius performed the first public dissection', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Gabriel Fallopius discovered the capillary vessels', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Jacques Dubois (Sylvius) gave the first description of the pulmonary circulation', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Vesalius published "De Humani Corporis Fabrica" in 1543', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the history of anatomy from the 17th to the 19th century:', 'The capillary vessels were discovered by Malpighi; Harvey rediscovered and demonstrated the pulmonary circulation. Also false: "Röntgen discovered X-rays in 1795"; "Formaldehyde has been used as a fixative since the 17th century".', 'Lesson: Introduction to human anatomy', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Formaldehyde has been used as a fixative since the 17th century', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Aselli and Pecquet discovered and demonstrated the lymphatic circulation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'William Harvey discovered the capillary vessels', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Morgagni founded pathological anatomy', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Röntgen discovered X-rays in 1795', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About modern and current anatomy:', 'Topographic and surgical anatomy developed in the 19th century (safety of amputations), the same period in which cell theory was demonstrated; comparative anatomy was born in the 18th century.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Comparative anatomy was born in the 19th century', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Topographic and surgical anatomy developed in the 20th century for the safety of amputations', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cell theory was demonstrated in the 17th century', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The Visible Man was obtained after the dissection of a condemned man into 1800 thin slices', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The Visible Man Project (1993) is a 3D virtual man showing real human anatomy', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A student studies an isolated kidney: its shape, dimensions, weight, colour, consistency and internal structure. Which branch of anatomy is this?', 'Descriptive (explanatory) anatomy is the analytical study of the morphology of separate organs; it is the basic study in anatomy. Topographic anatomy would study the kidney''s location and relations within its region.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Descriptive anatomy', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Artistic anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Topographic anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Functional anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Systemic anatomy', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Topographic anatomy:', 'Topographic (regional) anatomy studies location and relations of organs in one region and is the basis of surgery. The basic study in anatomy is descriptive anatomy; function vs morphology is functional anatomy.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the basic study in anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Studies the function of organs and its relationship to morphology', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is also called functional anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Studies the location and relationships of organs within the same anatomical region', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is the basic study of surgery', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match each branch of anatomy with its definition:', 'Pathological anatomy studies alterations of structures caused by diseases (external forms = artistic anatomy). Systemic anatomy studies the body''s systems; anatomy applied to the clinic is medical-surgical (clinical, applied) anatomy.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Radiological anatomy studies morphology using imaging techniques (X-ray, CT scan, MRI, scintigraphy)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Comparative anatomy studies homologous structures between individuals (ontogeny) or between species (phylogeny)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pathological anatomy studies the external forms of the human body', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Anthropological anatomy studies morphological variations in human races', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Systemic anatomy is anatomy applied to the clinic', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The anatomy of development:', 'Developmental anatomy covers prenatal development (embryology, fetology), postnatal development (growth) and teratology, from fertilization to adulthood.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Includes embryology', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Includes postnatal growth', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Studies morphological transformations from fertilization to adulthood', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Includes teratology (congenital malformations)', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Includes fetology', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which branch of anatomy studies the external forms of the human body and is intended for sculptors, engravers and painters?', 'Artistic, plastic anatomy or anatomy of forms studies the external forms of the body for artists. Anthropological anatomy studies variations between human races.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Descriptive anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Anthropological anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Microscopic anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Comparative anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Artistic (plastic) anatomy', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Microscopic (structural) anatomy:', 'Microscopic anatomy is the microscopic study of cells (cytology) and tissues (histology). Disease-caused alterations are pathological anatomy; the basis of surgery is topographic anatomy.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Studies alterations of anatomical structures caused by diseases', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the basic study of surgery', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Uses endoscopy as its main method', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Studies the structure of tissues (histology)', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Studies the structure of cells (cytology)', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are study methods of anatomy listed in the course?', 'The study methods are dissection, plastination, imaging, endoscopy, surgery and microscopy. Mummification is only cited as evidence of anatomical knowledge in antiquity.', 'Lesson: Introduction to human anatomy', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Introduction to human anatomy'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Microscopy', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Mummification', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Endoscopy (bronchoscopy, rectoscopy)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Dissection', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Plastination', 1);
