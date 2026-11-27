-- Generated from data/lessons/s1-medical-english-skills-1-word-formation.json — lesson "Work Techniques · L1 Medical vocabulary and word formation": 0 exam + 16 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Work Techniques · L1 Medical vocabulary and word formation', 's1/medical-english/skills-1-word-formation.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the lecture, medical vocabulary:', 'Meaning is systematically encoded through standardized word parts, not arbitrary forms.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is made of arbitrary lexical forms', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a rule-governed morphological system based on Greek and Latin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is characterized by morphological transparency', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Should be learned by analytical decoding rather than rote memorization', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the component to its role:', 'The combining vowel has no meaning of its own; it is a morphophonemic connector.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Prefix — semantic modifier', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Root — semantic core of the term', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Suffix — diagnostic and procedural indicator', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Combining vowel — carries the main meaning', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the combining vowel:', 'In cardi/o/logy or gastr/o/enter/o/logy, "o" is purely a linking element.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It changes the meaning of the root', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is most frequently "o"', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It has no semantic meaning of its own', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It facilitates pronunciation between morphemes', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which root–meaning pairs are given in the lecture?', 'dermat = skin; neur = nerve.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'hemat — blood', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'oste — bone', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'dermat — nerve', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'nephr — kidney', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which prefix–meaning pairs are correct?', 'dys- = abnormal or impaired; hyper- = excessive.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'dys- — excessive', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'tachy- — fast', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'peri- — surrounding', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'brady- — slow', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Hyperglycemia and hypoglycemia, or tachycardia and bradycardia, show that:', 'The lecture concludes that prefixes are not auxiliary elements but core diagnostic indicators.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The suffix always decides the meaning alone', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Opposite conditions can be distinguished only by the prefix', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Prefixes can be core diagnostic indicators', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Prefixes are only auxiliary elements', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which suffix–meaning pairs are correct?', '-ectomy = surgical removal; -itis = inflammation.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '-ectomy — inflammation', 0),
  ((SELECT MAX(id) FROM questions), 'B', '-pathy — disease', 1),
  ((SELECT MAX(id) FROM questions), 'C', '-osis — abnormal condition', 1),
  ((SELECT MAX(id) FROM questions), 'D', '-scopy — visual examination', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the lecture, which component is often the most diagnostically significant?', 'Suffixes define the grammatical and clinical category (inflammation, procedure, condition, field) and are often the most diagnostically significant component.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The prefix', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The combining vowel', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The suffix', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The root', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About Greek and Latin in medical English:', 'e.g. cardiac (Latin-based descriptive adjective) vs cardiology (Greek-based discipline).', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Latin is more common for anatomical structures and descriptive terms', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The dual system produces parallel forms for related concepts', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Greek is mainly associated with diagnostic, pathological and functional terms', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Greek is mainly used for anatomy', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the word to the formation process given in the lecture:', 'cardiology → cardiologist → cardiac → cardiopathy illustrates derivational morphology (a lexical family from one root).', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'cardiologist — compounding', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'osteoarthritis — compounding', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'dermatitis — affixation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'gastroenterology — blending of roots', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the lexical family cardiology → cardiologist → cardiac → cardiopathy:', 'cardiopathy = disease of the heart (-pathy).', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'cardiopathy is a surgical procedure', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'cardiology is the field of study', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'cardiac is an adjective', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'cardiologist is the specialist', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'What is the order of the lecture''s decoding model?', 'The suffix comes first because it is the most stable marker and narrows the interpretive domain.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Prefix → root → suffix → reconstruct meaning', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Suffix → prefix → root(s) → reconstruct meaning', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Root → prefix → suffix → reconstruct meaning', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Reconstruct meaning → suffix → root → prefix', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In step 2 of the decoding model, prefixes may indicate:', 'The diagnostic frame is given by the suffix (step 1). Prefixes also mark time/function (pre-, post-).', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Location (endo-, intra-, sub-)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The diagnostic frame of the term (disease, procedure)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Negation (a-, anti-)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Intensity (hyper-, hypo-)', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Hyperglycemia means:', 'hyper- (excessive) + glyc- (glucose) + -emia (blood condition).', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Inflammation of the pancreas', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Abnormally low blood glucose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Abnormally high concentration of glucose in the blood', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Excessive blood pressure', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are examples of irregularities in medical terminology given in the lecture?', 'Irregularities come from historical borrowing, clinical conventions, international variation and abbreviation systems.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ECG vs EKG (regional variation)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'US/UK terminology differences', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'myocardial infarction = "heart attack" (clinical synonymy)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The combining vowel "o"', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which study strategies does the lecture recommend for learning medical vocabulary?', 'The lecture calls for a shift from rote memorization toward analysis, plus morphological mapping and active retrieval.', 'Lesson: Work Techniques · L1 Medical vocabulary and word formation', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Work Techniques · L1 Medical vocabulary and word formation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Contextual exposure through authentic clinical texts', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Analytical decomposition of terms', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Spaced repetition of lexical families', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Rote memorization of isolated word lists', 0);
