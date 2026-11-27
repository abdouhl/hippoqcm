-- Generated from data/lessons/s1-medical-english-phonetics-2-organs-of-speech.json — lesson "Phonetics · L2 Organs of speech and articulation": 0 exam + 11 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Phonetics · L2 Organs of speech and articulation', 's1/medical-english/phonetics-2-organs-of-speech.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match each speech subsystem to its role:', 'Shaping in the throat, mouth and nose is the articulatory system''s job.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Articulatory — shapes the airstream into consonants and vowels', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Phonatory — shapes the airstream in the mouth and nose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Respiratory — supplies the power source (lungs push air out)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Phonatory — larynx and vocal folds modulate the airstream and produce voicing', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A sound is voiced when the vocal folds:', 'Apart and not vibrating = voiceless. The nasal cavity is closed by the soft palate.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are drawn together', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Vibrate as air passes between them', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Remain apart', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Close the nasal cavity', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which pairs are distinguished only by voicing, according to the lecture?', 'Voicing separates pairs that are otherwise identical, such as /p/–/b/ and /s/–/z/.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '/m/ and /n/', 0),
  ((SELECT MAX(id) FROM questions), 'B', '/s/ and /z/', 1),
  ((SELECT MAX(id) FROM questions), 'C', '/p/ and /s/', 0),
  ((SELECT MAX(id) FROM questions), 'D', '/p/ and /b/', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are passive articulators?', 'Passive: upper lip, upper teeth, alveolar ridge, hard palate, rear wall of the pharynx. The soft palate is active.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Upper teeth', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Hard palate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Soft palate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Alveolar ridge', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are active articulators?', 'Active articulators move toward a fixed surface to form a constriction or closure: lower lip, tongue, lower jaw, soft palate.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Tongue', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Lower lip', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Soft palate (velum)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Lower jaw', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About active and passive articulators:', 'The rear wall of the pharynx is passive.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Passive articulators provide a relatively fixed surface', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are located above the larynx', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The rear wall of the pharynx is an active articulator', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Active articulators move toward that surface to form a constriction or closure', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The five regions of the tongue are:', 'The blade is just behind the tip. The uvula, epiglottis and palate are not parts of the tongue.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'tip, blade, front, back, root', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'tip, blade, palate, back, root', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'tip, body, dorsum, uvula, root', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'apex, front, middle, back, epiglottis', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the tongue:', 'The tongue is the most mobile, active articulator.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Different sounds are made by raising different parts of it toward the roof of the mouth', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is involved in most English sounds', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the most flexible and important articulator', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is a passive articulator', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'When the soft palate (velum) is lowered:', 'Raised velum → nasal cavity sealed, air through the mouth only → oral sound.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A nasal sound such as /m/, /n/ or /ŋ/ is produced', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Air escapes only through the mouth', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Air can pass through the nose', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The nasal cavity is sealed off', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the articulator to its function (lecture''s Table 1):', 'The lower lip is active: it moves toward the teeth or upper lip. The upper lip/teeth are the fixed surfaces.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Alveolar ridge — target for tongue-tip closure or narrowing', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Lower lip — fixed surface for dental contact', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Soft palate — opens or closes the nasal cavity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Hard palate — surface for tongue-front raising', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which statement explains the role of the soft palate?', 'Voicing = vocal folds; power = lungs; tongue-tip target = alveolar ridge.', 'Lesson: Phonetics · L2 Organs of speech and articulation', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Phonetics · L2 Organs of speech and articulation'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is the passive target for tongue-tip closure', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It acts as a valve that distinguishes oral from nasal sounds', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It produces voicing', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is the power source of speech', 0);
