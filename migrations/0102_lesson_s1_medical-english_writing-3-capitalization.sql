-- Generated from data/lessons/s1-medical-english-writing-3-capitalization.json — lesson "Written Expression · L3 Capitalization": 0 exam + 16 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Written Expression · L3 Capitalization', 's1/medical-english/writing-3-capitalization.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which proper nouns must be capitalized according to the lecture?', 'Names of people, places, days, months, holidays and institutions are capitalized. "the hospital" used as a common noun is not.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Days and months (Monday, September)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Names of hospitals (St Mary''s Hospital)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Holidays', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Common nouns such as "hospital" in "admitted to the hospital"', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which drug names are correctly written?', 'Generic names are lowercase (aspirin, diazepam, metformin); brand names are capitalized (Prozac, Lipitor).', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'metformin', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Prozac', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Aspirin (used as a generic name mid-sentence)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'diazepam', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About generic and brand drug names:', 'Use the generic name unless there is a specific clinical reason to use the brand name; generic names are preferred in most formal writing.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Generic names are nonproprietary and lowercase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Brand names are proprietary and capitalized', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The brand name should be preferred in formal medical writing', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Disulfiram is generic; Antabuse is its brand name', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which eponymous diseases are written correctly?', 'The person''s name is capitalized; "disease" or "syndrome" is not.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Alzheimer''s disease', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Down syndrome', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Parkinson''s Disease', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'tourette syndrome', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the apostrophe in eponyms:', 'The lecture notes that SNOMED CT and others omit the apostrophe and advises following the institution''s style.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Some style guides, including SNOMED CT, recommend omitting it', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"Down syndrome" is preferred to "Down''s syndrome" by those guides', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'You should check your institution''s preferred style', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The apostrophe is compulsory in every style guide', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which disease names are correctly capitalized?', 'Diseases named after places are usually capitalized; common diseases (pneumonia, leukemia, cancer) are not.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lyme disease', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'West Nile virus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pneumonia (mid-sentence)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'leukemia', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentence is correct?', 'Most diseases are not capitalized unless they include a proper name.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient was diagnosed with cancer of the colon.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient was diagnosed with Cancer of the Colon.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient was diagnosed with Hypertension.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient has Type 2 Diabetes and Migraine.', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About medical abbreviations and acronyms:', 'Acronyms are capitalized: MRI, CT, ECG, ENT, ICU, ER, GP, WHO, CDC, NHS.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Their letters are almost always capitalized (MRI, ECG, GP)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"The mri scan showed no abnormalities" is correct', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'ENT stands for Ear, Nose, and Throat', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'NHS and CDC are written in capitals', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About medical specialties and departments:', 'Specialties are lowercase as common nouns and capitalized only as part of a proper name or department title.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"She was referred to the cardiology department" is correct', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"He specializes in Neurology" is correct', 0),
  ((SELECT MAX(id) FROM questions), 'C', '"She works in the Department of Cardiology at St Mary''s Hospital" is correct', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Specialties are always capitalized', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which uses of professional titles are correct?', 'Titles are capitalized before a name, as part of it; used as common nouns (the doctor, the nurse) they are lowercase.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Dr Smith examined the patient.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Professor Jones presented the case.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The Nurse administered the medication.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The doctor examined the patient.', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About Latin names of microorganisms:', 'Binomial nomenclature follows an international convention independent of ordinary English rules.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The genus is capitalized and the species is lowercase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Both parts are italicized in print', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'After the first full use the genus may be abbreviated: S. aureus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The convention follows ordinary English capitalization rules', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are written correctly?', 'Genus capital + species lowercase. Adjectival forms (staphylococcal, streptococcal) are lowercase and not italic.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Blood cultures were positive for Escherichia coli.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The wound swab grew staphylococcus Aureus.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'She had a streptococcal throat infection.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient''s infection was Staphylococcal.', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About headings and document titles:', 'Title case for the document title, sentence case for section headings ("Reason for admission"); consistency within a document is essential.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Title case capitalizes all major words but not articles or short prepositions (unless first)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sentence case capitalizes only the first word and proper nouns', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Most hospital templates use sentence case for section headings', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Mixing both conventions within one document is recommended', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"Discharge summary for Mrs Alia Thompson" is written in:', 'Only the first word and proper nouns are capitalized. In title case it would be "Discharge Summary for Mrs Alia Thompson".', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sentence case', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Title case', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'All capitals', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lowercase', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which corrections of "he was admitted to st mary''s hospital on friday. The mri was normal." are right?', 'Hospital is part of the institution''s proper name here; days and acronyms are capitalized; the sentence also starts with a capital (He).', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'St Mary''s Hospital', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Friday', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'MRI', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Hospital should stay lowercase because it is a common noun', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why does capitalization matter in medical writing, according to the lecture?', 'The conclusion stresses that the rules are not arbitrary but serve clarity and safety.', 'Lesson: Written Expression · L3 Capitalization', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L3 Capitalization'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It distinguishes a specific product (brand) from a general medication (generic)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It distinguishes a disease from a person''s name (Parkinson''s)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It serves clarity and safety', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The rules are arbitrary conventions with no clinical function', 0);
