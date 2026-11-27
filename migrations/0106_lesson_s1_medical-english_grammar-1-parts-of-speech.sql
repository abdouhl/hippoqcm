-- Generated from data/lessons/s1-medical-english-grammar-1-parts-of-speech.json — lesson "Grammar · L1 Parts of speech": 0 exam + 17 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Grammar · L1 Parts of speech', 's1/medical-english/grammar-1-parts-of-speech.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About content words and function words:', 'Function words (pronouns, prepositions, conjunctions) form a closed class and must simply be memorised; content words can be predicted from context and word formation.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nouns, verbs, adjectives and adverbs are content words', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Prepositions can usually be predicted from word-formation patterns', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Content words form an open, ever-growing class', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pronouns, prepositions and conjunctions are function words forming a closed class', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which words are function words?', 'although = conjunction, in = preposition, they = pronoun. Gradually is an adverb, a content word.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'although', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'gradually', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'in', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'they', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which forms of the same root are correctly labelled?', 'The lecture''s example of a root shifting word class: diagnose (V) → diagnosis (N) → diagnostic (Adj).', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'diagnostic — adjective', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'diagnose — verb', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'diagnostic — verb', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'diagnosis — noun', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentence uses the correct word form?', 'diagnostic (adjective) modifies tests; diagnosis is the noun; diagnose is the verb. Choosing the wrong form produces an ungrammatical sentence.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The diagnose was confirmed by the tests.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The diagnostic tests confirmed the diagnosis.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The diagnosis tests were normal.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The doctor diagnosis the patient.', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which nouns are uncountable according to the lecture?', 'Countable: one symptom, two symptoms. Uncountable: blood, oxygen, pain.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'pain', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'symptom', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'blood', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'oxygen', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which noun–verb pairs are correct (noun formed from the verb)?', 'Suffixes -ment, -ion, -ing form nouns from verbs: examine → examination.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'administer → administration', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'treat → treatment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'evaluate → evaluation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'examine → examinate', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In which phrases is a noun used as an adjective?', 'The first noun modifies the second (heart → failure). In "severe pain", severe is a true adjective.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'tissue damage', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'cancer treatment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'heart failure', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'severe pain', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match each sentence to its tense as given in the lecture:', 'Tense signals past history (past), current status (present), and the present perfect links past to present.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"The patient remains stable at the time of writing." — present', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"Mr Thomas was diagnosed with Type 2 diabetes in 2019." — past', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"She has been prescribed metformin." — future', 0),
  ((SELECT MAX(id) FROM questions), 'D', '"She has been prescribed metformin 500 mg twice daily." — present perfect', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which pronouns are correctly classified?', 'she is a subject pronoun; the object form is her.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'him — object pronoun', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'their — possessive', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'these — demonstrative', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'she — object pronoun', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which adjectives does the lecture list under clinical state?', 'Clinical state: stable, deteriorating, improving, responsive, non-compliant, elevated, swollen, tender. Ambulatory is a patient descriptor.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'swollen', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'ambulatory', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'tender', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'elevated', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About adverbs in clinical narration:', 'Adverbs modify verbs, adjectives or other adverbs. The manner and speed of onset can matter diagnostically.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"gradually" versus "suddenly" can carry diagnostic significance', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They answer how, when or to what degree', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They can modify only verbs', 0),
  ((SELECT MAX(id) FROM questions), 'D', '"markedly" is a degree adverb', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which verb + preposition collocations are correct?', 'present with symptoms · suffer from · respond to · refer to · complain of.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'complain of pain', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'respond to treatment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'suffer from a condition', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'present at symptoms', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which phrase is idiomatically correct according to the lecture?', 'English says "a pain in the chest", not "at the chest". The lecture also gives "for three days" and "on his forearm".', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a fever since three days', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'a pain in the chest', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'a pain at the chest', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'a rash in his forearm', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the conjunction to its type:', 'Coordinating: and, but, or, so, for, nor, yet. Subordinating: because, although, since, while, when, if, unless. Correlative: both…and, either…or, neither…nor, not only…but also.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 9, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'yet — coordinating', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'neither…nor — correlative', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'although — coordinating', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'unless — subordinating', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Subordinating conjunctions:', 'Pairs working together are correlative conjunctions.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Connect unequal elements', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Connect a dependent clause to an independent clause', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Include "because" and "while"', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Always work in pairs', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In "The experienced surgeon carefully examined the patient before surgery":', 'examined is the verb. This is the formative assessment''s sentence-analysis item.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'before is a preposition', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'experienced is an adjective', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'examined is a noun', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'carefully is an adverb', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why does the lecture study only seven of the eight parts of speech?', 'The eight are nouns, pronouns, verbs, adjectives, adverbs, prepositions, conjunctions and interjections; the lecture focuses on the first seven.', 'Lesson: Grammar · L1 Parts of speech', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Grammar · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Pronouns are not a part of speech', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Determiners are studied instead', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Conjunctions are covered in a later lecture', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Interjections are rare in formal medical writing', 1);
