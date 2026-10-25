-- Generated from data/lessons/s1-anatomy-knee-joint.json — lesson "Knee joint": 6 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Knee joint', 's1/anatomy/knee-joint.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q15',
    'EMD1 2023-2024 Q16',
    'EMD1 2023-2024 Q17',
    'EMD1 2025-2026 Q17',
    'EMD1 2025-2026 Q18',
    'EMD1 2025-2026 Q19'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the knee joint:', 'The knee = patellofemoral (ginglymus) + bicondylar femorotibial joint in one capsule. The tibiofibular joint is not part of it. Also false: "The patellofemoral joint is bicondylar"; "The femorotibial joint is a ginglymus".', 'Lesson: Knee joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It combines the patellofemoral and the femorotibial joints in the same capsule', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The femorotibial joint is a ginglymus', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a large, superficial, weight-bearing joint', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The patellofemoral joint is bicondylar', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It includes the proximal tibiofibular joint in its capsule', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The patellar surface of the femur:', 'Its lateral slope is the more extensive one; the tibial plateau faces the condyles and menisci.', 'Lesson: Knee joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has a medial slope more extensive than the lateral slope', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has a lateral slope more extensive than the medial slope', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Articulates with the tibial plateau', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is on the anterior face of the distal femoral epiphysis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Articulates with the posterior face of the patella', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The posterior surface of the patella:', 'Only its upper 2/3 is articular; the patellar ligament attaches to the apex.', 'Lesson: Knee joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is entirely articular', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is articular in its upper 2/3', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Corresponds to the patellar surface of the femur', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Receives the patellar ligament', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Articulates with the tibial plateau', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The menisci of the knee:', 'Medial = C-shaped, lateral = O-shaped. Also false: "Decrease the concavity of the tibial glenoids"; "Are made of hyaline cartilage".', 'Lesson: Knee joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are interposed between the femoral condyles and the superior tibial articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are made of hyaline cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Are intra-articular, semilunar fibrocartilages', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The medial meniscus is "O"-shaped', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Decrease the concavity of the tibial glenoids', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The capsule of the knee:', 'The patellar window is anterior; posteriorly the capsule forms the condylar shells. Also false: "Adheres laterally to the cruciate ligaments"; "Thickens anteriorly to form the condylar shells".', 'Lesson: Knee joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Thickens anteriorly to form the condylar shells', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has an anterior window for the patella', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Adheres laterally to the cruciate ligaments', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is cylindrical and inserts close to the articular cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Has a posterior window for the patella', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The fabella is:', 'The lateral condylar shell contains an inconstant sesamoid bone, the fabella.', 'Lesson: Knee joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'An inconstant sesamoid bone in the lateral condylar shell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A meniscus', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Another name for the patella', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A tibial spine', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A constant bone in the medial condylar shell', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the collateral ligaments of the knee:', 'The drawer sign is due to cruciate ligament injury (central pivot). Also false: "The tibial collateral ligament is epiphyseal–epiphyseal"; "The fibular collateral ligament is epiphyseal–diaphyseal".', 'Lesson: Knee joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Their injury gives abnormal medial or lateral gapping (laxity)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The tibial collateral ligament is epiphyseal–epiphyseal', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The fibular collateral ligament is epiphyseal–diaphyseal', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They ensure the lateral (collateral) stability of the knee', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Their injury gives a drawer sign', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A footballer''s knee shows an abnormal forward sliding of the tibia under the femur on examination (anterior drawer). Which structure is injured?', 'The central pivot (cruciate ligaments) ensures anteroposterior stability; ACL rupture gives anterior drawer/laxity, PCL rupture posterior drawer.', 'Lesson: Knee joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The tibial collateral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The patellar ligament', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The arcuate ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The fibular collateral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The anterior cruciate ligament', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The anterolateral cruciate ligament:', 'The posteromedial cruciate arises from the posterior intercondylar area and ends on the lateral surface of the medial condyle.', 'Lesson: Knee joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ends on the medial surface of the lateral condyle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Runs posteriorly and laterally', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Arises from the posterior intercondylar area', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ends on the lateral surface of the medial condyle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Arises from the anterior intercondylar area', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The sagittal ligament system of the knee includes:', 'Sagittal system = patellar ligament (front) and arcuate ligament (back). Cruciates = central pivot; collaterals = collateral system.', 'Lesson: Knee joint', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Anteriorly, the patellar ligament from the patellar apex to the anterior tibial tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The menisco-patellar ligaments only', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The tibial collateral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Posteriorly, the arcuate ligament fanning from the fibular head', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The cruciate ligaments', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the patellar retinacula and menisco-patellar ligaments:', 'The medial patellar wing is the wider and stronger one.', 'Lesson: Knee joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The lateral retinaculum is the stronger one', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Menisco-patellar ligaments connect the patella to the menisci', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The patellar retinacula connect the patella to each epicondyle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The medial retinaculum is wider and stronger than the lateral one', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The retinacula connect the patella to the tibial spines', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The extensor system of the knee is composed of:', 'Popliteus is a posterior active stabilizer, not part of the extensor system.', 'Lesson: Knee joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The quadriceps tendon', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The popliteus muscle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The patellar tendon (ligament)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The quadriceps muscle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The patella', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The muscles of the "pes anserinus" (goose foot), medial active stabilizers of the knee, are:', 'Pes anserinus = sartorius, gracilis, semitendinosus. Semimembranosus and biceps femoris are posterior stabilizers.', 'Lesson: Knee joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sartorius', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Semitendinosus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Gracilis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Biceps femoris', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Semimembranosus', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The synovium of the knee forms anteriorly a large recess called:', 'In front, the synovium forms the large quadriceps cul-de-sac.', 'Lesson: Knee joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The acetabular recess', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The quadriceps recess (cul-de-sac)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The popliteal recess', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The annular recess', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The olecranon recess', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About knee flexion and extension:', 'Extension is locked: it only exists from a flexed position back to the reference position. Also false: "Active flexion reaches 120° with the hip flexed"; "Passive flexion (squatting) reaches 140°".', 'Lesson: Knee joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In the reference position, the leg axis continues the thigh axis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Active extension reaches 30° beyond the reference position', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Passive flexion (squatting) reaches 140°', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Active flexion reaches 120° with the hip flexed', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Active flexion reaches 120° with the hip extended', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'What is the range of active knee flexion with the hip flexed?', 'Active flexion: 140° hip flexed, 120° hip extended; passive flexion (squatting): 160°.', 'Lesson: Knee joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '120°', 0),
  ((SELECT MAX(id) FROM questions), 'B', '130°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '140°', 1),
  ((SELECT MAX(id) FROM questions), 'D', '150°', 0),
  ((SELECT MAX(id) FROM questions), 'E', '160°', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About knee rotations:', 'Rotations are measured knee flexed at 90°; lateral (40°) exceeds medial (30°).', 'Lesson: Knee joint', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Medial rotation has a larger range than lateral rotation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Lateral rotation brings the toes outward by 40°', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The reference position is knee flexed at 90° with the toes pointing forward', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Medial rotation brings the toes inward by 30°', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Rotations are measured with the knee fully extended', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the pathology of the knee:', 'Meniscal lesions are the most frequent; gonarthrosis is degenerative.', 'Lesson: Knee joint', NULL, 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Knee joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gonarthrosis is an infectious disease', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'MRI with or without arthrography can analyse menisci and ligaments', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The most frequent traumatic lesion in athletes is the meniscal lesion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Knee dislocations are the most frequent traumatic lesion', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Gonarthrosis (osteoarthritis) is frequent in older people', 1);
