-- Generated from data/lessons/s1-anatomy-anatomical-language.json — lesson "Anatomical language": 12 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Anatomical language', 's1/anatomy/anatomical-language.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q1',
    'EMD1 2023-2024 Q2',
    'EMD1 2023-2024 Q3',
    'EMD1 2023-2024 Q5',
    'EMD1 2024-2025 Q2',
    'EMD1 2024-2025 Q3',
    'EMD1 2024-2025 Q4',
    'EMD1 2024-2025 Q5',
    'EMD1 2025-2026 Q2',
    'EMD1 2025-2026 Q3',
    'EMD1 2025-2026 Q4',
    'EMD1 2025-2026 Q5'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The Nomina Anatomica (NA):', 'The NA is an international Latin nomenclature (adopted in Paris, 1955) referring to the reference anatomical position, with 3 axes, 3 planes and dynamic reference points.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Defines 2 axes and 2 planes of reference', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Relates to a well-defined position of the human body', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a national French nomenclature', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Was adopted by an international agreement in Paris', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is written in Latin', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'In the reference anatomical position, the subject is:', 'Reference position: living, upright body, upper limbs hanging along the trunk, palms facing forward, gaze straight and horizontal, legs extended, feet together on the ground.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'With the legs extended and the feet together on the ground', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Upright, with the upper limbs hanging along the trunk', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'With the gaze straight and horizontal', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'With the palms facing backward', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A living human body, lying supine', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'An anatomy drawing shows a subject standing with the palms facing the thighs (thumbs forward). Compared with the reference anatomical position, what is wrong?', 'In the reference position the palms face forward (anteriorly). Palms facing inward is a classic exam distractor.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The gaze should be directed upward', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The upper limbs should be raised horizontally', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The palms should face forward', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Nothing, palms facing medially is the reference position', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The subject should be lying down', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the reference axes:', 'The hand axis is longitudinal through the 3rd finger; the foot axis is longitudinal through the 2nd toe, not the 3rd.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The body axis is a vertical line dropped from the top of the skull (vertex)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The axis of the foot passes through the 3rd toe', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The axis of the hand passes through the 3rd finger', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The axis of the hand is a transverse axis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The body axis passes through the centre of gravity, located at the level of the pelvis', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Through which digit does the reference axis of the foot pass?', 'The foot axis is the longitudinal axis passing through the 2nd toe (the hand axis passes through the 3rd finger).', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The 1st toe', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The 2nd toe', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The 3rd toe', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The 4th toe', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The 5th toe', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The frontal (coronal) plane:', 'The frontal plane is vertical, parallel to the forehead, and separates anterior from posterior; abduction/adduction occur in it around a sagittal axis. Right/left = median sagittal plane; parallel to the ground = transverse plane.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is parallel to the ground', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the plane in which abduction and adduction take place', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Divides the body into anterior and posterior parts', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a vertical plane parallel to the forehead', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Divides the body into right and left parts', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The median sagittal plane:', 'The median sagittal plane passes through the midline giving symmetrical right and left halves. Medial/lateral (asymmetrical) parts are produced by a paramedian sagittal plane.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Divides the body into two symmetrical parts, right and left', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Passes through the midline', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is vertical and anteroposterior', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Divides the body into medial and lateral parts', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is parallel to the ground', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The transverse plane is also called:', 'The transverse plane is the horizontal or axial plane, parallel to the ground, dividing the body into superior (cranial) and inferior (caudal) parts. Coronal = frontal plane.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The frontal plane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The horizontal plane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The paramedian plane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The coronal plane', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The axial plane', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Flexion and extension are performed:', 'Flexion (forward) and extension (backward) occur around a transverse axis in a sagittal plane.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Around a sagittal axis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Around a transverse axis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'In a sagittal plane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Around a vertical axis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'In a frontal plane', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Abduction:', 'Abduction moves a segment away from the median plane (adduction brings it closer); both occur around a sagittal axis in a frontal plane.', 'Lesson: Anatomical language', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Moves a part of the body away from the median plane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is performed in a frontal plane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is performed in a transverse plane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is performed around a sagittal axis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Brings a part of the body closer to the median plane', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Lateral (external) rotation is:', 'Lateral rotation goes from inside to outside (medial rotation from outside to inside); rotations occur around a vertical axis in a transverse plane.', 'Lesson: Anatomical language', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A rotary movement from inside to outside', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Performed in a transverse plane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A rotary movement from outside to inside', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Performed around a vertical axis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Performed in a sagittal plane', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About location and direction terms:', 'Ipsilateral = same side (contralateral = different sides). Internal = facing the inside of a cavity or organ; close to the surface is superficial.', 'Lesson: Anatomical language', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Medial means near the median sagittal plane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Internal means close to the surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Caudal is a synonym of inferior', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ipsilateral means belonging to two different sides', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Proximal means close to the root of the limb', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following terms are synonyms of "superior"?', 'Superior = cranial = cephalic (near the upper end). Caudal = inferior; dorsal = posterior; proximal = close to the root of a limb.', 'Lesson: Anatomical language', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Caudal', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Proximal', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cephalic', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Dorsal', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Cranial', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the levels of structural organization of the human body:', 'The definitions are inverted in the last two: a system groups structurally similar organs (skeletal system, CNS), while an apparatus groups dissimilar organs for one function (digestive, circulatory).', 'Lesson: Anatomical language', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The cell is the basic structural and functional unit', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'An organ brings together different tissues for a specific function, e.g. liver', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A system is a set of dissimilar organs participating in the same function', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A tissue is a group of cells playing a homologous role, e.g. bone tissue', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'An apparatus is a set of structurally comparable organs, e.g. the skeletal system', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following belong to the apparatuses of relational life?', 'Relational life: locomotor (skeletal, articular, muscular systems), nervous and sensory apparatus. Circulatory and endocrine belong to the nutrition apparatuses.', 'Lesson: Anatomical language', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The endocrine system', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The nervous apparatus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The sensory apparatus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The circulatory apparatus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The locomotor apparatus', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The locomotor apparatus includes:', 'The locomotor apparatus groups the skeletal, articular and muscular systems; the peripheral nervous system belongs to the nervous apparatus.', 'Lesson: Anatomical language', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The sensory organs', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The skeletal system', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The articular system', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The peripheral nervous system', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The muscular system', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the topographical organization of the human body:', 'The limbs are extensions of the trunk formed by bones, joints, muscles, vessels and nerves, not viscera.', 'Lesson: Anatomical language', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The neck is a passageway for visceral, vascular and nervous elements', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The head contains the initial segments of the digestive and respiratory systems', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The limbs are formed essentially by viscera', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The trunk contains the thoracic cavity above and the abdominopelvic cavity below', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The shape of the body is determined by the osteo-cartilaginous skeleton', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The image shows three sections of the head (1, 2, 3 from left to right). In which planes were they cut?', 'Section 1 shows both hemispheres from the front (frontal plane), section 2 cuts the head into right/left halves through the midline (median sagittal), and section 3 is parallel to the ground through the eyes (transverse/axial).', 'Lesson: Anatomical language', 's1/lessons/anatomical-language-g1.png', 'generated', 23);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Anatomical language'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2 is a median sagittal section', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1 is a transverse section', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1 is a frontal (coronal) section', 1),
  ((SELECT MAX(id) FROM questions), 'D', '2 is a frontal section', 0),
  ((SELECT MAX(id) FROM questions), 'E', '3 is a transverse (axial) section', 1);
