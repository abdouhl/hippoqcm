-- Generated from data/lessons/s1-anatomy-foot-joints-and-talocrural-joint.json — lesson "Foot joints and talocrural joint": 4 exam + 13 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Foot joints and talocrural joint', 's1/anatomy/foot-joints-and-talocrural-joint.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q29',
    'EMD1 2024-2025 Q18',
    'EMD1 2025-2026 Q32',
    'EMD1 2025-2026 Q34'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The talocrural (ankle) joint:', 'The talocrural joint is a ginglymus uniting tibia and fibula to the talus. The talus–calcaneus joint is the subtalar joint.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Connects the two bones of the leg to the talus', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a ball-and-socket joint', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Connects the talus to the calcaneus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a diarthrosis of the ginglymus (hinge) type', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is a recessed (mortise) joint ensuring the stability of the foot during walking and running', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are tarsal joints?', 'Tarsometatarsal joints belong to the forefoot; the talocrural joint is its own class.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The tarsometatarsal joints', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The talocrural joint', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The transverse joint of the foot', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The joints of the distal tarsal bones with each other', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The subtalar joint', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The tibiofibular articular surfaces of the ankle are formed by:', 'These three surfaces form the mortise receiving the trochlea of the talus.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The articular facet of the lateral malleolus', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The inferior articular surface of the tibia', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The head of the fibula', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The articular facet of the medial malleolus', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The tibial plateau', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The trochlea of the talus:', 'Medial malleolar surface = comma-shaped; lateral malleolar surface = triangular. Also false: "Its medial malleolar surface is triangular"; "Its upper surface articulates with the fibula".', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a large articular projection', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its lateral malleolar surface is comma-shaped', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its medial malleolar surface is triangular', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its upper surface articulates with the fibula', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its upper surface articulates with the inferior surface of the tibia', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'How are the articular surfaces of the talocrural joint organized?', 'Tibia (inferior surface, medial malleolus) and fibula (lateral malleolus) form the mortise for the talar trochlea.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The talar trochlea forms a mortise receiving the malleoli', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The tibiofibular surfaces form a mortise into which the talar trochlea fits', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The calcaneus forms the floor of the mortise', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The navicular closes the mortise in front', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The fibula alone forms the superior wall', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The medial (deltoid) ligament of the ankle:', 'The lateral ligament is "the ankle sprain ligament". Also false: "Has a superficial layer with anterior and posterior tibiotalar bundles"; "Has a deep layer with tibionavicular and tibiocalcaneal bundles".', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is strong and triangular', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Has a deep layer with tibionavicular and tibiocalcaneal bundles', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Has its apex attached to the medial malleolus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is the ligament typically injured in ankle sprains', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Has a superficial layer with anterior and posterior tibiotalar bundles', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The lateral ligament of the ankle:', 'The strong, triangular ligament is the medial (deltoid) ligament. Also false: "Ends in two bundles"; "Includes the tibionavicular bundle".', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Extends from the lateral malleolus', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Includes the tibionavicular bundle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is called "the ankle sprain ligament"', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is the strongest ligament of the ankle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Ends in two bundles', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A basketball player twists their foot inward and has pain below the lateral malleolus. Which ligament is most likely injured?', 'The lateral ligament (anterior talofibular, calcaneofibular, posterior talofibular) is the ligament of common ankle sprains.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The tibionavicular bundle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The deltoid ligament', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The anterior cruciate ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The lateral ligament of the ankle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The tibial collateral ligament', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which bundles belong to the deep layer of the deltoid ligament?', 'Deep layer: anterior and posterior tibiotalar. Superficial: tibionavicular and tibiocalcaneal. Calcaneofibular belongs to the lateral ligament.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The posterior tibiotalar bundle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The calcaneofibular bundle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The tibionavicular bundle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The anterior tibiotalar bundle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The tibiocalcaneal bundle', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The synovium of the talocrural joint:', 'It lines the capsule and sends a recess between tibia and fibula. The quadriceps recess belongs to the knee.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Forms a cul-de-sac extension between the tibia and the fibula', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Covers the articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is continuous with the knee synovium', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Forms the quadriceps recess', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Lines the inner surface of the capsule', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the movements of the talocrural joint:', 'Flexion-extension occur around a transverse axis. Also false: "It has three degrees of freedom"; "Flexion has an amplitude of 30° to 60°".', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Extension (plantar flexion) has an amplitude of 30° to 60°', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Movements occur around a vertical axis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Flexion has an amplitude of 30° to 60°', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Flexion (dorsiflexion) brings the dorsum of the foot toward the front of the leg', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It has three degrees of freedom', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'What is the amplitude of extension (plantar flexion) of the ankle?', 'Extension 30°–60°; flexion (dorsiflexion) 20°–30°.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10° to 20°', 0),
  ((SELECT MAX(id) FROM questions), 'B', '20° to 30°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '30° to 60°', 1),
  ((SELECT MAX(id) FROM questions), 'D', '60° to 90°', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0°', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Dorsiflexion of the foot is also called:', 'Flexion = dorsiflexion = elevation; extension = plantar flexion = lowering.', 'Lesson: Foot joints and talocrural joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Foot joints and talocrural joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Extension', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Flexion', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Lowering', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Plantar flexion', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Elevation', 1);
