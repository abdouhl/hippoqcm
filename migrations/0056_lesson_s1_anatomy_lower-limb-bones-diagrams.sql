-- Generated from data/lessons/s1-anatomy-lower-limb-bones-diagrams.json — lesson "Lower limb bones (diagrams)": 15 exam + 15 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Lower limb bones (diagrams)', 's1/anatomy/lower-limb-bones-diagrams.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q9',
    'EMD1 2023-2024 Q10',
    'EMD1 2023-2024 Q11',
    'EMD1 2023-2024 Q12',
    'EMD1 2023-2024 Q13',
    'EMD1 2024-2025 Q10',
    'EMD1 2024-2025 Q11',
    'EMD1 2024-2025 Q12',
    'EMD1 2024-2025 Q13',
    'EMD1 2024-2025 Q15',
    'EMD1 2025-2026 Q9',
    'EMD1 2025-2026 Q10',
    'EMD1 2025-2026 Q13',
    'EMD1 2025-2026 Q14',
    'EMD1 2025-2026 Q15'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bones of the lower (pelvic) limb, anterior view. Which matches are correct?', 'c is the tibia (medial, thick) and d the fibula (lateral, thin). e points to the tarsal bones; the metatarsals are f.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g1.png', 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → femur', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → patella', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'c → fibula', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'd → fibula', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'e → metatarsals', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bones of the lower (pelvic) limb, anterior view. Which matches are correct?', 'b is the patella, lying in front of the knee above the tibia.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g1.png', 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'b → tibial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'c → tibia', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'e → tarsal bones', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'f → metatarsals', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'g → phalanges', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Constitution of the hip bone (lateral surface). Which matches are correct?', 'The ilium (k) forms the upper wing; the pubis (l) is anterior and the ischium (m) posterior-inferior. All three meet at the acetabulum.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g2.png', 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'k → ilium', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'l → ischium', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'm → pubis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'l → pubis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'm → ischium', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Hip bone, lateral surface. Which matches are correct?', 'The anterior border is on the right (b, c) and the ischial tuberosity (l) is posterior-inferior. g lies on the pubis, at the anterior-inferior corner.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g3.png', 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → iliac crest', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → anterior superior iliac spine', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'l → ischial tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'm → obturator foramen', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'g → ischial tuberosity', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bony pelvis, anterior view. Which matches are correct?', 'In anterior view we see the inner surface of the ilium: b is the iliac fossa (the gluteal surface is lateral). g is the obturator foramen.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g4.png', 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → iliac crest', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → gluteal surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'd → anterior superior iliac spine', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'g → acetabulum', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'h → pubic symphysis', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bony pelvis, anterior view. Which matches are correct?', 'd is the anterior superior iliac spine, with the anterior inferior spine (e) below it. h is the pubic symphysis, in the midline in front.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g4.png', 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'd → posterior superior iliac spine', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'e → anterior inferior iliac spine', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'g → obturator foramen', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'b → iliac fossa', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'h → sacroiliac joint', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bony pelvis, anterior view. Label c points to a ridge on the inner surface of the ilium that forms the lateral boundary of the pelvic inlet. It is:', 'The arcuate line separates the iliac fossa (greater pelvis) from the lesser pelvis and forms the lateral boundary of the pelvic inlet, with the promontory behind and the symphysis in front.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g4.png', 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The iliac crest', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The arcuate line', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The posterior gluteal line', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The ischial spine', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The pubic tubercle', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Femur, anterior and posterior views. Which matches are correct?', 'h is the greater trochanter (lateral, above) and m the lesser trochanter (posteromedial, below the neck). The intertrochanteric crest (l) is posterior; the intertrochanteric line (k) anterior.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g5.png', 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'i → head of the femur', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'j → neck of the femur', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'h → lesser trochanter', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'l → intertrochanteric crest', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'm → greater trochanter', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Femur, anterior and posterior views. Which matches are correct?', 'q is the medial epicondyle (on the head side, i.e. medial, in both views). r is the medial condyle seen from behind.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g5.png', 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'k → intertrochanteric line', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'm → lesser trochanter', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'h → greater trochanter', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'q → lateral epicondyle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'r → medial condyle', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Patella, anterior and posterior views. What does label s point to?', 'The base of the patella is its broad upper edge (s); the apex (t) points downward.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g5.png', 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Apex of the patella', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Base of the patella', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Lateral border', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Tibial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Medial condyle', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Tibia and fibula, anterior and posterior views. Which matches are correct?', 'a is the lateral condyle of the tibia (fibula side). i is the medial malleolus of the tibia; j the lateral malleolus at the lower end of the fibula.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g6.png', 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → intercondylar eminence', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'c → tibial tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'e → head of the fibula', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'i → lateral malleolus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'j → lateral malleolus', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Tibia and fibula, anterior and posterior views. Which matches are correct?', 'g points to the shaft of the tibia in both views; the fibula is the thin lateral bone marked h.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g6.png', 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → lateral condyle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → medial condyle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'f → anterior border of the tibia', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'h → shaft of the fibula', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'g → fibula', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Skeleton of the foot, dorsal view. Which matches are correct?', 'k is the navicular (medial, in front of the talus) and j the cuboid (lateral, in front of the calcaneus).', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g7.png', 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'l → talus', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'm → calcaneus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'k → cuboid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'j → navicular', 0),
  ((SELECT MAX(id) FROM questions), 'E', '3 → tarsus', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Skeleton of the foot, dorsal view. Which matches are correct?', 'The three cuneiforms run medial to lateral: g (medial), h (intermediate), i (lateral). Together with the navicular and cuboid they form the anterior tarsus.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g7.png', 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'g → medial cuneiform', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'h → intermediate cuneiform', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'i → medial cuneiform', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'k → navicular', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'j → cuboid', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Skeleton of the foot, dorsal view. Which statements are correct?', 'c is the proximal phalanx. 1 marks the phalanges, 2 the metatarsals and 3 the tarsus.', 'Lesson: Lower limb bones (diagrams)', 's1/lessons/lower-limb-bones-g7.png', 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Lower limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → distal phalanx', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → middle phalanx', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'c → middle phalanx', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The hallux has only two phalanges (no b)', 1),
  ((SELECT MAX(id) FROM questions), 'E', '3 → metatarsals', 0);
