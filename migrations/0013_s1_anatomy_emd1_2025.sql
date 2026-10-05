-- Generated from data/s1-anatomy-emd1-2025.json — 32 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Anatomy is divided into several branches to study the systems, apparatuses and organs of the human body. Which of the following correspond to descriptive anatomy?', NULL, 'EMD1 2024-2025 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The study of the location of organs', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The analytical study of the morphology of separate organs', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The study of the relations of organs', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The basis of anatomy', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The basis of surgery', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The anatomical reference position is the position on which all anatomical descriptions are based. Which of the following correspond to it?', NULL, 'EMD1 2024-2025 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A living adult, standing', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Palms of the hands facing forward', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Legs flexed', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Gaze horizontal', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Feet apart, placed on the ground', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The paramedian sagittal plane is an anteroposterior anatomical plane that divides the body into two parts. What are its characteristics?', NULL, 'EMD1 2024-2025 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is symmetrical', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is asymmetrical', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It divides the body into right and left parts', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It divides the body into medial and lateral parts', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It is vertical', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'For descriptive, topographic and functional anatomy we use reference axes: the body axis, the hand axis and the foot axis. What are the characteristics of the body axis?', NULL, 'EMD1 2024-2025 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A transverse line', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A line dropped from the vertex', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A line dropped from the shoulder', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A line passing through the umbilicus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A line passing through the body''s center of gravity', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Flexion is a movement that brings a part of the body forward. What are its axis and plane?', NULL, 'EMD1 2024-2025 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A transverse axis and a sagittal plane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A sagittal axis and a frontal plane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A vertical axis and a transverse plane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A vertical axis and a sagittal plane', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A transverse axis and a frontal plane', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Cartilage belongs to the skeletal system and makes up most of the fetal skeleton. What are the characteristics of fibrous cartilage (fibrocartilage)?', NULL, 'EMD1 2024-2025 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is rich in elastic fibers', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is rich in collagen fibers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It forms the articular adaptation structures of joints', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is devoid of nerves', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It has blood vessels', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The human skeleton has two parts: an axial skeleton and an appendicular skeleton. Which of the following bones belong to the axial skeleton?', NULL, 'EMD1 2024-2025 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The femur', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The hyoid bone', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The ulna', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The sternum', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The rib', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The bone surface has articular and non-articular cavities; the latter give passage or attachment to anatomical elements. Which of the following correspond to non-articular cavities?', NULL, 'EMD1 2024-2025 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A tubercle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A fossa (small pit)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A groove (sulcus)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A crest', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A notch (incisure)', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bone is a dense, solid specialized connective tissue rich in calcium phosphate and carbonate, made of compact and spongy bone. What are the characteristics of compact bone?', NULL, 'EMD1 2024-2025 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is made of osteons', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is made of bony trabeculae', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is made of interstitial lamellae', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is epiphyseal', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It is diaphyseal', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The hip bone belongs to the pelvic girdle and is formed embryologically by the junction of 3 bony pieces: ilium, ischium and pubis. Which of the following belong to its medial surface?', NULL, 'EMD1 2024-2025 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pecten pubis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The anterior gluteal line', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The obturator groove', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The arcuate line', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The gluteal surface', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The hip bone has 4 borders: superior, inferior, anterior and posterior. Which of the following belong to its posterior border?', NULL, 'EMD1 2024-2025 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The greater sciatic notch', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The lesser sciatic notch', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The innominate notch', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The iliopectineal (iliopubic) eminence', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ischial spine', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The tibial plateau is the base of the proximal epiphysis of the tibia and articulates with the femoral condyles. Which anatomical elements make it up?', NULL, 'EMD1 2024-2025 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The medial superior tibial articular surface', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The anterior tibial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The posterior intercondylar area', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The intercondylar tubercles', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The medial tibial tuberosity', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The distal epiphysis of the tibia articulates below with the talus. Which are the articular surfaces of this epiphysis?', NULL, 'EMD1 2024-2025 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The medial superior tibial articular surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The inferior tibial articular surface', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The articular surface of the medial malleolus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The articular surface of the lateral malleolus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The lateral superior tibial articular surface', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The proximal femoral epiphysis has a femoral head, a greater trochanter, a lesser trochanter and a neck. Which of the following correspond to the greater trochanter?', NULL, 'EMD1 2024-2025 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A lateral quadrangular projection', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A medial quadrangular projection', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A rounded projection', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The trochanteric fossa', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The fovea capitis', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The distal epiphysis of the femur articulates with the patella and the tibial plateau. Which are the articular surfaces of this epiphysis?', NULL, 'EMD1 2024-2025 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The lateral femoral condyle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The patellar articular surface of the femur', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The intercondylar fossa', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The medial femoral epicondyle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The posterior surface of the patella', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radio-ulnar articular disc:', NULL, 'EMD1 2024-2025 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a triangular ligament spreading horizontally', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Occupies the lateral third of the antebrachial articular surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is covered with cartilage on its 2 surfaces, superior and inferior', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Gives attachment to the articular capsule on its 2 borders, anterior and posterior', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Attaches laterally to the ulnar styloid process', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Among the passive ligaments of the radiocarpal joint, which attach to the capitate?', NULL, 'EMD1 2024-2025 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The palmar radiocarpal ligament', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The palmar ulnocarpal ligament', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The dorsal radiocarpal ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The radial collateral ligament of the carpus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ulnar collateral ligament of the carpus', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The lateral ligament of the talocrural (ankle) joint:', NULL, 'EMD1 2024-2025 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the strongest', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is made of 3 bundles', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Extends from the lateral malleolus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ends on the talus and the navicular bone', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Can be injured in common ankle sprains', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scapulohumeral joint is the proximal joint of the upper (thoracic) limb. It is a joint that is:', NULL, 'EMD1 2024-2025 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'True and accessory', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Mobile, of the spheroid type', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Not very mobile and rather fragile', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Very mobile and very stable', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Very mobile but unstable', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synarthroses are immobile joints in which the bony surfaces are united by connective tissue:', NULL, 'EMD1 2024-2025 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The articular surfaces are covered with articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The sutures of the skull are synfibroses', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A gomphosis is the joint that unites a tooth to its dental socket', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Synarthroses are temporary joints during growth', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Syndesmoses unite articular surfaces very close to each other', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synovial joints are mobile joints making up most limb joints. They are characterized by:', NULL, 'EMD1 2024-2025 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Epiphyseal articular surfaces of variable shape, covered with hyaline cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The synovial membrane, lining the inner surface of the capsule, is richly vascularized and innervated', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ligaments are the active stabilizers of a joint', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Hyaline cartilage has a constant thickness in all joints', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Tendons of periarticular muscles are passive stabilizers of the joint', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Articular adaptation structures are fibrocartilaginous structures interposed between the articular surfaces:', NULL, 'EMD1 2024-2025 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are of three types: labrum, meniscus and disc', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are richly innervated and vascularized', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They are devoid of vessels and nerves', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The menisci are fibrocartilages of the elbow', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A tear of a fibrocartilage can heal', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Muscles are organs that can contract under a stimulus; they are divided into three groups: striated, smooth and mixed. Striated muscles are:', NULL, 'EMD1 2024-2025 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Visceral muscles', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Skeletal muscles', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Made of non-elongated cells', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Made of elongated cells', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Attached to the skeleton', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Smooth muscles are:', NULL, 'EMD1 2024-2025 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Under control of the voluntary nervous system', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Under control of the autonomic (neurovegetative) nervous system', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Located in the viscera', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Located in the arm', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Located in the neck', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Among the mixed muscles:', NULL, 'EMD1 2024-2025 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The broad muscles of the abdomen', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The myocardium', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The muscles of hearing (middle ear)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The muscles of the eye', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The diaphragm', 1);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scapula is a flat triangular bone applied to the postero-superior part of the thorax. It has three borders:', NULL, 'EMD1 2024-2025 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The spinal superior border', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The cervical superior border', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The spinal lateral border', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The axillary lateral border', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The medial border, the thickest', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Among the elements of the supero-lateral angle of the scapula:', NULL, 'EMD1 2024-2025 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The glenoid cavity', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The neck of the scapula', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The pillar of the scapula', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The coracoid notch', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The coracoid process', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The ulna is a long, paired bone forming the medial part of the forearm skeleton. Its proximal epiphysis shows:', NULL, 'EMD1 2024-2025 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The olecranon, a horizontal and anterior process', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The olecranon, a vertical and posterior process', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The coronoid process, which is horizontal and anterior', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The coronoid process, which is vertical and posterior', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The radial notch on its medial surface', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radius is a long, paired bone forming the lateral part of the forearm skeleton. Its proximal epiphysis has the radial head, made up of:', NULL, 'EMD1 2024-2025 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The radial cupula (fovea), its superior surface', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The articular circumference, called the fovea', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The radial cupula, which is the rim of the radial head', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The articular circumference, which is the rim of the radial head', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The radial tuberosity, called the bicipital tuberosity', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radial head:', NULL, 'EMD1 2024-2025 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The radial cupula articulates with the ulna', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The articular circumference articulates with the capitulum', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The radial cupula articulates with the capitulum', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The articular circumference articulates with the ulna', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The radial cupula articulates with the carpus', 0);

-- Q31
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The distal end of the radius has five surfaces. Which statements are correct?', NULL, 'EMD1 2024-2025 Q31', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ventral surface is hollowed by grooves', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The ventral surface is smooth', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The dorsal surface is hollowed by grooves', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The inferior surface is articular and triangular', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The inferior surface has an articular surface with the ulna called the ulnar notch', 0);

-- Q32
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scaphoid bone is a bone:', NULL, 'EMD1 2024-2025 Q32', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Of the carpus', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Of the metacarpus', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Of the first (proximal) row', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Of the second (distal) row', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The first one, located medially', 0);
