-- Generated from data/lessons/s1-anatomy-hand-joints-and-radiocarpal-joint.json — lesson "Hand joints and radiocarpal joint": 6 exam + 15 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Hand joints and radiocarpal joint', 's1/anatomy/hand-joints-and-radiocarpal-joint.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q31',
    'EMD1 2024-2025 Q16',
    'EMD1 2024-2025 Q17',
    'EMD1 2025-2026 Q29',
    'EMD1 2025-2026 Q30',
    'EMD1 2025-2026 Q31'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are carpometacarpal or finger joints (not wrist joints)?', 'Wrist joints: radiocarpal, proximal intercarpal, mid-carpal, distal intercarpal. Carpometacarpal joints (thumb, II–V) and finger joints (MCP, IP) form the other two classes.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The interphalangeal joints', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The proximal intercarpal joints', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The metacarpophalangeal joints', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The mid-carpal joint', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The carpometacarpal joint of the thumb', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radiocarpal joint:', 'The radiocarpal joint is an ellipsoid (condylar) diarthrosis; the saddle joint of the hand is the carpometacarpal joint of the thumb.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a trochoid joint', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the distal joint of the thoracic limb', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a synovial joint of the ellipsoid type', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a saddle joint', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Unites the carpus to the forearm', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The antebrachial (forearm) articular surface of the radiocarpal joint:', 'The forearm surface is concave; the carpal (radial) articular surface is convex and more extensive.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is more extensive than the carpal surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has a major transverse axis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is convex', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is elliptical and concave', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is formed by the carpal surface of the radius and the radioulnar articular disc', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The carpal articular surface of the radius:', 'The radius occupies the lateral 2/3; the articular disc occupies the medial 1/3 and faces the lunate and triquetrum.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has a lateral triangular part for the scaphoid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Occupies the lateral 2/3 of the antebrachial surface', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Has a medial quadrilateral part for the lunate', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Articulates with the triquetrum', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Occupies the medial 1/3 of the antebrachial surface', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radioulnar articular disc of the wrist:', 'The disc attaches to the ulnar notch of the radius and the ulnar styloid, between the ulnar head and lunate/triquetrum. Also false: "Occupies the lateral 2/3 of the antebrachial surface"; "Attaches to the capitate".', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a horizontal triangular ligament covered with cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Attaches to the capitate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Attaches to the radial styloid process', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lies between the ulnar head and the carpus', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Occupies the lateral 2/3 of the antebrachial surface', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radial articular surface of the carpus is formed by:', 'Scaphoid, lunate and triquetrum, joined by interosseous ligaments, form the convex carpal surface. The pisiform is not part of it. Also false: "The capitate"; "The trapezium".', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The trapezium', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The scaphoid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The capitate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The pisiform', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The lunate', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The capsule of the radiocarpal joint attaches to:', 'The capsule inserts around the articular surfaces and on the anterior and posterior edges of the articular disc.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The metacarpal bases', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The tip of the radial styloid process only', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The anterior and posterior edges of the articular disc', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The periphery of the articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The distal row of the carpus', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which ligament of the radiocarpal joint terminates on the lunate, triquetrum and hamate?', 'Dorsal radiocarpal: lunate, triquetrum, hamate. Palmar radiocarpal: lunate, capitate. Palmar ulnocarpal: triquetrum, lunate, capitate.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The palmar radiocarpal ligament', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The palmar ulnocarpal ligament', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The dorsal radiocarpal ligament', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The radial collateral ligament of the carpus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ulnar collateral ligament of the carpus', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the collateral ligaments of the carpus:', 'Radial collateral → scaphoid; ulnar collateral → pisiform and triquetrum. They are passive ligaments.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ulnar collateral ligament runs from the ulnar styloid to the pisiform and triquetrum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are active ligaments', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The ulnar collateral ligament terminates on the hamate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The radial collateral ligament runs from the radial styloid to the scaphoid', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The radial collateral ligament terminates on the capitate', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which ligaments of the radiocarpal joint attach to the ulnar styloid process?', 'The palmar ulnocarpal ligament arises from the disc and ulnar styloid; the ulnar collateral ligament from the ulnar styloid. The palmar radiocarpal and radial collateral arise from the radial side.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The dorsal radiocarpal ligament', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The palmar radiocarpal ligament', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The palmar ulnocarpal ligament', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The radial collateral ligament of the carpus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ulnar collateral ligament of the carpus', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The active ligaments of the radiocarpal joint include the tendons of:', 'Six main muscles: flexor carpi radialis, flexor carpi ulnaris, palmaris longus, extensor carpi ulnaris, extensor carpi radialis longus and brevis.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The flexor carpi ulnaris', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The flexor carpi radialis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The palmaris longus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The extensor carpi ulnaris', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The extensors carpi radialis longus and brevis', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A patient has a rounded swelling on the back of the wrist that becomes prominent in flexion and disappears in extension. This is most likely:', 'A synovial cyst is formed by synovial extensions insinuating between capsular and ligamentous fibres; it is prominent in flexion and disappears in extension.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A fracture of the radial styloid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A rupture of the radial collateral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A dislocation of the lunate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A synovial cyst', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Carpal tunnel syndrome', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the movements of the radiocarpal joint:', 'Abduction (radial tilt) is 5°, less than adduction (ulnar tilt) 15°. Also false: "Flexion has an amplitude of 35°"; "Extension has an amplitude of 50°".', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flexion has an amplitude of 35°', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Abduction (radial tilt) has a larger amplitude than adduction', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Extension has an amplitude of 50°', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Abduction and adduction occur around a sagittal axis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Flexion and extension occur around a transverse axis', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'What is the amplitude of adduction (ulnar tilt) of the radiocarpal joint?', 'Adduction (ulnar tilt) 15°, abduction (radial tilt) 5°, extension 35°, flexion 50°.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5°', 0),
  ((SELECT MAX(id) FROM questions), 'B', '15°', 1),
  ((SELECT MAX(id) FROM questions), 'C', '35°', 0),
  ((SELECT MAX(id) FROM questions), 'D', '50°', 0),
  ((SELECT MAX(id) FROM questions), 'E', '85°', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Circumduction of the wrist:', 'Circumduction combines flexion, extension, abduction and adduction successively, drawing a cone.', 'Lesson: Hand joints and radiocarpal joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Hand joints and radiocarpal joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is performed only around a transverse axis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Results from passing from one to another of the 4 previous movements', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a circular summation movement drawing a cone', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a pure rotation around a vertical axis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is impossible at the radiocarpal joint', 0);
