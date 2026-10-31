-- Replace the S1 Anatomy "Articular system" and "Muscular system" lessons with this year's handouts (Prof. Abdallah):
-- drop their old generated questions and exam links, then re-add from the new drafts.
DELETE FROM questions WHERE origin = 'generated' AND id IN (SELECT question_id FROM question_lessons WHERE lesson_id = (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
DELETE FROM question_lessons WHERE lesson_id = (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system');
DELETE FROM questions WHERE origin = 'generated' AND id IN (SELECT question_id FROM question_lessons WHERE lesson_id = (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
DELETE FROM question_lessons WHERE lesson_id = (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system');

-- Generated from data/lessons/s1-anatomy-articular-system.json — lesson "Articular system": 5 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Articular system', 's1/anatomy/articular-system.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q19',
    'EMD1 2024-2025 Q21',
    'EMD1 2024-2025 Q22',
    'EMD1 2025-2026 Q37',
    'EMD1 2025-2026 Q38'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A joint (articulation) is the junction between two or more skeletal components:', 'A joint connects two bones, two cartilages or a bone and a cartilage; joints are studied by arthrology (myology = muscles). They both enable movement and provide stability/consolidation.', 'Lesson: Articular system', NULL, 'generated', 1, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its only role is to guide and enable movement', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It can connect two bones, as in the sacroiliac joint', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The scientific study of joints is called myology', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It can connect two cartilages, as in the larynx', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The sternochondral joint connects a bone and a cartilage', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Joints are classified into three anatomical types according to the nature of the tissue joining the skeletal components:', 'Synarthroses = immovable/fibrous, amphiarthroses = slightly movable/cartilaginous, diarthroses = freely movable/synovial. Secondary ossification concerns the fibrous tissue of synarthroses.', 'Lesson: Articular system', NULL, 'generated', 1, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Diarthroses are united by fibrous connective tissue that may ossify', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Amphiarthroses are also called immovable joints', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Amphiarthroses are united by cartilaginous tissue', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Diarthroses are also called freely movable or synovial joints', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Synarthroses are united by fibrous connective tissue', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are synarthroses (fibrous joints)?', 'Synarthroses: distal tibiofibular joint, interosseous membranes, cranial and facial sutures, fusion of ilium/ischium/pubis. Pubic symphysis and intervertebral joints are amphiarthroses; the glenohumeral joint is a diarthrosis.', 'Lesson: Articular system', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The glenohumeral joint', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The interosseous membranes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cranial and facial sutures', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The pubic symphysis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The intervertebral joints', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Amphiarthroses:', 'Amphiarthroses are cartilaginous (fibrocartilaginous block), slightly movable, typically midline (intervertebral joints, pubic symphysis). The distal tibiofibular joint is a synarthrosis; a synovial membrane belongs to diarthroses.', 'Lesson: Articular system', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Join the bony elements by cartilaginous tissue forming a fibrocartilaginous block', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are typically located along the midline', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are slightly movable joints', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Have a joint cavity lined by a synovial membrane', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Include the distal tibiofibular joint', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the articular surfaces of a diarthrosis (synovial joint):', 'Articular surfaces sit at the epiphyses of long bones or the angles/surfaces of flat bones, have defined shapes and are covered with smooth hyaline cartilage (not fibrocartilage).', 'Lesson: Articular system', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They can be located at the angles and surfaces of flat bones', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are covered with fibrocartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'When they are incongruent, adapting fibrocartilaginous structures interpose to ensure a proper fit', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They have defined geometric shapes', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'They are located at the epiphyses of long bones', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the retaining structures (means of union) of a synovial joint:', 'The three retaining structures are the capsule, passive ligaments (reinforce the capsule) and active ligaments (adjacent tendons that stabilize and actively mobilize). The synovial membrane is a separate, fourth structure.', 'Lesson: Articular system', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Passive ligaments actively mobilize the joint', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The synovial membrane is one of the three retaining structures', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Active ligaments are the tendons of muscles adjacent to the joint', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The articular capsule is a fibrous envelope enclosing the joint cavity', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Passive ligaments are fibrous bands that reinforce the capsule', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The synovial membrane of a diarthrodial joint:', 'The synovial membrane lines the inner surface of the capsule and stops at the margins of the articular cartilages — it does not cover them. The fibrous envelope is the capsule.', 'Lesson: Articular system', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Attaches at the margins of the articular cartilages', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Covers the surface of the articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is the fibrous envelope enclosing the joint cavity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lines the internal surface of the articular capsule', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is the specialized gliding membrane of the joint', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synovial fluid (synovia) has a triple function. Which of the following are its functions?', 'Synovia resorbs waste, nourishes the cartilage and lubricates. The cartilage is avascular — that is why it depends on synovia for nutrition; passive ligaments reinforce the capsule.', 'Lesson: Articular system', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nutritional support for the articular cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Fibrous reinforcement of the articular capsule', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Resorption of metabolic waste products', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Vascularization of the articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Lubrication to reduce friction during movement', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Diarthroses are classified into six types according to the shape of their articular surfaces. Which type — mobility pairs are correct?', 'Spheroid = 3 axes; ellipsoid and saddle = 2 axes; ginglymus and cylindrical = 1 axis (cylindrical = rotation); plane = limited gliding in multiple directions.', 'Lesson: Articular system', NULL, 'generated', 3, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ellipsoid joint — uniaxial', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Spheroid joint — multiaxial (three axes)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Saddle joint — biaxial', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cylindrical joint — uniaxial (rotation)', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Ginglymus joint — biaxial', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which joint — type pairs are correct?', 'Glenohumeral = spheroid, radiocarpal = ellipsoid, humeroulnar = ginglymus, proximal radioulnar = cylindrical, acromioclavicular = plane, thumb carpometacarpal (trapeziometacarpal) = saddle.', 'Lesson: Articular system', NULL, 'generated', 3, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Proximal radioulnar joint — cylindrical', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Trapeziometacarpal joint — saddle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Acromioclavicular joint — ellipsoid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Radiocarpal joint — ginglymus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Glenohumeral joint — spheroid', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A joint has elliptical articular surfaces, one concave and one convex, and moves around two axes:', 'Elliptical concave/convex surfaces with two axes define the ellipsoid joint (radiocarpal). The humeroulnar joint is a pulley-shaped ginglymus (one axis); spheroid joints have three axes.', 'Lesson: Articular system', NULL, 'generated', 3, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The radiocarpal (wrist) joint is an example', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a uniaxial joint', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The humeroulnar joint is an example', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is an ellipsoid joint', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It is a spheroid joint', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Plane joints:', 'Plane joints are multiaxial with limited gliding (e.g. acromioclavicular). A central pivot in a ring is the cylindrical joint.', 'Lesson: Articular system', NULL, 'generated', 3, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Have flat or nearly flat articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are uniaxial joints', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Are exemplified by the acromioclavicular joint', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Permit limited gliding movements in multiple directions', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Are made of a central bony pivot surrounded by a ring', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Adapting structures:', 'Adapting structures are fibrocartilaginous, found only where articular surfaces are non-congruent, to ensure alignment and congruence; hyaline cartilage covers the articular surfaces.', 'Lesson: Articular system', NULL, 'generated', 3, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are intra-articular fibrocartilaginous structures', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are interposed between non-congruent articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are made of hyaline cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Are present in all synovial joints', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Are of three types: meniscus, labrum and articular disc', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the types of adapting structures:', 'Meniscus = mobile crescent (knee); labrum = fixed ring deepening a socket (glenoid labrum); disc = complete partition (sternoclavicular joint).', 'Lesson: Articular system', NULL, 'generated', 3, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A labrum is a mobile crescentic plate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'An articular disc is a complete partition dividing the joint cavity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A meniscus is a mobile crescentic fibrocartilaginous plate, as in the knee', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The glenoid labrum is an example of an articular disc', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A labrum is a fixed ring attached to the margin of a socket that deepens the joint cavity', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'On an MRI of the sternoclavicular joint, a complete fibrocartilaginous partition divides the joint cavity into two. This structure is:', 'A complete intra-articular partition dividing the cavity is an articular disc — the lesson''s example is the sternoclavicular joint. A meniscus is a crescent and a labrum a ring at a socket margin.', 'Lesson: Articular system', NULL, 'generated', 4, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The fibrocartilaginous block of an amphiarthrosis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The articular capsule', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An articular disc', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A meniscus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A labrum', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About movements of synovial joints:', 'Flexion decreases the angle (forward), extension increases it (backward); abduction moves away from and adduction toward the median plane. Each movement has an axis and a plane, range 0°–180°.', 'Lesson: Articular system', NULL, 'generated', 4, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flexion brings a body part forward or decreases the angle between segments', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Abduction moves a body part away from the median plane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Extension decreases the angle between segments', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Adduction moves a body part away from the median plane', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Joint mobility ranges from 0° to 180°', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which related movements are correctly matched with their fundamental movement?', 'Dorsi/plantarflexion (talocrural) are flexion–extension, radial/ulnar deviation (radiocarpal) are abduction–adduction, pronation/supination (forearm) are rotations.', 'Lesson: Articular system', NULL, 'generated', 4, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Radial and ulnar deviation of the radiocarpal joint — rotation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Radial and ulnar deviation of the radiocarpal joint — abduction–adduction', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Dorsiflexion and plantarflexion of the talocrural joint — flexion–extension', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pronation and supination of the forearm — flexion–extension', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Pronation and supination of the forearm — rotation', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About rotation and circumduction:', 'Circumduction is not a rotation: it is the sequential combination of four primary movements (adduction, abduction, flexion, extension).', 'Lesson: Articular system', NULL, 'generated', 4, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Articular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Circumduction combines adduction, abduction, flexion and extension in sequence', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Circumduction is a simple rotation around a single axis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'External rotation directs a body part outward (medial to lateral)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Circumduction is a composite, circular movement', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Internal rotation directs a body part inward (lateral to medial)', 1);

-- Generated from data/lessons/s1-anatomy-muscular-system.json — lesson "Muscular system": 6 exam + 14 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Muscular system', 's1/anatomy/muscular-system.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q40',
    'EMD1 2024-2025 Q23',
    'EMD1 2024-2025 Q24',
    'EMD1 2025-2026 Q20',
    'EMD1 2025-2026 Q21',
    'EMD1 2025-2026 Q22'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The muscle, the driving force of the locomotor system:', 'Stimuli can be nervous, electrical, thermal, painful, etc. Myology studies muscles; arthrology studies joints.', 'Lesson: Muscular system', NULL, 'generated', 1, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Can only be stimulated by a nervous excitation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is studied by arthrology', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Can be stimulated by electrical, thermal or painful excitation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Contracts (shortens) under the influence of a stimulus', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is studied by myology', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are roles of muscles?', 'Roles: movement, thermogenesis, posture, joint stabilization, protection of the viscera and visceral functions (digestion, urination, blood propulsion, vasomotricity, childbirth…). Calcium storage is not among them.', 'Lesson: Muscular system', NULL, 'generated', 1, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Maintaining posture', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Visceral functions such as blood propulsion and childbirth', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Heat production (thermogenesis)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Protection of the viscera', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Storage of calcium', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Skeletal muscle:', 'Skeletal muscle is striped/red, striated, attached to the skeleton, voluntary and fast, fatigues fast and is controlled by the CNS. Never fatiguing and ANS control belong to cardiac and visceral muscle.', 'Lesson: Muscular system', NULL, 'generated', 1, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is also called striped or red muscle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is made of non-striated cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Has a voluntary and fast contraction', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Never fatigues', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is controlled by the autonomic nervous system', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Cardiac muscle:', 'In the lesson''s table cardiac muscle = mixed: striated cells like skeletal muscle, but involuntary/automatic/rhythmic, never fatigues and is under ANS control.', 'Lesson: Muscular system', NULL, 'generated', 1, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has a voluntary contraction', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has an involuntary, automatic, rhythmic and fast contraction', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is made of striated cells', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is located in the heart walls', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is also called mixed muscle', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A biopsy of the wall of a hollow viscus shows non-striated muscle cells. This muscle:', 'Visceral (smooth) muscle has non-striated cells, lines hollow viscera, vessel walls and skin, contracts involuntarily, slowly and continuously, never fatigues and is under ANS control.', 'Lesson: Muscular system', NULL, 'generated', 1, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is controlled by the autonomic nervous system', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Contracts involuntarily, slowly and continuously', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Fatigues fast', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is controlled by the central nervous system', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is visceral (smooth) muscle', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the situation of skeletal muscles:', 'Two groups: deep (sub-aponeurotic: muscles of the digestive/respiratory systems, skeletal muscles, sensory organs) and superficial (supra-aponeurotic, subcutaneous: facial muscles).', 'Lesson: Muscular system', NULL, 'generated', 2, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Deep muscles are sub-aponeurotic', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Facial muscles are deep muscles', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Superficial muscles are supra-aponeurotic (subcutaneous)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Muscles attached to the digestive and respiratory systems are deep muscles', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Muscles attached to the sensory organs are superficial muscles', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A simple (monogastric) muscle:', 'The belly is the contractile part; tendons are the narrow whitish resistant ends. Two bellies with an intermediate tendon is a digastric muscle.', 'Lesson: Muscular system', NULL, 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has tendons that are its contractile part', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has two bellies joined by an intermediate tendon', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Has a belly that is large, red, fleshy and contractile', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Has a middle muscular belly and two tendinous ends', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Has tendons that are narrow, whitish, elastic and resistant', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The biceps brachii and the quadriceps femoris:', 'Biceps = bifid (2 parallel bellies), quadriceps = multifidus (several parallel bellies); parallel tendons are called heads. Bellies in series with intermediate tendons define digastric/multigastric muscles.', 'Lesson: Muscular system', NULL, 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The quadriceps femoris is a multigastric muscle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Their parallel tendons are called heads', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Have intermediate tendons between successive bellies', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Have bellies arranged in parallel', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The biceps brachii is a bifid muscle', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A muscle has several bellies separated by several intermediate tendons:', 'Several bellies + several intermediate tendons = multigastric (rectus abdominis). The digastric has only two bellies; the quadriceps is multifidus (parallel bellies).', 'Lesson: Muscular system', NULL, 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The quadriceps femoris is an example', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The digastric muscle is an example', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a multigastric muscle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is a multifidus muscle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The rectus abdominis is an example', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About muscle insertions:', 'Origin = proximal/fixed, termination = distal/mobile, but the origin can sometimes become mobile. The four insertion sites are bone, cartilage, aponeurosis and skin.', 'Lesson: Muscular system', NULL, 'generated', 2, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The termination is distal or mobile', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A muscle attaches by a double insertion: an origin and a termination', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The origin is proximal or fixed', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Insertion can occur on bone, cartilage, aponeurosis or skin', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The origin always remains fixed', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which insertion type — example pairs are correct?', 'Bone: iliopsoas; cartilage: cricothyroid; aponeurotic: abductor hallucis; skin: palmaris brevis.', 'Lesson: Muscular system', NULL, 'generated', 2, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Bone insertion — iliopsoas muscle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Aponeurotic insertion — palmaris brevis muscle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Aponeurotic insertion — abductor hallucis muscle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Skin insertion — abductor hallucis muscle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Cartilage insertion — cricothyroid muscle', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the shape of muscles:', 'Long: sartorius; flat: latissimus dorsi; short: hypothenar muscles; annular: orbicularis oculi/oris; geometric: trapezius, pronator quadratus, depressor anguli oris.', 'Lesson: Muscular system', NULL, 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A long muscle has its length predominating, e.g. sartorius', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The trapezius is a long muscle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A short muscle has its three dimensions reduced, e.g. sartorius', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Annular muscles surround openings, e.g. orbicularis oris', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'A flat muscle has length and width predominating over thickness, e.g. latissimus dorsi', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'During hand surgery, the surgeon opens a fibrous groove that, together with the bone, forms an osteofibrous canal in which the tendons slide. This structure is:', 'Fibrous sheaths delimit an osteofibrous canal with the bone; inside it the tendons slide wrapped in tendinous serous sheaths. Fascia (covering aponeurosis) encases and separates muscles.', 'Lesson: Muscular system', NULL, 'generated', 3, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A fibrous sheath', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A muscular fascia', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A covering aponeurosis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A serous (synovial) bursa', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A tendinous serous sheath', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the appendices of muscles:', 'The four appendices: serous bursae (synovial-fluid sacs near joints), tendinous serous sheaths (bursae around tendons), fibrous sheaths (fibrous grooves) and muscular fascia (encases and separates muscles).', 'Lesson: Muscular system', NULL, 'generated', 3, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Muscular fascia is also called covering aponeurosis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Tendinous serous sheaths are fibrous grooves', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'There are four types of appendices', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Muscular fascia is a membranous sac filled with synovial fluid', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Serous bursae are sacs filled with synovial fluid that facilitate muscle gliding', 1);
