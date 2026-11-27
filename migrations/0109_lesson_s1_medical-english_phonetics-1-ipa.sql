-- Generated from data/lessons/s1-medical-english-phonetics-1-ipa.json — lesson "Phonetics · L1 Introduction to the IPA": 0 exam + 14 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Phonetics · L1 Introduction to the IPA', 's1/medical-english/phonetics-1-ipa.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why does English need a phonetic alphabet, according to the lecture?', 'English spelling only partially represents pronunciation; a phonetic alphabet assigns exactly one symbol to each distinct sound.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The same letters can correspond to different sounds', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The same sound can be written in different ways', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Medical terms come from Greek and Latin roots whose spelling doesn''t match ordinary English patterns', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'English spelling represents pronunciation perfectly', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the branch of phonetics to what it studies:', 'Phonetics studies physical properties of speech sounds in three branches; this course focuses on articulatory phonetics.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Auditory — how sounds are perceived by the listener', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Acoustic — how sounds are transmitted as sound waves', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Articulatory — how sounds are produced by the vocal organs', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Auditory — how sounds are produced by the larynx', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why does the course focus on articulatory phonetics?', 'Articulatory phonetics deals with sound production by the vocal organs, which is what learners need to change their pronunciation.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It studies sound waves with instruments', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is the only branch of phonetics', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the branch most directly useful for improving a learner''s own pronunciation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It replaces phonology', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About phonology:', 'Phonology studies which sound differences change meaning; its basic unit is the phoneme. Sound waves belong to acoustic phonetics.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It studies sound waves', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It studies how sounds function within a particular language''s sound system', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It asks which sound differences change meaning', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its basic unit is the phoneme', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A phoneme is:', '/p/ and /b/ are separate phonemes because pin and bin are different words. A variant that never changes meaning is an allophone.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A sound variant that never changes meaning', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Shown inside square brackets in narrow transcription', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The same thing as a letter of the alphabet', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The smallest unit of sound that can distinguish one word from another', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The p in "pin" and the p in "spin":', 'Allophones are different phonetic realizations of one phoneme that never change meaning on their own.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are two different phonemes because they sound slightly different', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Are allophones of the same phoneme /p/', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Differ because the first is aspirated and the second is not', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are perceived by English speakers as the same sound', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About slant brackets and square brackets:', 'The course uses broad (slant-bracket) transcription for most purposes, keeping square brackets for specific phonetic detail.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[pʰɪn] is a narrow (phonetic) transcription', 1),
  ((SELECT MAX(id) FROM questions), 'B', '/pɪn/ is a broad (phonemic) transcription', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The ʰ in [pʰɪn] marks aspiration', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'This course mostly uses square brackets', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which transcriptions are narrow (phonetic)?', 'Square brackets + the aspiration diacritic = narrow. Slant brackets = broad.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '/pen/', 0),
  ((SELECT MAX(id) FROM questions), 'B', '[pʰen]', 1),
  ((SELECT MAX(id) FROM questions), 'C', '/tiːm/', 0),
  ((SELECT MAX(id) FROM questions), 'D', '[tʰiːm]', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the IPA:', 'Vowel symbols are less predictable from spelling and must be learned individually.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It was developed by the International Phonetic Association', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Each symbol always represents the same sound', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is language-independent', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Vowel symbols are easy to predict from ordinary spelling', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which IPA consonant symbols does the lecture describe as unfamiliar (not ordinary Latin letters)?', '/p, b, t, d, k, g, m, n, l, r/ look like Latin letters; /θ, ð, ʃ, ʒ, ŋ/ are borrowed from Greek or specially designed.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ʃ', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'ŋ', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'k', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'θ', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the word to its spelling difficulty as given in the lecture:', 'In muscle /ˈmʌsl/ it''s the "c" that is silent.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'psychology — silent initial "p"', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'stomach — "ch" represents /k/', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'pharmacy — "ph" represents /f/', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'muscle — silent "m"', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which word is transcribed /kɒf/?', 'In cough, "gh" represents /f/.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'cog', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'cuff', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'cough', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'calf', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the transcription to the word:', '/haɪt/ is height (the diphthong aɪ as in "high").', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '/ɡɔːz/ — gauze', 1),
  ((SELECT MAX(id) FROM questions), 'B', '/jɔːn/ — yawn', 1),
  ((SELECT MAX(id) FROM questions), 'C', '/θʌm/ — thumb', 1),
  ((SELECT MAX(id) FROM questions), 'D', '/haɪt/ — heat', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The four words though, cough, through and enough show that:', 'Figure 1: /ðəʊ/, /kɒf/, /θruː/, /ɪˈnʌf/.', 'Lesson: Phonetics · L1 Introduction to the IPA', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L1 Introduction to the IPA'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'English spelling is a reliable guide to pronunciation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The IPA gives each sound one symbol regardless of spelling', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'One spelling pattern ("-ough") can have four different pronunciations', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"-ough" is always pronounced /ɒf/', 0);
