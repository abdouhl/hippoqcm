-- Generated from data/lessons/s1-anatomy-hip-joint.json — lesson "Hip joint": 4 exam + 16 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Hip joint', 's1/anatomy/hip-joint.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q36',
    'EMD1 2023-2024 Q37',
    'EMD1 2023-2024 Q38',
    'EMD1 2025-2026 Q16'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The hip (coxofemoral) joint:', 'The hip is a spheroid joint with three axes; it is very stable, so dislocations are rare.', 'Lesson: Hip joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the single joint connecting the lower limb to the trunk', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is frequently dislocated because of its instability', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a trochlear joint with one axis of movement', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is deep, weight-bearing, mobile and highly congruent', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is a ball-and-socket (spheroid) joint', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the acetabulum as an articular surface of the hip:', 'Only the semilunar surface is articular; the acetabulum is on the lateral surface of the hip bone.', 'Lesson: Hip joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is entirely articular', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is bordered by the acetabular limbus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its peripheral semilunar surface is articular and crescent-shaped', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is located on the medial surface of the hip bone', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its central acetabular fossa is non-articular', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The acetabular labrum:', 'The labrum is fibrocartilage, not hyaline cartilage. Also false: "Bridges the ischiopubic notch, forming the ligament of the head of the femur"; "Makes the acetabulum shallower".', 'Lesson: Hip joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a fibrocartilaginous ring attached to the perimeter of the acetabulum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Increases the depth and extent of the acetabulum', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Makes the acetabulum shallower', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is made of hyaline cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Bridges the ischiopubic notch, forming the ligament of the head of the femur', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The capsule of the hip joint inserts:', 'Iliac insertion: limbus and labrum; femoral insertion: intertrochanteric line and femoral neck.', 'Lesson: Hip joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'On the acetabular limbus and labrum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'On the intertrochanteric line and femoral neck', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'On the ischial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'On the greater trochanter''s tip', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'On the fovea capitis', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The iliofemoral ligament:', 'The posterior reinforcement from ischium to femoral neck is the ischiofemoral ligament.', 'Lesson: Hip joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Extends between the acetabulum and the intertrochanteric line', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Extends between the ischium and the femoral neck', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is anterior, triangular and strong', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reinforces the posterior part of the capsule', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Has two bundles, superior and inferior', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which ligament of the hip extends between the iliopectineal eminence and the pretrochanteric depression, reinforcing the anteroinferior capsule?', 'Pubofemoral: iliopectineal eminence → pretrochanteric depression (anteroinferior). Ischiofemoral: posterior; iliofemoral: anterior.', 'Lesson: Hip joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The transverse acetabular ligament', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The pubofemoral ligament', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The iliofemoral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The ischiofemoral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ligament of the femoral head', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The ligament of the head of the femur (round ligament):', 'It has its own synovium, independent of the joint synovium, so it is extra-synovial; it does not reinforce the capsule. Also false: "Is extra-articular"; "Arises from the acetabular fossa and ends on the greater trochanter".', 'Lesson: Hip joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ends by three bundles: anterior horn of the semilunar surface, transverse ligament, ischium', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is intra-synovial and reinforces the capsule', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is extra-articular', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Contains an artery supplying the femoral head', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Arises from the acetabular fossa and ends on the greater trochanter', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'After a posterior hip dislocation, the round ligament is torn. What complication can this cause?', 'The round ligament carries an artery to the femoral head; its rupture in dislocation risks necrosis of the head.', 'Lesson: Hip joint', NULL, 'generated', 58);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Rupture of the iliopsoas', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Necrosis of the acetabular labrum', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Paralysis of the gluteus maximus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Fracture of the iliac crest', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Necrosis of the femoral head', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the periarticular muscle group of the hip with its position:', 'Gluteus maximus belongs to the posterior group.', 'Lesson: Hip joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lateral: tensor fasciae latae, gluteus medius, gluteus minimus', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Posterior: gluteus maximus, pelvi-trochanteric muscles, hamstrings', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Anterior: gluteus maximus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Anterior: iliopsoas, rectus femoris, sartorius', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Medial: pectineus, adductor longus, adductor magnus', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the synovium of the hip:', 'The synovium of the round ligament is separate and independent from the articular synovium.', 'Lesson: Hip joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The round ligament''s synovium attaches around the fovea capitis and acetabular fossa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The round ligament''s synovium is continuous with the joint synovium', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The ligament of the femoral head has its own synovium', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It covers the articular cartilage of the femoral head', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It lines the deep surface of the capsule', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About hip flexion and extension:', 'Flexion: 120° knee bent, 90° knee extended. Extension: 10° knee bent, 20° knee extended. Also false: "Flexion reaches 90° with the knee bent"; "Extension reaches 30° with the knee extended".', 'Lesson: Hip joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flexion reaches 90° with the knee bent', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Extension reaches 30° with the knee extended', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Extension reaches 20° with the knee extended', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Flexion reaches 120° with the knee extended', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'They occur around a transverse axis through the centre of the femoral head', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'What is the range of hip extension with the knee bent?', 'Extension is 10° with the knee bent and 20° with the knee extended.', 'Lesson: Hip joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10°', 1),
  ((SELECT MAX(id) FROM questions), 'B', '20°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '30°', 0),
  ((SELECT MAX(id) FROM questions), 'D', '90°', 0),
  ((SELECT MAX(id) FROM questions), 'E', '120°', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About hip abduction and adduction:', 'Rotations occur around the vertical axis; abduction/adduction around the anteroposterior (sagittal) axis. Also false: "Usual abduction is 60°"; "Adduction reaches 60°".', 'Lesson: Hip joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Forced abduction can reach 45° to 60° (gymnastics)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They occur around an anteroposterior axis through the centre of the femoral head', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Abduction occurs around a vertical axis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Adduction reaches 60°', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Usual abduction is 60°', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About hip rotations:', 'Lateral rotation (up to 60°) exceeds medial rotation (30°–45°); both occur around the vertical axis.', 'Lesson: Hip joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Circumduction results from the succession of the four other movements', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Medial rotation has a larger range than lateral rotation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They occur around a vertical axis through the centre of the femoral head', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They occur around a transverse axis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Lateral rotation has a larger range than medial rotation', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Congenital hip dislocation:', 'Ortolani manoeuvre looks for instability; treatment = swaddling in forced abduction.', 'Lesson: Hip joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is screened with the Ortolani manoeuvre', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is treated by swaddling the baby with the hips in forced abduction', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is treated by swaddling with the hips in forced adduction', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is detected at birth', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is screened by measuring the neck–shaft angle', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which pathologies of the hip are mentioned in the course?', 'Dislocations are rare because the hip is very stable.', 'Lesson: Hip joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hip joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Coxarthrosis (osteoarthritis of the hip)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Arthritis (serious inflammation or infection)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Carpal tunnel syndrome', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Frequent traumatic dislocations because of instability', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Fractures of the femoral neck or acetabulum', 1);
