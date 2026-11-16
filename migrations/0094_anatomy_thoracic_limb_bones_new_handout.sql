-- Replace the S1 Anatomy "Thoracic limb bones" lesson with this year's handout (Prof. Abdallah, 2026-27):
-- drop its old generated questions and exam links, then re-add from the updated draft.
DELETE FROM questions WHERE origin = 'generated' AND id IN (SELECT question_id FROM question_lessons WHERE lesson_id = (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
DELETE FROM question_lessons WHERE lesson_id = (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones');

-- Generated from data/lessons/s1-anatomy-thoracic-limb-bones.json — lesson "Thoracic limb bones": 18 exam + 23 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Thoracic limb bones', 's1/anatomy/thoracic-limb-bones.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones') FROM questions
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
    'EMD1 2024-2025 Q30',
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
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the skeleton of the thoracic limb:', 'The shoulder girdle = scapula + clavicle (paired bones); the humerus is the arm skeleton.', 'Lesson: Thoracic limb bones', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The shoulder girdle is formed by the scapula and the clavicle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The forearm skeleton is formed by the radius laterally and the ulna medially', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is attached to the thorax by the shoulder girdle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The shoulder girdle is formed by the scapula and the humerus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The humerus alone forms the skeleton of the arm', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The clavicle:', 'The anterior border is concave in its lateral 1/3 and convex in its medial 2/3; the posterior border is the reverse (convex lateral 1/3, concave medial 2/3). Also false: "Extends between the scapula and the humerus"; "Has a deep, non-palpable superior surface".', 'Lesson: Thoracic limb bones', NULL, 'generated', 2, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has a deep, non-palpable superior surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a long bone shaped like an extended "S"', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Extends between the scapula and the humerus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Has a posterior border that is convex in its lateral 1/3', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Has an anterior border that is concave in its medial 2/3', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'On the inferior surface of the clavicle, which structure gives attachment to the costoclavicular ligament?', 'Medially, the costal tuberosity (costoclavicular ligament); in the middle, the subclavius groove; laterally, trapezoid line and conoid tubercle (coracoclavicular ligament: trapezoid and conoid parts).', 'Lesson: Thoracic limb bones', NULL, 'generated', 2, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The acromial articular surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The conoid tubercle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The groove for the subclavius', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The costal tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The trapezoid line', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the extremities of the clavicle:', 'The sternal end articulates with the sternum and 1st costal cartilage; the coracoid process is linked to the clavicle by ligaments, not a joint surface. Also false: "The acromial end is medial and rounded"; "The sternal end articulates with the first rib only".', 'Lesson: Thoracic limb bones', NULL, 'generated', 2, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The sternal end articulates with the first rib only', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The acromial end articulates with the acromion of the scapula', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The acromial end is medial and rounded', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The sternal end articulates with the coracoid process', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The sternal end is medial and rounded', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scapula:', 'The scapula projects onto the 2nd rib above and the 7th rib below; its concave (costal) surface faces forward.', 'Lesson: Thoracic limb bones', NULL, 'generated', 2, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a flat, triangular, dorsal bone', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is oriented with its concave surface backward', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Projects between the 1st and the 10th ribs', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Articulates with the humerus and the clavicle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Projects between the 2nd and the 7th ribs', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the faces of the scapula:', 'The supraspinous fossa receives the supraspinatus; the spine extends laterally as the acromion, which carries the clavicular articular surface.', 'Lesson: Thoracic limb bones', NULL, 'generated', 2, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The scapular spine extends laterally as the coracoid process', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The anterior surface forms the subscapular fossa for the subscapularis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The supraspinous fossa gives insertion to the subscapularis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The posterior surface is divided by the scapular spine into supraspinous and infraspinous fossae', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The infraspinous fossa gives insertion to the infraspinatus, teres minor and teres major', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scapular notch:', 'The scapular notch belongs to the superior border, not the lateral angle (a classic exam trap).', 'Lesson: Thoracic limb bones', NULL, 'generated', 2, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is surmounted by the transverse ligament of the scapula', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is on the lateral angle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Gives passage to the suprascapular artery and nerve', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Gives passage to the radial nerve', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is on the superior (cervical) border', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the lateral angle of the scapula:', 'It is reversed: supraglenoid tubercle = long head of biceps; infraglenoid tubercle = long head of triceps.', 'Lesson: Thoracic limb bones', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The supraglenoid tubercle gives insertion to the long head of triceps', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The neck of the scapula supports the glenoid cavity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The infraglenoid tubercle gives insertion to the long head of biceps', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The glenoid cavity is oval, notched anteriorly, with the glenoid tubercle at its centre', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The coracoid process gives insertion to the short head of biceps, coracobrachialis and pectoralis minor', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the diaphysis of the humerus:', 'Lateral head of triceps above the radial groove, medial head below. The crest of the major tubercle (anterior border) receives the pectoralis major; latissimus dorsi inserts on the crest of the minor tubercle.', 'Lesson: Thoracic limb bones', NULL, 'generated', 3, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The crest of the minor tubercle, on its anteromedial surface, gives insertion to the latissimus dorsi', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The radial nerve groove crosses its posterior surface', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The lateral head of triceps inserts below the radial groove', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The crest of the major tubercle gives insertion to the latissimus dorsi', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The deltoid tuberosity is on its anterolateral surface', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A fracture of the middle of the humeral shaft injures the radial nerve. Which structure of the humerus explains this?', 'The radial nerve runs in the radial nerve groove, which crosses the posterior surface of the humeral diaphysis. The intertubercular groove carries the long head of biceps.', 'Lesson: Thoracic limb bones', NULL, 'generated', 3, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The surgical neck', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The olecranon fossa', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The intertubercular groove', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The radial nerve groove on the posterior surface', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The deltoid tuberosity', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the proximal epiphysis of the humerus:', 'The anatomical neck separates the head from the two tubercles; the surgical neck separates the epiphysis from the diaphysis. The major tubercle is the large lateral tuberosity, the minor tubercle the small anterior one, and the intertubercular groove lies between them.', 'Lesson: Thoracic limb bones', NULL, 'generated', 3, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The surgical neck is the narrowed part that separates the proximal epiphysis from the diaphysis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The anatomical neck separates the proximal epiphysis from the diaphysis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The minor tubercle is a large lateral tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The anatomical neck separates the minor tubercle from the major tubercle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The intertubercular groove gives passage to the tendon of the long head of biceps', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the humeral condyle:', 'The capitulum is surmounted by the radial fossa; the trochlea by the coronoid fossa (anteriorly) and the olecranon fossa (posteriorly).', 'Lesson: Thoracic limb bones', NULL, 'generated', 4, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The capitulum is lateral, rounded and not visible from behind', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The trochlea is medial and articulates with the trochlear notch of the ulna', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The capitulum articulates with the radial head', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The olecranon fossa lies anteriorly above the trochlea', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The trochlea is surmounted by the radial fossa', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The medial epicondyle of the humerus:', 'The medial epicondyle is very developed and palpable and anchors the ulnar collateral ligament of the ELBOW (the ulnar collateral ligament of the carpus attaches to the ulnar styloid process). The lateral epicondyle is the poorly developed one, for the radial collateral ligament.', 'Lesson: Thoracic limb bones', NULL, 'generated', 4, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gives attachment to the radial collateral ligament', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is poorly developed', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Gives attachment to the ulnar collateral ligament of the carpus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Gives attachment to the ulnar collateral ligament of the elbow', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is very developed and palpable', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the ulna:', 'The radial notch of the ulna is on the lateral (outer) side of the coronoid process, articulating with the radial articular circumference. Also false: "Its medial border is the interosseous border"; "The olecranon is horizontal and anterior".', 'Lesson: Thoracic limb bones', NULL, 'generated', 4, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is the medial bone of the forearm', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The coronoid process is horizontal and anterior', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its medial border is the interosseous border', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The olecranon is horizontal and anterior', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The radial notch is on the medial surface of the coronoid process', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which muscle inserts on the ulnar tuberosity?', 'The ulnar tuberosity, in front of the coronoid process, receives the brachialis. The biceps ends on the radial tuberosity; triceps on the olecranon.', 'Lesson: Thoracic limb bones', NULL, 'generated', 4, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The biceps brachii', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The brachialis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The triceps brachii', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The brachioradialis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The coracobrachialis', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the distal epiphysis of the ulna:', 'The ulna does not articulate directly with the carpus: the radioulnar articular disc is interposed. Also false: "The ulnar styloid process is a large anterolateral projection"; "The ulnar styloid process gives attachment to the radial collateral ligament of the carpus".', 'Lesson: Thoracic limb bones', NULL, 'generated', 4, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ulnar head articulates with the radioulnar articular disc', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The ulnar styloid process is a large anterolateral projection', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The ulnar head articulates directly with the lunate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The ulnar styloid process gives attachment to the radial collateral ligament of the carpus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ulnar head articulates with the ulnar notch of the radius', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the proximal epiphysis of the radius:', 'The radial articular fossa (superior, concave) faces the capitulum and the capitulo-trochlear zone; the peripheral articular circumference faces the radial notch of the ulna and the annular ligament. The radial tuberosity receives the biceps brachii, not the brachialis.', 'Lesson: Thoracic limb bones', NULL, 'generated', 5, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The articular circumference articulates with the radial notch of the ulna and the annular ligament', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The radial articular fossa articulates with the radial notch of the ulna', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The articular circumference articulates with the capitulum', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The radial articular fossa is superior and concave', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The radial tuberosity receives the termination of the brachialis', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the distal epiphysis of the radius:', 'It is the posterior surface that is furrowed (2 grooves, 7 tendons); the lateral surface''s styloid is bordered by 2 grooves for 3 tendons. Also false: "Its anterior surface has two grooves for seven tendons"; "Its lateral surface carries the ulnar notch".', 'Lesson: Thoracic limb bones', NULL, 'generated', 5, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its lateral surface extends down as the radial styloid process', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a quadrangular pyramid with an inferior base', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its lateral surface carries the ulnar notch', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its posterior surface is smooth', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its anterior surface has two grooves for seven tendons', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which carpal bones form the proximal row (from lateral to medial)?', 'Proximal row: scaphoid, lunate, triquetrum, pisiform. Distal row: trapezium, trapezoid, capitate, hamate.', 'Lesson: Thoracic limb bones', NULL, 'generated', 5, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Scaphoid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Pisiform', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Trapezium', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lunate', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Triquetrum', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'This palmar view of a right carpus shows the carpal bones numbered 1 to 8. Which identifications are correct?', 'Proximal row lateral→medial: 1 scaphoid, 2 lunate, 3 triquetrum, 4 pisiform. Distal row: 5 trapezium, 6 trapezoid, 7 capitate, 8 hamate.', 'Lesson: Thoracic limb bones', 's1/lessons/thoracic-limb-bones-g1.png', 'generated', 5, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7 is the hamate', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1 is the scaphoid', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4 is the pisiform', 1),
  ((SELECT MAX(id) FROM questions), 'D', '5 is the trapezoid', 0),
  ((SELECT MAX(id) FROM questions), 'E', '2 is the lunate', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The carpal tunnel:', 'The anterior (palmar) face of the carpus is concave (carpal groove); with the flexor retinaculum it forms the carpal tunnel for the median nerve and tendons.', 'Lesson: Thoracic limb bones', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gives passage to muscle tendons', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is on the posterior face of the carpus', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Gives passage to the radial nerve', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is formed by the carpal groove completed by the flexor retinaculum', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Gives passage to the median nerve', 1);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the metacarpus and phalanges:', '5 metacarpals numbered I to V from outside to inside; 14 phalanges: 2 for the thumb (P1, P2) and 3 for each other finger (P1, P2, P3).', 'Lesson: Thoracic limb bones', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'There are 5 metacarpals numbered I to V from lateral to medial', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'There are 14 phalanges', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The thumb has 2 phalanges', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The thumb has 3 phalanges', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Each of the last four fingers has a proximal, an intermediate and a distal phalanx', 1);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the humeral head and the intertubercular groove:', 'The anatomical neck separates the head from the two tubercles; it is the surgical neck that separates the proximal epiphysis from the diaphysis. The osteofibrous tunnel carries the tendon of the long head of biceps.', 'Lesson: Thoracic limb bones', NULL, 'generated', 3, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Thoracic limb bones'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The humeral head represents 1/3 of a sphere with a radius of 30 mm', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The axis of the head forms an angle of inclination of 130° with that of the diaphysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The head articulates with the glenoid cavity of the scapula', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The anatomical neck separates the head from the diaphysis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Covered by the transverse humeral ligament, the intertubercular groove becomes an osteofibrous tunnel', 1);
