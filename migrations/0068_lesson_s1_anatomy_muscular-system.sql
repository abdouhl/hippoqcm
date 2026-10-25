-- Generated from data/lessons/s1-anatomy-muscular-system.json — lesson "Muscular system": 8 exam + 20 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Muscular system', 's1/anatomy/muscular-system.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q39',
    'EMD1 2023-2024 Q40',
    'EMD1 2024-2025 Q23',
    'EMD1 2024-2025 Q24',
    'EMD1 2024-2025 Q25',
    'EMD1 2025-2026 Q20',
    'EMD1 2025-2026 Q21',
    'EMD1 2025-2026 Q22'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About muscle in general:', 'Stimuli can be nervous, electrical, thermal, painful, etc. Osteology is the study of the skeleton.', 'Lesson: Muscular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It can only be stimulated by a nervous excitation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It contracts (shortens) under the influence of a stimulus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the driving element of the locomotor apparatus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The study of muscles is called myology', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The study of muscles is called osteology', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are roles of the muscular system?', 'Roles: movement, thermogenesis, posture, joint stabilization, protection of viscera, visceral functions (digestion, urination, blood propulsion, childbirth…). Calcium storage and blood cell production are roles of bone.', 'Lesson: Muscular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Childbirth and blood propulsion', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Maintaining posture', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Storage of calcium salts', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Protection of the viscera', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Production of blood cells', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Muscle tone (tonicity):', 'The ability to stretch without tearing is elasticity, a different property. Also false: "Persists when lying down"; "Is maximal in coma".', 'Lesson: Muscular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Allows balance to be maintained at rest (posture)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the ability to stretch without tearing', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is maximal in coma', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Persists when lying down', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is the ability to maintain a slight permanent contraction despite relaxation', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A muscle that stretches during passive movement of a joint without being torn is showing which property?', 'Elasticity is the ability to stretch without tearing. Rigidity is not a muscle property.', 'Lesson: Muscular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Excitability', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Tonicity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Elasticity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Rigidity', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Contractility', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Skeletal muscle:', 'Skeletal muscle fatigues fast; cardiac and visceral muscles never fatigue. Also false: "Has a slow, continuous contraction"; "Is controlled by the autonomic nervous system".', 'Lesson: Muscular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Never fatigues', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has a slow, continuous contraction', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is controlled by the autonomic nervous system', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is voluntary', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is also called striated or red muscle', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Cardiac muscle (myocardium):', 'Cardiac muscle is controlled by the autonomic nervous system and never fatigues.', 'Lesson: Muscular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Fatigues quickly', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is classified as a mixed muscle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is controlled by the central nervous system', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is made of striated cells', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Is involuntary, automatic and rhythmic', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Visceral (smooth) muscle:', 'Muscles attached to the skeleton are skeletal (striated) muscles. Also false: "Is made of striated cells"; "Has a fast, rhythmic contraction".', 'Lesson: Muscular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is attached to the skeleton', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is made of striated cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is controlled by the autonomic nervous system', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Has a fast, rhythmic contraction', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is found in the walls of hollow viscera and vessels', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which muscle type is striated but involuntary?', 'Cardiac muscle has striated cells but is involuntary and automatic. Skeletal is striated and voluntary; visceral is smooth and involuntary.', 'Lesson: Muscular system', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Skeletal muscle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cardiac muscle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Visceral muscle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The muscles of the limbs', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Smooth muscle of vessels', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the number of skeletal muscles:', '600 constant skeletal muscles, plus inconstant accessory muscles such as the plantaris. 206 is the number of bones.', 'Lesson: Muscular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'There are about 600 constant skeletal muscles', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The plantaris muscle is an example of an inconstant muscle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'There are exactly 206 skeletal muscles', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Their number varies because of inconstant (accessory) muscles', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The number of skeletal muscles never varies', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Superficial (supra-aponeurotic) muscles:', 'Superficial muscles are subcutaneous (facial muscles). Muscles of the digestive/respiratory systems, skeleton and sense organs are deep (sub-aponeurotic).', 'Lesson: Muscular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are located deep to the aponeurosis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Include the facial (cutaneous) muscles', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Include the muscles of the digestive and respiratory systems', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Include the muscles of the sensory organs', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Are subcutaneous', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the parts of a simple (monogastric) muscle:', 'A simple muscle has one belly (contractile) and two tendons. Two bellies with an intermediate tendon is a digastric muscle.', 'Lesson: Muscular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It has a single belly between two tendons', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The tendons are the contractile part', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The tendons are narrow, whitish, elastic and resistant', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It has two bellies and one intermediate tendon', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The belly is large, red, fleshy and contractile', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the muscle variety with its example:', 'Rectus abdominis has several bellies in series with intermediate tendons (multigastric), not two parallel bellies (bifid). Also false: "Bifid muscle: the quadriceps femoris"; "Multifid muscle: the digastric muscle".', 'Lesson: Muscular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Bifid muscle: the rectus abdominis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Digastric muscle: the digastric muscle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Bifid muscle: the quadriceps femoris', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Multifid muscle: the digastric muscle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Multigastric muscle: the rectus abdominis', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A muscle with several bellies arranged in parallel, whose parallel tendons are called heads, is:', 'Multifid = several parallel bellies (e.g. quadriceps femoris). Bifid has two parallel bellies; multigastric has bellies in series.', 'Lesson: Muscular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A bifid muscle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A digastric muscle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An annular muscle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A multigastric muscle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A multifid muscle', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About muscle insertions:', 'The palmaris brevis is the example of a skin (cutaneous) insertion; bony insertion example: iliopsoas. Also false: "The origin is usually distal and mobile"; "The cricothyroid has a skin insertion".', 'Lesson: Muscular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The origin can sometimes become mobile', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The origin is usually distal and mobile', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The termination is usually distal and mobile', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The cricothyroid has a skin insertion', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The palmaris brevis has a bony insertion', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which muscle is given as the example of an aponeurotic insertion?', 'Bone: iliopsoas; cartilage: cricothyroid; aponeurosis: abductor hallucis; skin: palmaris brevis.', 'Lesson: Muscular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The iliopsoas', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The palmaris brevis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The sartorius', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The abductor hallucis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The cricothyroid', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the muscle shape with its example:', 'Short muscles are those of the hypothenar compartment; geometric muscles are the trapezius, pronator quadratus and depressor anguli oris.', 'Lesson: Muscular system', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Short muscle: the trapezius', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Long muscle: the sartorius', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Flat muscle: the latissimus dorsi', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Geometric muscle: the muscles of the hypothenar compartment', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Annular muscle: the orbicularis oris', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Muscle nomenclature: match the criterion with the muscle name:', 'Rectus abdominis and internal oblique are named after the direction of their fibres. Form: piriformis, quadratus plantaris; size: gluteus maximus, pectoralis minor.', 'Lesson: Muscular system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Action criterion: supinator muscle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Insertion criterion: coracobrachialis muscle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Size criterion: internal oblique muscle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Form criterion: rectus abdominis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Number of heads criterion: triceps brachii', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the muscle appendices:', 'There are four appendices: serous bursae, tendinous serous sheaths, fibrous sheaths and muscular fascia. Also false: "Tendinous serous sheaths are fibrous grooves forming osteofibrous canals"; "Fibrous sheaths are sacs filled with synovial fluid".', 'Lesson: Muscular system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'There are seven muscle appendices', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Fibrous sheaths are sacs filled with synovial fluid', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Tendinous serous sheaths are fibrous grooves forming osteofibrous canals', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Serous (synovial) bursae are sacs filled with synovial fluid near joints that facilitate gliding', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The muscular fascia encases and separates the muscles', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About muscle exploration methods shown in the course:', 'Muscle testing is scored from 0 to 5.', 'Lesson: Muscular system', NULL, 'generated', 68);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The electromyogram (EMG) records the electrical activity of the muscle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'CT and MRI can show the muscles of the thigh', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A muscle biopsy is a muscle sample', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Muscle testing is scored from 0 to 10', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Muscle testing assesses the strength of a muscle on a scale from 0 to 5', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the muscle pathology with its definition:', 'Tenosynovitis is inflammation of the synovial sheaths of tendons. Compartment syndrome is muscle ischemia from increased pressure in a compartment; rupture after excessive stretching is a tear (claquage).', 'Lesson: Muscular system', NULL, 'generated', 75);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Muscular system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cramp: sudden, involuntary, painful and transient contraction that stops spontaneously', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Bursitis: inflammation of the serous bursae', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Compartment syndrome: rupture of a muscle after excessive stretching', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Tenosynovitis: inflammation of the muscular fascia', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Contracture: involuntary, painful and permanent contraction (e.g. torticollis)', 1);
