-- Generated from data/lessons/s1-medical-english-writing-1-parts-of-speech.json — lesson "Written Expression · L1 Parts of speech": 0 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Written Expression · L1 Parts of speech', 's1/medical-english/writing-1-parts-of-speech.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'According to the lecture, which of the following belong to the eight traditional parts of speech?', 'The eight traditional classes are noun, verb, adjective, adverb, pronoun, preposition, conjunction and interjection. Determiners are presented as a ninth class that many modern grammars separate from adjectives.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Interjections', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Determiners', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Conjunctions', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Prepositions', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the noun to its type. Which pairs are correct?', 'Prognosis names a state that cannot be perceived by the senses (abstract); discharge summary is two words acting as one noun (compound). A named hospital is a proper noun; ward is a common noun.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'prognosis — abstract noun', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'discharge summary — compound noun', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Royal Melbourne Hospital — common noun', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'ward — proper noun', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About abstract nouns in medical English:', 'Pain, anxiety, compliance, deterioration, recovery and prognosis are the lecture''s abstract nouns. Heart rate is a compound noun; capital letters mark proper nouns.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They name ideas, conditions or states that cannot be perceived by the senses', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"compliance" and "deterioration" are examples', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"heart rate" is an example', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They always begin with a capital letter', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentence applies the lecture''s writing tip on nominalisation?', 'Nominalisation turns the verb (administer) into a noun phrase (the administration of medication), which formal medical writing prefers.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The administration of medication was completed.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'She administered the medication.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The nurse administers medication carefully.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Administer the medication now.', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Classify the verbs as the lecture does:', 'Prescribe and monitor are action verbs; exhibit (like present, suffer, require, indicate) is a state verb; remain (like appear, seem, become) is a linking verb.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'prescribe — action verb', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'exhibit — state verb', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'remain — linking verb', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'monitor — linking verb', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Why does the lecture recommend the passive ("The medication was administered") in medical letters and reports?', 'The passive is used to sound formal and objective, a key feature of medical letters. It actually hides the agent (the nurse), and it is not presented as shorter.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It sounds formal', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It sounds objective', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It makes the sentence shorter', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It names the person who performed the action', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In "The patient''s condition is stable", the adjective "stable":', 'Predicative adjectives follow a linking verb (is). Attributive ones precede the noun ("severe chest pain"). Stable belongs to the clinical state and progression category.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is in predicative position', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is in attributive position', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Follows a linking verb', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Describes the clinical state/progression', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which adjectives does the lecture list under severity and intensity?', 'Severity/intensity: severe, mild, moderate, acute, chronic, persistent, recurring, intermittent. Ambulatory is a patient characteristic; hepatic is anatomical/physiological.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'acute', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'intermittent', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'ambulatory', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'hepatic', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the adverb to its category:', 'Subsequently is a time adverb, markedly a degree adverb. Promptly is manner; intermittently is frequency.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'subsequently — time', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'markedly — degree', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'promptly — frequency', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'intermittently — manner', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Choose the correct word: "The patient''s pain was ______ improved after treatment."', 'An adverb is needed to modify the verb/participle "improved": significantly. "Significant improved" is the error corrected in the formative assessment.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'significantly', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'significant', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'significance', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'signify', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About pronouns in medical writing:', 'Object pronouns receive the action (me, you, him, her, it, us, them); their is possessive. Pronouns avoid repetition, and the lecture advises not to switch between pronouns.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '"him" and "them" are object pronouns', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"their" is a subject pronoun', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Once the patient''s gender is established, he or she should be used consistently', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pronouns are used to avoid repeating nouns', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which prepositional phrases are correct according to the lecture?', 'The lecture gives diagnosed with, complained of, suffering from and admitted to.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'diagnosed with hypertension', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'complained of chest pain', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'suffering with a disease', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'admitted at the hospital', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences use prepositions correctly?', 'Undergo takes no preposition; referred to a specialist; treated for a condition / with a medication. The correct form is discharged from hospital.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patient will undergo surgery next week.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'She was referred to a cardiologist.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'He was treated for pneumonia with antibiotics.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'She was discharged of hospital on Monday.', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About conjunctions:', 'FANBOYS = for, and, nor, but, or, yet, so (coordinating, so yet is coordinating). Although, unless, because, since, while, when, if, whereas are subordinating. Despite is a preposition.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'FANBOYS lists the coordinating conjunctions', 1),
  ((SELECT MAX(id) FROM questions), 'B', '"although" and "unless" are subordinating conjunctions', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"yet" is a subordinating conjunction', 0),
  ((SELECT MAX(id) FROM questions), 'D', '"despite" is a conjunction', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About interjections:', 'Interjections (Oh! Ouch! Well…) express emotion and appear occasionally in dialogue or narratives, rarely in formal writing.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They express strong emotion', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are rarely used in formal medical writing', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They may appear in doctor–patient dialogue or patient narratives', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They are recommended in discharge summaries to show empathy', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About determiners:', 'Determiners identify/quantify and precede adjectives; possessives include the patient''s. Several is a quantifier; demonstratives are this, that, these, those.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They identify or quantify a noun rather than describe its qualities', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They must appear before any adjectives in a noun phrase', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"the patient''s" can act as a possessive determiner', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"several" is a demonstrative', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'A new patient is introduced in a referral letter. According to the lecture:', 'a/an introduces something new; the refers to something already identified. Omitting the article is common in rapid clinical notes but should be avoided in formal letters, reports and referrals.', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Use "a/an" at the first mention ("a 67-year-old patient")', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Switch to "the" for every subsequent reference', 1),
  ((SELECT MAX(id) FROM questions), 'C', '"Patient was admitted…" without an article is acceptable in a formal referral', 0),
  ((SELECT MAX(id) FROM questions), 'D', '"the" marks new, non-specific information', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Which sentences are correct?', 'Compound adjectives take no plural (45-year-old); diagnosed is the needed verb form; chronic is an adjective and needs a noun (chronic illness).', 'Lesson: Written Expression · L1 Parts of speech', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Written Expression · L1 Parts of speech'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'She is a 45-year-old woman.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The patient was diagnosis with pneumonia.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The medication was administered by the nurse.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'He has a history of chronic, he takes medication regularly.', 0);
