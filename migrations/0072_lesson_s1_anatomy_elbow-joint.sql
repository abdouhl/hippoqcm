-- Generated from data/lessons/s1-anatomy-elbow-joint.json — lesson "Elbow joint": 5 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Elbow joint', 's1/anatomy/elbow-joint.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q33',
    'EMD1 2023-2024 Q34',
    'EMD1 2023-2024 Q35',
    'EMD1 2025-2026 Q35',
    'EMD1 2025-2026 Q36'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The elbow joint is made of three diarthroses. Match each with its type:', 'Humero-ulnar = trochlear (flexion-extension); proximal radio-ulnar = trochoid (pronation-supination); humero-radial = enarthrosis, taking part in both.', 'Lesson: Elbow joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Proximal radio-ulnar joint: plane joint', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Humero-ulnar joint: trochlear joint', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Humero-ulnar joint: trochoid joint', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Proximal radio-ulnar joint: trochoid joint', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Humero-radial joint: ball-and-socket (enarthrosis)', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Why is the elbow considered functionally a single joint?', 'The three joints form one: one cavity, one synovial membrane, one ligamentous apparatus. They are of different types (trochlear, trochoid, enarthrosis).', 'Lesson: Elbow joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They share a single ligamentous apparatus', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They share a single synovial membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They are all trochlear joints', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They all have separate capsules', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its three joints share a single joint cavity', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the articular surfaces of the distal humerus at the elbow:', 'The olecranon fossa is posterior, above the trochlea. Also false: "The trochlea is a segment of a spheroid"; "The radial fossa lies posterior to the capitulum".', 'Lesson: Elbow joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The trochlea is surmounted anteriorly by the coronoid fossa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The radial fossa lies posterior to the capitulum', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The trochlea is a segment of a spheroid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The capitulum is a segment of a spheroid', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The olecranon fossa lies anteriorly above the trochlea', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The trochlear notch of the ulna:', 'The trochlear notch articulates with the trochlea; the capitulum articulates with the radial fovea. Also false: "Has a posterior horizontal facet on the coronoid process"; "Has an anterior vertical facet formed by the olecranon".', 'Lesson: Elbow joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Articulates with the capitulum', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is hook-shaped and fits onto the humeral trochlea', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Has its two facets separated by a transverse groove', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Has an anterior vertical facet formed by the olecranon', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Has a posterior horizontal facet on the coronoid process', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radial notch of the ulna:', 'The radial notch is on the lateral (external) face of the coronoid process and receives the radial head''s circumference.', 'Lesson: Elbow joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is shaped like a hollow cylinder segment', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Occupies the external face of the coronoid process', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Articulates with the capitulum', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Articulates with the articular circumference of the radial head', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Occupies the medial face of the olecranon', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The articular fovea of the radial head:', 'The radial notch of the ulna receives the articular circumference, not the fovea.', 'Lesson: Elbow joint', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the superior, excavated surface of the radial head', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Has a bevelled inner rim articulating with the capitulo-trochlear groove', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Articulates with the trochlea', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Articulates with the capitulum of the humerus', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Articulates with the radial notch of the ulna', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The annular ligament of the radius:', 'Deep (inner) surface: articular, cartilage-covered, facing the radial head; superficial (outer) surface: fibrous, adhering to the capsule.', 'Lesson: Elbow joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a fibrocartilaginous band about 1 cm high', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its outer surface adheres to the articular capsule', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is both an articular surface and a passive ligament', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its inner surface is covered with articular cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Extends from the anterior to the posterior border of the radial notch of the ulna', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radial head''s circumference is enclosed in an osteofibrous ring formed by:', 'The osteofibrous ring = radial notch of the ulna + annular ligament.', 'Lesson: Elbow joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The olecranon', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The radial notch of the ulna', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The quadrate ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The annular ligament', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The capitulum', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The capsule of the elbow:', 'On the radius, the capsule inserts on the neck, 0.5 cm below the head, not on the head itself.', 'Lesson: Elbow joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Attaches on the inferior borders of the epicondyles', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Inserts directly on the radial head cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is lined on its deep surface by the synovial membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Inserts on the radial neck about half a centimetre below the radial head', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Runs along the superior border of the coronoid and radial fossae anteriorly', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The ulnar collateral ligament of the elbow:', 'The ulnar collateral ligament arises from the medial epicondyle; the radial collateral ligament from the lateral epicondyle. Also false: "Its posterior (Bardinet) bundle ends on the coronoid process"; "Its arcuate (Cooper) bundle runs from the medial epicondyle to the radial neck".', 'Lesson: Elbow joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Arises from the lateral epicondyle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its posterior (Bardinet) bundle ends on the coronoid process', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'All its bundles arise from the medial epicondyle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its arcuate (Cooper) bundle runs from the medial epicondyle to the radial neck', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is formed of anterior, middle and posterior bundles', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which bundle of the elbow ligaments is called Bardinet''s bundle?', 'Bardinet = fan-shaped posterior bundle of the ulnar collateral ligament (medial epicondyle → olecranon). The arcuate bundle is Cooper''s ligament.', 'Lesson: Elbow joint', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The posterior bundle of the ulnar collateral ligament', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The posterior bundle of the radial collateral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The horizontal humero-humeral bundles', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The anterior oblique bundle of the anterior ligament', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The arcuate bundle between the coronoid process and the olecranon', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radial collateral ligament of the elbow:', 'All three bundles end on the ulna; none attaches to the radius (the only ligament attaching to the radius is the quadrate ligament). Also false: "Its posterior bundle ends on the radial neck"; "Its middle bundle ends on the radius, in front of the radial notch".', 'Lesson: Elbow joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its middle bundle ends on the radius, in front of the radial notch', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its posterior bundle ends on the radial neck', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Arises from the lateral epicondyle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ends on the radial head', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its anterior bundle ends at the radial notch', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The quadrate ligament (of Denucé):', 'The inferior (quadrate) ligament joins the ulna''s radial notch to the radial neck.', 'Lesson: Elbow joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a bundle of the ulnar collateral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Extends from the lateral epicondyle to the olecranon', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Extends from the inferior border of the radial notch to the medial part of the radial neck', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Attaches to the radius', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is a quadrilateral plate', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which synovial recesses does the elbow synovium form?', 'Anterior, posterior and inferior (annular) recesses. The olecranon bursa is a separate periarticular structure.', 'Lesson: Elbow joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A superior recess above the medial epicondyle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A recess inside the olecranon bursa', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An anterior recess corresponding to the coronoid and radial fossae', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A posterior recess related to the olecranon fossa', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'An inferior (annular) recess surrounding the radial neck', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the movements of the elbow:', 'Pronation-supination occur at the humeroradial and proximal and distal radioulnar joints (radius mobile around a vertical axis). Also false: "Supination has a range of 70°"; "Pronation has a range of 85°".', 'Lesson: Elbow joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flexion has a range of 140° to 160°', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Supination has a range of 70°', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Extension has a range of 0°', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pronation occurs at the humero-ulnar joint only', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Pronation has a range of 85°', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A patient turns the forearm so that the palm faces upward. This movement is:', 'Supination rotates the forearm outward, palm up (85°); pronation rotates inward, palm down (70°).', 'Lesson: Elbow joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Supination, range 70°', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Pronation, range 85°', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Pronation, range 70°', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Supination, range 85°', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Flexion, range 140°', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the posterior palpable landmarks of the elbow:', 'Flexion → Nélaton''s triangle; extension → straight line of Malgaigne.', 'Lesson: Elbow joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are the lateral epicondyle, the olecranon and the medial epicondyle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In flexion they form Nélaton''s triangle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'In flexion they form a straight line', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'In extension they form Nélaton''s triangle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'In extension they form Malgaigne''s line', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The olecranon bursa:', 'Bursae are periarticular structures reducing friction; the joint''s synovial fluid is secreted by the synovium.', 'Lesson: Elbow joint', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Elbow joint'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is part of the elbow joint cavity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Reduces friction between soft tissues and the bony prominence', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a ligament of the elbow', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a periarticular structure', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Secretes the synovial fluid of the elbow joint', 0);
