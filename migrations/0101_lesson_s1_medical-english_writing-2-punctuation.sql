-- Generated from data/lessons/s1-medical-english-writing-2-punctuation.json — lesson "Written Expression · L2 Punctuation": 0 exam + 21 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Written Expression · L2 Punctuation', 's1/medical-english/writing-2-punctuation.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the lecture, which reasons make punctuation critical in healthcare?', 'The five reasons are accuracy, patient safety, professional credibility, legal protection and standardisation. The lecture explicitly says punctuation is NOT merely stylistic preference.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Legal protection in cases of dispute or litigation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Patient safety', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Standardisation across multidisciplinary teams', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is mainly a matter of stylistic preference', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which abbreviations are correctly written according to the lecture?', 'Common abbreviations such as e.g., i.e., a.m., p.m. and et al. take periods; acronyms (WHO, MRI, ICU, ER, ECG) do not.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'e.g.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'W.H.O.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'et al.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'M.R.I.', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are correct uses of the period in medical writing?', 'Periods mark decimal points (0.5 mg, 37.5°C, not a comma) and end imperative sentences. "stable., and" is the lecture''s example of an unnecessary period.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.5 mg', 1),
  ((SELECT MAX(id) FROM questions), 'B', '37,5°C', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Administer 10 mg of morphine sulphate.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient''s vital signs were stable., and the doctor ordered discharge.', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why does the lecture strongly recommend the serial (Oxford) comma in medical writing?', 'The serial comma (before "and/or" in lists of three or more) prevents ambiguity: "diabetes, hypertension, and heart disease" = three separate conditions. The conjunction stays.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It shows that the listed items are separate (e.g. three distinct conditions)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It prevents ambiguity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is only needed with lists of two items', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It replaces the conjunction "and"', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences are correctly punctuated?', 'A comma goes before FANBOYS joining two independent clauses and after introductory phrases. C is a comma splice; D has an unnecessary comma between subject and verb.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The diagnosis was uncertain, so additional tests were ordered.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'After the surgery, the patient was transferred to the recovery room.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient presented with fever, he also reported chills.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient, was discharged yesterday.', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"The patient was experiencing chest pain, the ECG was ordered." Which corrections does the lecture accept?', 'A comma splice is fixed with a semicolon, a comma + coordinating conjunction, or a period.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 19, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient was experiencing chest pain; the ECG was ordered.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient was experiencing chest pain, so the ECG was ordered.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient was experiencing chest pain. The ECG was ordered.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient was experiencing chest pain: the ECG, was ordered.', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About commas and non-essential information:', 'Non-essential information goes between commas; essential (restrictive) information that identifies which patients takes no commas.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"The patient, who had a history of diabetes, presented with foot pain" correctly sets off extra information', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"Patients who have diabetes should monitor their blood sugar" needs no commas because the clause is essential', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"Dr. Chen, the chief surgeon, performed the procedure" is correct', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Restrictive (essential) clauses are always placed between commas', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which statements about commas are correct according to the lecture?', 'Rules 6–8: coordinate adjectives ("and" test), direct address, and a comma after transitional phrases such as Therefore, Furthermore, In conclusion.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Use a comma between coordinate adjectives: "a severe, persistent cough"', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The test for coordinate adjectives is whether "and" can be placed between them', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"Mr. Smith, your test results are normal" uses a comma for direct address', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'No comma is used after "Therefore" at the start of a sentence', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the semicolon:', 'A semicolon joins two complete, related clauses. After a dependent clause ("Because…") use a comma; "The patient presented with" is not a complete sentence.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It marks a pause stronger than a comma but less final than a period', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Both clauses it joins must be able to stand alone as sentences', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It can follow a dependent clause: "Because the patient presented with chest pain; we ordered an ECG"', 0),
  ((SELECT MAX(id) FROM questions), 'D', '"The patient presented with; fever and chills" is correct', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentence is punctuated correctly?', 'With a transitional expression joining two independent clauses: semicolon before the transition, comma after it.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 11, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient was discharged; however, the symptoms recurred.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient was discharged, however, the symptoms recurred.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient was discharged; however the symptoms recurred.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient was discharged however; the symptoms recurred.', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the transitional expression to its category as given in the lecture:', 'Addition: moreover, furthermore, in addition. Contrast: however, nevertheless, on the other hand. Cause/effect: therefore, consequently, as a result. Time: subsequently, meanwhile, later. Emphasis: indeed, in fact, certainly.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'consequently — cause/effect', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'nevertheless — contrast', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'meanwhile — addition', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'indeed — emphasis', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'When should items in a list be separated by semicolons?', 'Semicolons separate complex list items that contain commas (places with states, drugs with dose and indication). Simple lists use commas.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 10, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'When one or more items already contain commas', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'When listing three simple symptoms such as nausea, vomiting and diarrhoea', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In "Boston, Massachusetts; Los Angeles, California; and Chicago, Illinois"', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Never in medication lists', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are uses of the colon listed in the lecture?', 'Colons introduce lists, explanations and quotations, and are used in time, ratios and title:subtitle. Joining two related clauses is the semicolon''s job — D is the lecture''s "colon instead of semicolon" error.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 12, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Introducing an explanation: "The diagnosis was clear: the patient had a myocardial infarction."', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Separating hours and minutes: 08:30', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Separating a title and subtitle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Joining two related independent clauses such as "The patient had fever: the patient was administered antipyretics."', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences contain a colon error described in the lecture?', 'A colon must not follow a preposition (A) or a verb (B). D uses a semicolon where a colon is needed. C is the correct model.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 14, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient was treated with: antibiotics and antipyretics.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient''s symptoms were: fever, chills, and headache.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The following tests were ordered: complete blood count, urinalysis, and chest X-ray.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The diagnosis was; myocardial infarction.', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About capitalisation after a colon, the lecture says:', 'Both styles exist; the recommendation is consistency.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 13, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lowercase is most common when a clause, phrase or list follows', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A capital may be used when a complete sentence follows (more formal)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'One style should be chosen and applied consistently', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A capital letter is always compulsory after a colon', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About punctuating lists of instructions and dosages:', 'Numbers show the order of steps, bullets organise without implying order; colon + semicolons is rated "very clear". Best practice requires parallel structure and consistency.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 16, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sequential instructions should be numbered', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Bullets are used for non-sequential items', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A colon followed by semicolons gives a very clear dosage list', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'List items do not need parallel grammatical structure', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In a research abstract, the lecture recommends:', 'Abstract guidelines: periods end each sentence, commas separate list items, semicolons join related sentences, colons introduce findings.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 19, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Colons to introduce findings (Background:, Methods:, Results:)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Semicolons to join related sentences', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Commas to separate items in lists', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'No periods, to save space', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which uses of the apostrophe are correct?', 'Plural -s nouns take only an apostrophe; irregular plurals take ''s. No apostrophe for plain plurals (signs), and contractions are avoided in formal writing ("is not").', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 20, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'the patients'' records (belonging to several patients)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'the children''s ward', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient''s vital sign''s were recorded.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient''s not responding to treatment. (in a formal report)', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the mark to its use:', 'Parentheses introduce abbreviations (COPD); square brackets are for editorial insertions. The em dash should be used sparingly.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 21, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'En dash — a range: a 10–15 mg dose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Hyphen — a compound modifier: a 45-year-old man', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Square brackets — an abbreviation introduced for the first time', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Em dash — to be used frequently in formal medical writing', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About quotation marks in medical writing:', 'Commas and periods go inside the closing quotation mark; ? and ! go inside only when they belong to the quotation.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 22, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They enclose a patient''s exact words', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Double quotation marks are the standard', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Single quotation marks are for a quotation within a quotation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Periods are conventionally placed outside the closing quotation mark', 0);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"Do not administer aspirin if patient has fever headache and nausea." What does the lecture say?', 'Case study 8.1: missing commas create ambiguity in a medication instruction, a patient-safety risk.', 'Lesson: Written Expression · L2 Punctuation', NULL, 'generated', 17, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L2 Punctuation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The missing commas make the instruction ambiguous', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The correction is "…if patient has fever, headache, and nausea."', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'This kind of error can lead to medication errors', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The sentence is acceptable because medical notes are informal', 0);
