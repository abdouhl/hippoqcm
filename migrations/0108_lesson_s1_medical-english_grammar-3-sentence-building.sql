-- Generated from data/lessons/s1-medical-english-grammar-3-sentence-building.json — lesson "Grammar · L3 Sentence building": 0 exam + 16 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Grammar · L3 Sentence building', 's1/medical-english/grammar-3-sentence-building.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why is English word order (SVO) so rigid, according to the lecture?', 'In Russian, Finnish or Hungarian, inflections show relationships, so order is freer; English relies on position.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nouns basically have only two forms (singular and plural)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Word position must do the work of conveying meaning', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'English has very little inflection', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Word endings indicate grammatical relationships, as in Russian', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In "Captopril controls hypertension":', 'Find the verb, ask "who/what + verb?" for the subject, then "subject + verb + what?" for the object.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"Captopril" answers "Who or what controls?" and is the subject', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"hypertension" is the subject because it is a disease', 0),
  ((SELECT MAX(id) FROM questions), 'C', '"hypertension" is the object', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"controls" is the verb', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"The surgeon examined the patient" vs "The patient examined the surgeon" shows that:', 'Meaning in English is determined primarily by word order.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In clinical documentation this precision can affect patient safety', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Word order determines meaning in English', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The same words can convey completely different meanings', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Word order does not matter if the vocabulary is correct', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which questions are correctly formed?', 'After does, use the base form (have). In wh- questions the auxiliary comes after the wh-word and before the subject.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Does the patient have diabetes?', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'When the symptoms did start?', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Does the patient has diabetes?', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'When did the symptoms start?', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The structure of a wh- question is:', 'e.g. "How long has she been in pain?". Yes/no questions are Aux + S + V.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Wh-word + Auxiliary + Subject + Main verb', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Wh-word + Subject + Auxiliary + Main verb', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Auxiliary + Wh-word + Subject + Main verb', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Subject + Wh-word + Main verb', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In a medical consultation, according to the lecture:', '"When did the pain begin?" is a wh- question.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Yes/no questions are useful for confirming information', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"When did the pain begin?" is a yes/no question', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Wh- questions are essential for open-ended history-taking', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"Do you have a history of hypertension?" is a yes/no question', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which negative sentences are correct?', 'Negative structure: Subject + Auxiliary + not + Main verb.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient does not have a fever.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The infection cannot be ruled out.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient not has a fever.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'She has not experienced any side effects.', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About negative findings in clinical documentation:', 'Negation is crucial for ruling out diagnoses and documenting negative findings.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They help establish differential diagnoses', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They should be left out of notes to save space', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They are as clinically significant as positive findings', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"No evidence of fracture was found on X-ray" is an example', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Identify the sentence types:', '"Treatment began immediately" is a declarative sentence with an intransitive verb.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"Treatment began immediately." — interrogative', 0),
  ((SELECT MAX(id) FROM questions), 'B', '"Has she experienced any side effects?" — interrogative', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"The infection cannot be ruled out." — negative', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"The diagnosis was confirmed by the blood test." — declarative', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the sentence to its pattern:', '"The liver is an essential organ" has a noun complement: Pattern 6.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"Blood flows." — Pattern 1 (S + intransitive V)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"Gallbladder stores bile." — Pattern 3 (S + transitive V + DO)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"The patient remains stable." — Pattern 7 (S + linking V + Adj)', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"The liver is an essential organ." — Pattern 7 (S + linking V + Adj)', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), '"The hospital named Dr. Funes the best surgeon." This sentence:', 'Pattern 5: S + V + N (DO) + N (OC) — Dr. Funes and "the best surgeon" are the same person. "Named" is not a linking verb.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is Pattern 5', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Uses a linking verb', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Has a direct object followed by an object complement', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Has two nouns that refer to the same person', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences contain a linking verb followed by a subject complement?', 'became/are/is are linking verbs (patterns 6 and 7). "performed the operation" is transitive + direct object (pattern 3).', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The surgeon performed the operation.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient became a diabetic.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The test results are inconclusive.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The diagnosis is pneumonia.', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which pattern does "The heart lies in the thoracic cavity" follow?', 'Pattern 2 adds information about how, when or where; "lies" takes no object.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'S + linking V + noun (Pattern 6)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'S + intransitive V + adverbial (Pattern 2)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'S + V + DO + IO (Pattern 4)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'S + transitive V + DO (Pattern 3)', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are recommendations or corrections given in the lecture?', 'Overuse of the passive and separating subject and verb are listed as common errors.', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Keep the subject and verb close together', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Place long phrases between the subject and the verb for emphasis', 0),
  ((SELECT MAX(id) FROM questions), 'C', '"After waiting for three hours, the patient was finally seen" is preferred', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Prefer the active voice for clarity: "The doctor examined the patient."', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Rearrange "with / presents / pain / the / chest / patient". The correct sentence is:', 'Subject (the patient) + verb (presents) + prepositional phrase (with chest pain).', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Presents the patient with chest pain.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient presents with chest pain.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The chest presents with patient pain.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The patient with chest pain presents.', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which are the three core sentence types this lecture presents for clinical communication?', 'Declarative (stating facts), interrogative (history-taking questions), negative (excluding symptoms or findings).', 'Lesson: Grammar · L3 Sentence building', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L3 Sentence building'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Interrogative', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Negative', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Exclamatory', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Declarative', 1);
