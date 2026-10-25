-- Generated from data/lessons/s1-anatomy-articular-system.json — lesson "Articular system": 8 exam + 21 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Articular system', 's1/anatomy/articular-system.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q18',
    'EMD1 2023-2024 Q19',
    'EMD1 2023-2024 Q20',
    'EMD1 2024-2025 Q20',
    'EMD1 2024-2025 Q21',
    'EMD1 2024-2025 Q22',
    'EMD1 2025-2026 Q37',
    'EMD1 2025-2026 Q38'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the classification of joints:', 'By structure/mobility: synarthroses = fibrous/immobile, amphiarthroses = cartilaginous/semi-mobile, diarthroses = synovial/mobile. The articular system is studied by arthrology.', 'Lesson: Articular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Synarthroses are fibrous and immobile joints', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Amphiarthroses are fibrous and immobile joints', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Diarthroses are synovial and mobile joints', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Amphiarthroses are cartilaginous and semi-mobile joints', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The articular system is studied by myology', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synarthroses:', 'Synarthroses are immobile fibrous joints without articular cartilage (synfibroses, syndesmoses, gomphosis). The pubic symphysis is an amphiarthrosis (semi-mobile).', 'Lesson: Articular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Include the gomphosis uniting a tooth to its socket', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Have no articular cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Include the synfibroses of the skull and face', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are semi-mobile joints', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Include the pubic symphysis', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The interosseous membrane between the two bones of the forearm is an example of:', 'Syndesmoses unite bony surfaces distant from each other by connective tissue: interosseous membrane of forearm/leg, ligamenta flava between vertebrae.', 'Lesson: Articular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A synfibrosis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A syndesmosis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A symphysis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A synchondrosis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A gomphosis', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synchondroses:', 'Synchondroses (amphiarthroses) are temporary: the growth (conjugation) plate between epiphysis and diaphysis. Trauma can cause epiphyseal detachment.', 'Lesson: Articular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are permanent fibrous joints of the skull', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Are located between the epiphysis and the diaphysis of long bones', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are synovial joints', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Correspond to the growth plate responsible for longitudinal growth', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Are temporary joints during growth', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Symphyses:', 'Symphyses are amphiarthroses with reduced mobility; a synovial membrane characterizes diarthroses.', 'Lesson: Articular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are reinforced by peripheral ligaments', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are exemplified by the pubic symphysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Have a synovial membrane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Unite bony surfaces by a mixed fibrous and fibrocartilaginous structure', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Are semi-mobile joints', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synovial joints (diarthroses) are characterized by:', 'The articular gap is only a few millimetres, and synovial joints make up the majority of limb joints.', 'Lesson: Articular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Being a minority of the limb joints', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Epiphyseal articular surfaces covered with hyaline cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'An articular cavity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'An articular gap of a few centimetres', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A synovial membrane', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Articular (hyaline) cartilage of synovial joints:', 'Thickness varies with the pressure supported, so it is not constant between joints. Also false: "Has a thickness inversely proportional to the pressure it supports"; "Is richly vascularized".', 'Lesson: Articular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has a thickness inversely proportional to the pressure it supports', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has the same thickness in all joints', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its degeneration is responsible for arthrosis (osteoarthritis)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is richly vascularized', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is smooth and bluish-white', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the articular capsule:', 'The synovial membrane lines the inner face of the capsule and is richly vascularized and innervated.', 'Lesson: Articular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The synovial membrane is poorly vascularized and not innervated', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a fibrous sleeve inserting around the articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its external part is the fibrous membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The synovial membrane lines the external face of the capsule', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its internal part is the synovial membrane', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synovial fluid (synovia):', 'Synovia is produced by the synovial membrane, not the fibrous membrane. Also false: "Is opaque and watery"; "Plays no role in the nutrition of the articular surfaces".', 'Lesson: Articular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Facilitates the gliding of the articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is secreted by the fibrous membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is secreted by the synovial membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Plays no role in the nutrition of the articular surfaces', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is opaque and watery', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'After a knee injury, a patient has blood in the joint cavity. This is called:', 'Hemarthrosis = blood effusion in a joint after trauma. Hydarthrosis = effusion/hypersecretion of synovial fluid.', 'Lesson: Articular system', NULL, 'generated', 33);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hydarthrosis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Luxation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Hemarthrosis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Bursitis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Arthrosis', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the stabilizers of a synovial joint:', 'Ligaments = passive stabilization; periarticular muscle tendons = active stabilization.', 'Lesson: Articular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Tendons of periarticular muscles are the means of active stabilization', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ligaments are fibrous bands uniting the constituent parts of the joint', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ligaments are the means of passive stabilization', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Tendons of periarticular muscles are passive stabilizers', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Ligaments are the means of active stabilization', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The means of adaptation of synovial joints:', 'Fibrocartilages are devoid of vessels and nerves; this lack of vascularization prevents healing of tears. Also false: "Exist in all joints, whatever their congruence"; "Are interposed between the capsule and the synovial membrane".', 'Lesson: Articular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are of three types: labrum, meniscus and disc', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are interposed between the capsule and the synovial membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Are fibrocartilaginous structures', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are richly vascularized, so their tears heal well', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Exist in all joints, whatever their congruence', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the means of adaptation with its example:', 'Menisci: knee (medial and lateral), acromioclavicular. Labrum: shoulder and hip. Disc: intervertebral, sternoclavicular.', 'Lesson: Articular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Meniscus: the coxofemoral joint', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Labrum: the scapulohumeral and coxofemoral joints', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Labrum: the intervertebral disc', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Meniscus: the knee and the acromioclavicular joint', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Disc: the intervertebral disc and the sternoclavicular joint', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The labrum (articular lip):', 'Shock absorption and distribution of pressure/traction is the role of discs; the knee has menisci.', 'Lesson: Articular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a fibrocartilaginous ring', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Increases the depth and surface area of the articular zone', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its main role is shock absorption of pressure and traction', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Inserts on the periphery of the bony articular zone', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is found in the knee', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A footballer has a torn meniscal fragment causing symptoms. Why must it usually be removed?', 'The absence of vascularization prevents healing of a fibrocartilaginous tear, so a symptomatic torn fragment must be removed (e.g. by arthroscopy).', 'Lesson: Articular system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Because the meniscus heals spontaneously in a few days', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Because fibrocartilage is devoid of vessels, so the tear cannot heal', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Because the meniscus is richly innervated and always painful', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Because the meniscus is made of hyaline cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Because the meniscus is an active stabilizer', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the type of synovial joint with its example:', 'The humero-ulnar joint is trochlear (ginglymus); radio-ulnar joints are trochoid; the acromioclavicular joint is plane.', 'Lesson: Articular system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Spheroid (enarthrosis): scapulohumeral and coxofemoral joints', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Trochoid (pivot): humero-ulnar joint', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Sellar (saddle): carpometacarpal joint of the thumb', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Plane (arthrodia): proximal radio-ulnar joint', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Ellipsoid (condylar): radiocarpal joint', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'How many axes of mobility does each joint type have?', 'Spheroid 3 axes (great mobility), ellipsoid and sellar 2 axes, trochlear (hinge) 1 axis. Also false: "Ellipsoid: one axis"; "Trochlear: two axes".', 'Lesson: Articular system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Spheroid: three axes', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sellar: two axes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ellipsoid: three axes', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Trochlear: two axes', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Ellipsoid: one axis', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A sellar (saddle) joint:', 'Flat surfaces = plane joint (arthrodia); inverted spheres = spheroid joint.', 'Lesson: Articular system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Unites two inverted spherical surfaces', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Unites surfaces convex in one direction and concave in the other', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is also called a joint by reciprocal reception', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Has two axes of mobility', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Unites two flat surfaces', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About articular mechanics:', 'Abduction/adduction occur around a sagittal axis; medial rotation moves the anterior face inward.', 'Lesson: Articular system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Extension "opens" the joint', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Flexion "closes" the joint around a transverse axis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Lateral rotation moves the anterior face of the segment outward', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Medial rotation moves the anterior face of the segment outward', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Abduction is performed around a vertical axis', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About exploration and pathology of joints:', 'Arthrosis is degenerative; arthritis is infectious or inflammatory. Also false: "Clinical examination is unilateral and only passive"; "A sprain is a loss of contact between two articular surfaces".', 'Lesson: Articular system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Clinical examination is unilateral and only passive', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A luxation (dislocation) is a loss of contact between two articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ultrasound and especially MRI show the articular cartilage and fibrocartilages', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Arthrosis is an infectious arthritis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A sprain is a loss of contact between two articular surfaces', 0);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Arthroscopy:', 'Contrast injection is arthrography; the simplest and most practised examination is standard radiography.', 'Lesson: Articular system', NULL, 'generated', 64);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a direct endoscopy of the joint cavities', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is an injection of contrast medium into the joint', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is the simplest and most practised joint examination', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Can be used to remove torn meniscal fragments', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Visualizes intra-articular structures', 1);
