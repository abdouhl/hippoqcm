-- Generated from data/lessons/s1-anatomy-osteology-of-the-pelvic-limb.json — lesson "Osteology of the pelvic limb": 18 exam + 22 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Osteology of the pelvic limb', 's1/anatomy/osteology-of-the-pelvic-limb.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb') FROM questions
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
    'EMD1 2024-2025 Q14',
    'EMD1 2024-2025 Q15',
    'EMD1 2025-2026 Q9',
    'EMD1 2025-2026 Q10',
    'EMD1 2025-2026 Q11',
    'EMD1 2025-2026 Q12',
    'EMD1 2025-2026 Q13',
    'EMD1 2025-2026 Q14',
    'EMD1 2025-2026 Q15'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the skeletal axes of the pelvic limb:', 'Femoral diaphysis 9°, mechanical thigh axis 3°, leg axis 3°; femur–leg angle 175° = physiological genu valgum. Also false: "The anatomical axis of the leg makes an angle of 9° with the vertical"; "The angle between the femoral and leg axes is normally about 165°".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The mechanical axis of the thigh makes an angle of 9° with the vertical', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The anatomical axis of the leg makes an angle of 9° with the vertical', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The angle between the femoral and leg axes is normally about 165°', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The mechanical axis of the thigh runs from the centre of the femoral head to the centre of the knee', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The anatomical axis of the femoral diaphysis makes an angle of 9° with the vertical', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A child stands with the knees touching and the ankles apart (legs in X). The angle between the femoral and leg axes is:', 'Legs in X = pathological genu valgum (more closed angle); legs in O = genu varum (more open angle).', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'More open than 175°: pathological genu varum', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'More open than 175°: pathological genu valgum', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'More closed than 175°: pathological genu valgum', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Exactly 175°: physiological', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'More closed than 175°: pathological genu varum', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the hip bone (os coxae):', 'Orientation: articular cavity outward, foramen downward, notched border backward.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It connects the spine and the pelvic limb', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is oriented with the notched border backward and the foramen downward', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a flat bone shaped like a two-bladed propeller', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is a long bone', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It is formed by the ilium, ischium and pubis meeting in the acetabulum in a "Y"', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The acetabulum:', 'Only the crescent-shaped peripheral semilunar surface is articular; the central acetabular fossa is not. Also false: "Its limbus has three notches, the superior one being wide and deep"; "Its central acetabular fossa is covered with hyaline cartilage".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its limbus has three notches, the superior one being wide and deep', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its peripheral part is the semilunar surface covered with hyaline cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a deep spheroid excavation limited by the acetabular limbus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its central acetabular fossa is covered with hyaline cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is entirely covered with articular cartilage', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The obturator foramen:', 'Above: cranial branch of the pubis with the obturator groove; below: ischiopubic ramus; in front: body of the pubis; behind: ischial tuberosity. Also false: "Is triangular and wide in men"; "Is oval and narrow in women".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lies below the acetabulum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is limited above by the ischiopubic ramus', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is triangular and wide in men', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is closed by two obturator membranes', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is oval and narrow in women', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following belong to the lateral surface of the hip bone?', 'Iliac fossa and auricular surface (articular with the sacrum) belong to the medial surface.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The acetabulum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The auricular surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The acetabular limbus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The gluteal surface with its gluteal lines', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The iliac fossa', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The medial surface of the hip bone:', 'The gluteal lines are on the gluteal surface (lateral face). Also false: "Presents, above the arcuate line, the gluteal surface"; "Presents the acetabulum".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Presents the acetabulum', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Presents the anterior and posterior gluteal lines', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is crossed by the arcuate line', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Presents the pecten pubis along the upper border of the obturator foramen', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Presents, above the arcuate line, the gluteal surface', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The iliac crest:', 'The inferior border''s anterior segment articulates with the opposite hip bone (pubic symphysis).', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the superior border of the hip bone', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the posterior border of the hip bone', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is palpable under the skin', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a preferred site for bone punctures and bone graft harvesting', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Articulates with the opposite hip bone', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which structures belong to the posterior border of the hip bone?', 'Posterior border: PSIS, small innominate notch, PIIS, greater sciatic notch, ischial spine, lesser sciatic notch, ischial tuberosity. AIIS and iliopectineal eminence are on the anterior border.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The greater sciatic notch', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The anterior inferior iliac spine', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The ischial spine', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The iliopectineal eminence', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The lesser sciatic notch', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the angle of the hip bone with its landmark:', 'The ischial spine is on the posterior border, not an angle.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Anteroinferior angle: ischial spine', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Posterosuperior angle: posterior superior iliac spine', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Anterosuperior angle: anterior superior iliac spine', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Anteroinferior angle: pubic spine', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Posteroinferior angle: ischial tuberosity', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the bony pelvis:', 'In front, the superior strait is limited by the (upper border of the) pubic symphysis; laterally by the arcuate lines. Also false: "The superior strait divides it into anterior and posterior pelvis"; "The greater pelvis is also called the obstetrical pelvis".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The superior strait is limited behind by the sacral promontory', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The superior strait is limited in front by the ischial tuberosities', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The superior strait divides it into anterior and posterior pelvis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The greater pelvis is also called the obstetrical pelvis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It is formed by the two hip bones, the sacrum and the coccyx', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the femoral diaphysis:', 'The linea aspera is the prominent rough posterior border. Also false: "The linea aspera bifurcates above"; "The linea aspera trifurcates below, delimiting the popliteal surface".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its anterior border is the linea aspera', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The linea aspera trifurcates below, delimiting the popliteal surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its posterior border is the linea aspera', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The linea aspera bifurcates above', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its three surfaces give insertion to the quadriceps', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The femoral head:', 'The femoral head is 2/3 of a sphere (the humeral head is 1/3) and articulates with the acetabulum.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gives attachment at the fovea to the ligament of the head of the femur', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Articulates with the glenoid cavity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Represents 1/3 of a sphere', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is covered with cartilage except at the fovea capitis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Represents 2/3 of a sphere', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The femoral neck–shaft angle of a patient measures 115°. This is:', 'Normal inclination is 125°–130°; a more closed angle is coxa vara, a more open one coxa valga.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Normal', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Coxa vara', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Genu valgum', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Coxa valga', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Genu varum', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the trochanters of the femur:', 'Anteriorly: intertrochanteric line; posteriorly: intertrochanteric crest.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are connected posteriorly by the intertrochanteric line', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They are connected anteriorly by the intertrochanteric crest', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The trochanteric fossa is on the medial face of the greater trochanter', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The lesser trochanter is a medial conical projection', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The greater trochanter is a lateral quadrangular projection', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the distal epiphysis of the femur:', 'The condyles are separated posteriorly by the intercondylar fossa; the trochlea (patellar surface) is anterior. Also false: "The intercondylar fossa gives attachment to the collateral ligaments"; "The epicondyles give attachment to the cruciate ligaments".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The femoral trochlea articulates with the posterior surface of the patella', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The intercondylar fossa is anterior', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The epicondyles give attachment to the cruciate ligaments', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The intercondylar fossa gives attachment to the collateral ligaments', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The femoral condyles articulate with the tibial plateau and the patella', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The patella:', 'The posterior surface is articular with the femoral trochlea; the anterior surface is convex. Also false: "Its base receives the patellar ligament"; "Its apex receives the quadriceps tendon".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its anterior surface articulates with the femoral trochlea', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its base receives the patellar ligament', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its apex receives the quadriceps tendon', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lies in the tendon of the quadriceps femoris', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is a sesamoid bone, flat and triangular', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the tibial diaphysis:', 'The lateral border of the tibia is the interosseous border. Also false: "Its medial surface gives insertion to the tibialis anterior"; "Its anterior surface is crossed by the soleal line".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its medial border is the interosseous border', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its anterior surface is crossed by the soleal line', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its anterior border is the subcutaneous tibial crest', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its medial surface gives insertion to the tibialis anterior', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its lateral surface gives insertion to the tibialis anterior', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which structure of the tibia gives insertion to the patellar ligament?', 'The anterior tibial tuberosity on the anterior face of the proximal epiphysis receives the patellar ligament.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The medial tibial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The fibular notch', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The intercondylar tubercles', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The anterior tibial tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The medial malleolus', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the distal tibia and the fibula:', 'The fibula articulates with the tibia above and the tibia and talus below; it does not reach the femur. Also false: "The fibular notch is on the medial face of the distal tibia"; "The medial malleolus is longer than the lateral malleolus and descends lower".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 8);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The tibial plafond is formed by the inferior tibial articular surface and the medial malleolar surface', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The fibular notch is on the medial face of the distal tibia', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The head of the fibula articulates with the tibia', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The medial malleolus is longer than the lateral malleolus and descends lower', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The fibula articulates with the femur', 0);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the bones of the foot:', 'The two tarsal rows are joined by the Chopart midtarsal joint; Lisfranc is the tarsometatarsal joint. Also false: "The foot has 28 bones"; "The anterior tarsus contains the talus and the calcaneus".', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 8);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The anterior tarsus contains the talus and the calcaneus', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The posterior tarsus is formed by the talus and the calcaneus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The two tarsal rows are joined by the Lisfranc joint', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The metatarsus is joined to the tarsus by the Lisfranc joint', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The foot has 28 bones', 0);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the toes and sesamoid bones of the foot:', 'Sesamoid bones of the foot are always on the plantar surface.', 'Lesson: Osteology of the pelvic limb', NULL, 'generated', 8);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Osteology of the pelvic limb'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'There are 14 phalanges', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Two sesamoid bones are constant, opposite the head of the 1st metatarsal', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Sesamoid bones of the foot are on its dorsal surface', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The hallux has two phalanges', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Metatarsals are numbered I to V from medial to lateral', 1);
