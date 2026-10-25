-- Generated from data/lessons/s1-anatomy-shoulder-joint.json — lesson "Shoulder joint": 6 exam + 16 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Shoulder joint', 's1/anatomy/shoulder-joint.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q25',
    'EMD1 2023-2024 Q26',
    'EMD1 2023-2024 Q27',
    'EMD1 2024-2025 Q19',
    'EMD1 2025-2026 Q39',
    'EMD1 2025-2026 Q40'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The shoulder joint complex consists of:', '5 synergistic joints: 3 true joints (scapulohumeral, sternocostoclavicular, acromioclavicular) and 2 sliding spaces (subdeltoid bursa, scapulothoracic).', 'Lesson: Shoulder joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Two true joints and three sliding spaces', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Three true joints: scapulohumeral, sternocostoclavicular, acromioclavicular', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Two sliding spaces: the subacromiodeltoid serous bursa and the scapulothoracic joint', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Five true joints', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Only the scapulohumeral joint', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The sternocostoclavicular joint:', 'It is a saddle joint with a disc; the arthrodia of the shoulder complex is the acromioclavicular joint. Also false: "Has no articular disc"; "Allows wide rotational movements".', 'Lesson: Shoulder joint', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a saddle synovial joint', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Has no articular disc', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Unites the medial end of the clavicle with the manubrium and the first costal cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a plane joint (arthrodia)', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Allows wide rotational movements', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The acromioclavicular joint:', 'Saddle joint with a disc = sternocostoclavicular joint. Also false: "Is held by the coracohumeral ligament"; "Allows wide circumduction movements".', 'Lesson: Shoulder joint', NULL, 'generated', 9);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a saddle joint with a disc', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Allows wide circumduction movements', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is held by the coracohumeral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a plane joint (arthrodia)', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Unites the lateral end of the clavicle with the acromion', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scapulothoracic joint:', 'It is a false joint: a gliding space between the thoracic wall and the scapula.', 'Lesson: Shoulder joint', NULL, 'generated', 9);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a false joint', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a true synovial joint', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a sliding space between the rib cage and the anterior surface of the scapula', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is formed between the acromion and the humeral head', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is a saddle joint', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scapulohumeral joint:', 'The scapulohumeral joint is very mobile but fragile (unstable).', 'Lesson: Shoulder joint', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is very stable', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is extremely fragile', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is the proximal joint of the thoracic limb', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is very mobile', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is a spheroid synovial joint (enarthrosis)', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the articular surfaces of the scapulohumeral joint:', 'The humeral head is 1/3 of a sphere (the femoral head is 2/3). The glenoid is oval and shallow, deepened by the labrum.', 'Lesson: Shoulder joint', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The humeral head represents 1/3 of a sphere', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The humeral head represents 2/3 of a sphere', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The glenoid cavity has the glenoid notch on its anterior border', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The glenoid cavity is spherical and deep', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The glenoid cavity is oval and surrounded by the glenoid labrum', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The glenoid labrum:', 'The peripheral face extends the surface of the scapular neck; it is the external face that is articular and part of the glenoid surface. Also false: "Is round in section, with two faces"; "Its internal face is free and articular".', 'Lesson: Shoulder joint', NULL, 'generated', 54);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its internal face is free and articular', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a fibrocartilaginous ring on the rim of the glenoid cavity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its peripheral face is covered with articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Increases the depth of the glenoid cavity', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is round in section, with two faces', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The capsule of the scapulohumeral joint:', 'The capsule is thin, which is part of the joint''s fragility.', 'Lesson: Shoulder joint', NULL, 'generated', 11);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a thin fibrous sleeve', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Inserts on the coracoid process', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Inserts on the anatomical and surgical necks of the humerus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Inserts on the peripheral face of the glenoid labrum', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is thick and very strong', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The coracohumeral ligament:', 'Coracohumeral ligament: lateral border of the coracoid → greater tubercle (trochiter) and lesser tubercle (trochin).', 'Lesson: Shoulder joint', NULL, 'generated', 12);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ends by two bundles on the greater and lesser tubercles', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ends by a single bundle on the surgical neck', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Arises from the acromion', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is the strongest ligament of the scapulohumeral joint', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Arises from the lateral border of the coracoid process', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the glenohumeral ligaments:', 'Foramen of Rouvière is between the middle and inferior glenohumeral ligaments; both foramina are zones of capsular weakness. Also false: "The superior one ends below the surgical neck"; "The inferior one ends on the upper part of the lesser tubercle".', 'Lesson: Shoulder joint', NULL, 'generated', 12);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The superior one ends below the surgical neck', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The middle one ends on the lower part of the lesser tubercle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The inferior one ends on the upper part of the lesser tubercle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The foramen of Weitbrecht lies between the superior and middle ligaments', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The foramen of Rouvière lies between the superior and middle ligaments', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The weak zone of the shoulder capsule located between the middle and inferior glenohumeral ligaments is:', 'Weitbrecht: between superior and middle; Rouvière: between middle and inferior.', 'Lesson: Shoulder joint', NULL, 'generated', 13);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The foramen ovale of Weitbrecht', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The foramen of Rouvière', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The glenoid notch', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The scapular notch', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The bicipital groove', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the periarticular muscle (active ligament) of the scapulohumeral joint with its position:', 'Supraspinatus above, infraspinatus/teres minor/teres major behind, subscapularis in front; plus long head of biceps, deltoid, triceps.', 'Lesson: Shoulder joint', NULL, 'generated', 14);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Subscapularis: above', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Subscapularis: in front', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Supraspinatus: above', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Infraspinatus, teres minor and teres major: behind', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Supraspinatus: behind', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which are periarticular serous bursae of the shoulder?', 'All five are listed: subscapular, bicipital, subdeltoid, subcoracoid and infraspinatus bursae; they facilitate gliding.', 'Lesson: Shoulder joint', NULL, 'generated', 15);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The subdeltoid bursa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The subcoracoid bursa', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The subscapular bursa', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The bicipital bursa', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The infraspinatus bursa', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About movements of the scapulohumeral joint:', 'Pure adduction is not possible; combined with ante- or retropulsion it reaches 40°. Also false: "Abduction reaches 180° without the scapulothoracic joint"; "Extension (retropulsion) reaches 90°".', 'Lesson: Shoulder joint', NULL, 'generated', 16);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It has 3 degrees of freedom', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Pure adduction is possible on its own', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Flexion (antepulsion) occurs in the sagittal plane around a transverse axis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Abduction reaches 180° without the scapulothoracic joint', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Extension (retropulsion) reaches 90°', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'With participation of the scapulothoracic joint, shoulder abduction can reach:', 'Abduction is 90° at the scapulohumeral joint alone and up to 180° with the scapulothoracic joint (same for flexion).', 'Lesson: Shoulder joint', NULL, 'generated', 74);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '40°', 0),
  ((SELECT MAX(id) FROM questions), 'B', '120°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '30°', 0),
  ((SELECT MAX(id) FROM questions), 'D', '180°', 1),
  ((SELECT MAX(id) FROM questions), 'E', '90°', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About shoulder rotations (forearm flexed at 90°):', 'Lateral rotation 30°, medial rotation 80° (90° with scapular tilt), in the transverse plane.', 'Lesson: Shoulder joint', NULL, 'generated', 16);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Shoulder joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Rotations occur in the frontal plane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They occur in the transverse plane around a vertical axis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Medial rotation is limited to 80°, completed to 90° by an anterior tilt of the scapula', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Lateral rotation is limited to 80°', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Lateral rotation is limited to 30°', 1);
