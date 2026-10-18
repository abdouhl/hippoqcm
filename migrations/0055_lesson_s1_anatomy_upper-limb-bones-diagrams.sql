-- Generated from data/lessons/s1-anatomy-upper-limb-bones-diagrams.json — lesson "Upper limb bones (diagrams)": 17 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Upper limb bones (diagrams)', 's1/anatomy/upper-limb-bones-diagrams.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q21',
    'EMD1 2023-2024 Q22',
    'EMD1 2023-2024 Q23',
    'EMD1 2023-2024 Q24',
    'EMD1 2023-2024 Q30',
    'EMD1 2024-2025 Q26',
    'EMD1 2024-2025 Q27',
    'EMD1 2024-2025 Q28',
    'EMD1 2024-2025 Q29',
    'EMD1 2024-2025 Q31',
    'EMD1 2024-2025 Q32',
    'EMD1 2025-2026 Q23',
    'EMD1 2025-2026 Q24',
    'EMD1 2025-2026 Q25',
    'EMD1 2025-2026 Q26',
    'EMD1 2025-2026 Q27',
    'EMD1 2025-2026 Q28'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bones of the upper (thoracic) limb, anterior view. Which matches are correct?', 'a is the clavicle, b the humerus, c the scapula (seen through the thorax), d the radius (lateral, thumb side) and e the ulna (medial).', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g1.png', 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → clavicle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → humerus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'c → sternum', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'd → ulna', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'e → ulna', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bones of the upper (thoracic) limb, anterior view. Which matches are correct?', 'f points to the carpus, g to the metacarpals and h to the phalanges. The radius (d) lies on the thumb side, the ulna (e) on the little-finger side.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g1.png', 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'f → carpal bones', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'g → phalanges', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'h → phalanges', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'c → scapula', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'd → radius', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Shoulder girdle, superior view. Which matches are correct?', 'a is the scapula (acromion and spine seen from above), b the first rib, c the body of a thoracic vertebra, d the clavicle and f the manubrium of the sternum.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g2.png', 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → clavicle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'b → first rib', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'c → manubrium of the sternum', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'd → clavicle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'f → manubrium of the sternum', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Clavicle, inferior view. Which statements are correct?', 'The flattened lateral end carries the conoid tubercle (a) and trapezoid line (c); the costal tuberosity (b) lies medially. The subclavius groove runs along the middle of the inferior surface, not at the end.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g3.png', 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The extremity bearing a and c is the acromial (lateral) end', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b marks the costal tuberosity, on the medial part', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'c → trapezoid line', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'a → conoid tubercle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'b marks the groove of the subclavius muscle', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Scapula, anterior view. Which matches are correct?', 'c is the coracoid process (d is the glenoid cavity), and f is the lateral (axillary) border; the medial border is g, on the opposite side.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g4.png', 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → acromion', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → superior (cervical) border', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'c → glenoid cavity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'e → subscapular fossa', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'f → medial (spinal) border', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Scapula, posterior view. Which matches are correct?', 'The spine (j) separates the supraspinous (i) and infraspinous (k) fossae. g is the medial (spinal) border; the lateral border is f, running down from the glenoid cavity.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g5.png', 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'i → supraspinous fossa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'j → spine of the scapula', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'k → infraspinous fossa', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'g → lateral (axillary) border', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'h → inferior angle', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Scapula, lateral view. Which matches are correct?', 'In lateral view the glenoid cavity (c) faces the viewer, overhung by the acromion (a) behind and the coracoid process (b) in front; d is the lateral (axillary) border ending at the inferior angle (e).', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g6.png', 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'd → medial border', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'a → acromion', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'b → coracoid process', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'c → glenoid cavity', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'e → inferior angle', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Humerus, anterior and posterior views. Which matches are correct?', 'c is the anatomical neck, the narrow groove bordering the head; the surgical neck (f) is lower, below the tubercles.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g7.png', 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → greater tubercle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → head of the humerus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'c → surgical neck', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'd → lesser tubercle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'e → intertubercular (bicipital) groove', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Humerus, anterior and posterior views. Which matches are correct?', 'g is the deltoid tuberosity on the lateral side of the shaft. d is the lesser tubercle, seen only anteriorly; the greater tubercle (a) is lateral and visible on both views.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g7.png', 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'f → surgical neck', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'g → radial nerve groove', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'c → anatomical neck', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'd → greater tubercle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'a → greater tubercle', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Distal humerus, anterior and posterior views. Which matches are correct?', 'j is the coronoid fossa (anterior, above the trochlea); the olecranon fossa (k) is posterior. m is the capitulum (lateral, rounded), n the trochlea.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g7.png', 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'j → olecranon fossa', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'i → lateral epicondyle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'l → medial epicondyle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'k → olecranon fossa', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'm → trochlea', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Distal humerus, anterior and posterior views. Which matches are correct?', 'k is the olecranon fossa on the posterior surface. The radial fossa (above the capitulum, anteriorly) is not labelled here.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g7.png', 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'm → capitulum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'n → trochlea', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'h → supracondylar ridges', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'j → coronoid fossa', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'k → radial fossa', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Radius (left) and ulna, anterior view. Which matches are correct?', 'j is the radial tuberosity (insertion of biceps brachii), just below the radial head (i). k is the ulnar notch on the medial side of the distal radius; l its lateral styloid process.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g8.png', 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'i → head of the radius', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'j → ulnar tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'k → ulnar notch of the radius', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'l → styloid process of the radius', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'f → interosseous borders', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Ulna, anterior and lateral views. Which matches are correct?', 'b is the trochlear notch (between olecranon and coronoid process) and d the radial notch on the lateral side of the coronoid process. g is the head of the ulna; the styloid process is h.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g8.png', 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a → olecranon', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'b → radial notch', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'c → coronoid process', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'd → trochlear notch', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'g → styloid process of the ulna', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Ulna, lateral view. What does label h point to?', 'h is the small styloid process projecting below the head of the ulna (g).', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g8.png', 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Head of the ulna', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Styloid process of the ulna', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Olecranon', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Coronoid process', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Ulnar notch', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Carpal bones, palmar view. Which matches are correct?', 'Proximal row, lateral to medial: scaphoid (1), lunate (4), triquetrum (5), pisiform (6). Distal row: trapezium (2), trapezoid (3), capitate (8), hamate (7).', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g9.png', 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 → scaphoid', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2 → trapezoid', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4 → lunate', 1),
  ((SELECT MAX(id) FROM questions), 'D', '6 → pisiform', 1),
  ((SELECT MAX(id) FROM questions), 'E', '7 → capitate', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Carpal bones, palmar view. Which matches are correct?', 'All correct. The distal row from lateral to medial is trapezium (2), trapezoid (3), capitate (8), hamate (7); the triquetrum (5) is in the proximal row.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g9.png', 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3 → trapezoid', 1),
  ((SELECT MAX(id) FROM questions), 'B', '5 → triquetrum', 1),
  ((SELECT MAX(id) FROM questions), 'C', '7 → hamate', 1),
  ((SELECT MAX(id) FROM questions), 'D', '8 → capitate', 1),
  ((SELECT MAX(id) FROM questions), 'E', '2 → trapezium', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Carpal bones, dorsal view. Which carpal bone has no number in this view?', 'The pisiform (6) sits on the palmar surface of the triquetrum, so it is hidden in dorsal view; the numbering skips 6.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g10.png', 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Scaphoid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Lunate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Pisiform', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Hamate', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Trapezium', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Skeleton of the hand, palmar view. Which matches are correct?', '9 marks the five metacarpals and 10 the phalanges; 11 the sesamoid bones at the thumb''s metacarpophalangeal joint. 1 is the scaphoid.', 'Lesson: Upper limb bones (diagrams)', 's1/lessons/upper-limb-bones-g11.png', 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Upper limb bones (diagrams)'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '9 → carpal bones', 0),
  ((SELECT MAX(id) FROM questions), 'B', '10 → phalanges', 1),
  ((SELECT MAX(id) FROM questions), 'C', '11 → sesamoid bones', 1),
  ((SELECT MAX(id) FROM questions), 'D', '1 → lunate', 0),
  ((SELECT MAX(id) FROM questions), 'E', '8 → capitate', 1);
