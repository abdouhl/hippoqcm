-- Generated from data/lessons/s1-medical-english-terminology-3-cardiovascular.json — lesson "Terminology · Unit 3 Cardiovascular system": 0 exam + 14 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Terminology · Unit 3 Cardiovascular system', 's1/medical-english/terminology-3-cardiovascular.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The three main components of the cardiovascular system are:', 'Heart, blood vessels and blood, working together.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The heart', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The lungs', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The blood vessels', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The blood', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The cardiovascular system:', 'Bile is produced by the liver.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Delivers oxygen, nutrients and hormones', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Removes carbon dioxide and other waste products', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is also called the circulatory system', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Produces bile', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the chambers of the heart:', 'Atria = upper chambers; ventricles = lower pumping chambers.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The two atria are at the top', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'There are four chambers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The two ventricles are at the bottom', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The ventricles are the upper chambers', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The right side of the heart:', 'The left side propels oxygenated blood into the systemic circulation.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Propels oxygenated blood into the systemic circulation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Pumps blood to the lungs', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Has no ventricle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Pumps blood directly to the brain', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The strict separation between the right and left sides of the heart is important because:', '"The strict division… ensures efficiency by preventing oxygen-rich and oxygen-poor blood from mixing."', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It prevents oxygen-rich and oxygen-poor blood from mixing', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It slows the heart rate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It allows blood to skip the lungs', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It ensures efficiency', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the blood vessel to its function:', 'Arteries carry blood away from the heart; veins bring it back.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Capillaries — fine exchange sites with cells', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Arteries — carry blood away from the heart under strong pressure', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Veins — carry blood away from the heart under strong pressure', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Veins — return blood to the heart with the help of valves', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the blood component to its role:', 'Hemoglobin is in red blood cells.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Red blood cells — contain hemoglobin to transport oxygen', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Plasma — carries hemoglobin inside white cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'White blood cells — defend the body against pathogens', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Platelets — contribute to clot formation', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Blood is described in the text as:', '"The blood itself is a specialized connective tissue."', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A muscular organ', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A nervous tissue', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A specialized connective tissue', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A type of epithelium', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Regulation of the cardiovascular system:', 'The autonomic nervous system controls involuntary functions.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is entirely voluntary', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is achieved through neural and hormonal control', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Adrenaline prepares the system for stress or physical effort', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The autonomic nervous system adjusts heart rate and vessel diameter', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Besides circulating blood, the cardiovascular system participates in:', 'The text lists temperature regulation, immune defence and coordination of processes.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Immune defence', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Temperature regulation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Producing hormones such as insulin', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Coordination of complex physiological processes', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match each term to its definition:', 'Ventricle = one of the lower pumping chambers; platelet = clotting component.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Capillary — the smallest blood vessel, where exchange with tissues occurs', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ventricle — a small blood component that helps clotting', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Atrium — one of the upper chambers of the heart', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Hemoglobin — the protein in red blood cells that carries oxygen', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The correct passive form of "Red blood cells transport oxygen" is:', 'Object → subject + is + past participle + by agent.', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Oxygen transported red blood cells.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Red blood cells are transported by oxygen.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Oxygen is transported by red blood cells.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Oxygen is transporting by red blood cells.', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences are correct passive forms?', 'The passive needs the past participle: "is absorbed".', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Blood is pumped to the lungs by the heart.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The body is defended against pathogens by white blood cells.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The heart rate is adjusted by the autonomic nervous system.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Oxygen is absorb in the lungs.', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the passive voice:', 'e.g. "Oxygen is absorbed in the lungs and is then transported to tissues by red blood cells."', 'Lesson: Terminology · Unit 3 Cardiovascular system', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Terminology · Unit 3 Cardiovascular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The agent can be introduced with "by"', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The verb is formed with be + past participle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The object of the active sentence becomes the subject', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The verb is always in the -ing form', 0);
