-- Generated from data/lessons/s1-medical-english-phonetics-3-consonants.json — lesson "Phonetics · L3 English consonants": 0 exam + 15 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Phonetics · L3 English consonants', 's1/medical-english/phonetics-3-consonants.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which three parameters classify every English consonant?', 'The three-term system: place (where), manner (how), voicing (vocal fold vibration or not).', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Length', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Voicing', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Manner of articulation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Place of articulation', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'How many consonant phonemes does English have according to the lecture?', 'The lecture applies the classification to all twenty-four consonant phonemes of English.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '44', 0),
  ((SELECT MAX(id) FROM questions), 'B', '24', 1),
  ((SELECT MAX(id) FROM questions), 'C', '20', 0),
  ((SELECT MAX(id) FROM questions), 'D', '26', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the place of articulation to the articulators involved:', 'Dental = tongue and upper teeth; tongue + alveolar ridge = alveolar.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glottal — the vocal folds themselves', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Labiodental — lower lip and upper teeth', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Velar — tongue back and soft palate', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Dental — tongue and alveolar ridge', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the manner of articulation to its description:', 'Approximants involve only a slight narrowing with no audible friction; air through the nose (lowered velum) defines nasals.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Fricative — a narrow gap that creates audible friction', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Approximant — complete closure with air through the nose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Affricate — a plosive closure with a fricative release', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Plosive — complete closure followed by a sudden release', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which consonants are nasals?', '/l/ is an alveolar lateral approximant.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '/m/', 1),
  ((SELECT MAX(id) FROM questions), 'B', '/l/', 0),
  ((SELECT MAX(id) FROM questions), 'C', '/ŋ/', 1),
  ((SELECT MAX(id) FROM questions), 'D', '/n/', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are voiceless/voiced pairs sharing the same place and manner?', 'Pairs: /p/–/b/, /t/–/d/, /k/–/g/, /f/–/v/, /s/–/z/, /θ/–/ð/. /m/ and /n/ differ in place (bilabial vs alveolar).', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '/θ/–/ð/', 1),
  ((SELECT MAX(id) FROM questions), 'B', '/f/–/v/', 1),
  ((SELECT MAX(id) FROM questions), 'C', '/k/–/g/', 1),
  ((SELECT MAX(id) FROM questions), 'D', '/m/–/n/', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the lecture''s consonant chart, when two symbols share a cell:', 'Symbols in the same cell share place and manner; left = voiceless, right = voiced.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They differ in manner of articulation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The left one is voiceless and the right one is voiced', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The left one is voiced and the right one is voiceless', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They differ in place of articulation', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '/g/ as in "gland" is:', '/g/ = voiced velar plosive.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Velar', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Alveolar', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Plosive', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Voiced', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '/ʃ/ as in "shoulder" is:', '/ʃ/ = voiceless post-alveolar fricative. The affricates are /tʃ/ and /dʒ/.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Post-alveolar', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Fricative', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Voiceless', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Affricate', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '/dʒ/ as in "jaundice" is a:', 'Its voiceless partner /tʃ/ is in "chest". The palatal approximant is /j/ (yawn).', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Voiced post-alveolar affricate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Voiceless post-alveolar affricate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Voiced palatal approximant', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Voiced alveolar plosive', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which consonant–word pairs from the lecture are correct?', 'The same spelling "th" is voiceless /θ/ in thorax and voiced /ð/ in this.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '/ð/ — this', 1),
  ((SELECT MAX(id) FROM questions), 'B', '/ʒ/ — measure', 1),
  ((SELECT MAX(id) FROM questions), 'C', '/θ/ — thorax', 1),
  ((SELECT MAX(id) FROM questions), 'D', '/θ/ — this', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which consonants are approximants according to the lecture''s table?', '/h/ is a voiceless glottal fricative. /r/ is a post-alveolar approximant.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '/w/ — bilabial-velar approximant', 1),
  ((SELECT MAX(id) FROM questions), 'B', '/h/ — glottal approximant', 0),
  ((SELECT MAX(id) FROM questions), 'C', '/j/ — palatal approximant', 1),
  ((SELECT MAX(id) FROM questions), 'D', '/l/ — alveolar lateral approximant', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which IPA transcriptions match the lecture?', 'tissue is /ˈtɪʃuː/: the "ss" is /ʃ/.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'tissue /ˈtɪsuː/', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'lung /lʌŋ/', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'pulse /pʌls/', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'chest /tʃest/', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sound is a glottal fricative?', 'Glottal = produced at the vocal folds themselves; /h/ is the voiceless glottal fricative.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '/h/ as in heart', 1),
  ((SELECT MAX(id) FROM questions), 'B', '/s/ as in sternum', 0),
  ((SELECT MAX(id) FROM questions), 'C', '/k/ as in cough', 0),
  ((SELECT MAX(id) FROM questions), 'D', '/ŋ/ as in lung', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'How many places of articulation does the lecture list for English consonants?', 'Bilabial, labiodental, dental, alveolar, post-alveolar, palatal, velar, glottal.', 'Lesson: Phonetics · L3 English consonants', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L3 English consonants'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10', 0),
  ((SELECT MAX(id) FROM questions), 'B', '8', 1),
  ((SELECT MAX(id) FROM questions), 'C', '6', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5', 0);
