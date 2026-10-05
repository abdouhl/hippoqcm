-- Generated from data/s1-anatomy-emd1-2026.json — 40 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'To study the human body, we use several branches of anatomy. Which of the following correspond to topographical anatomy?', NULL, 'EMD1 2025-2026 Q1');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The study of morphological variations in human races', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The analytical study of the morphology of separate organs', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The study of the relations of the organs', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The basics of anatomy', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The basis of surgery', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'For the study of the descriptive, topographic, and functional anatomy of the human body, we use the following reference axes: the body axis, the hand axis, and the foot axis. What are the characteristics of the body axis?', NULL, 'EMD1 2025-2026 Q2');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A transverse axis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A longitudinal axis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'An axis that passes through the center of gravity of the body', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A lowered vertex axis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'A lowered shoulder axis', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The transverse plane is a reference anatomical plane that divides the body into two parts. What are its characteristics?', NULL, 'EMD1 2025-2026 Q3');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is parallel to the ground', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is perpendicular to the ground', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It divides the body into two parts: right and left', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It divides the body into two parts: cranial and caudal', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It is vertical', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Dynamic coordinate systems indicate the direction of movement; each movement occurs in a plane relative to an axis. What is the axis and what is the plane of medial rotation?', NULL, 'EMD1 2025-2026 Q4');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A transverse axis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A vertical axis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A transverse (cross-sectional) plane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A sagittal plane', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A frontal plane', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The systems of the human body are grouped into three main categories: the life and relationship system, the reproductive system, and the nutrition system. What are the nutrition systems?', NULL, 'EMD1 2025-2026 Q5');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The digestive system', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The female reproductive system', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The nervous system', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The urinary system', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The locomotor system', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Cartilage is a strong yet elastic tissue. It lacks blood vessels and is classified into three types. What are the characteristics of hyaline cartilage?', NULL, 'EMD1 2025-2026 Q6');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It constitutes the means of joint adaptation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It covers the joint surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is translucent and glassy', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is yellowish in color', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It is nerveless', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bones are rigid, hard structures in the human body and make up the human skeleton. What are the characteristics of the appendicular skeleton?', NULL, 'EMD1 2025-2026 Q7');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is asymmetrical', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is symmetrical', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is made up of the spine', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It attaches to the axial skeleton', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It is made up of the skeleton of the thoracic limb', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The surface of bones is irregular, with cavities and projections that can be articular or non-articular. Which of the following correspond to non-articular projections?', NULL, 'EMD1 2025-2026 Q8');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A process', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A foramen', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A ridge', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A spine', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'A notch', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The hip bone (os coxae) is a bone that makes up the bony pelvis and is embryologically formed by the joining of three bony parts: the ilium, ischium, and pubis. Which of the following correspond to its lateral surface?', NULL, 'EMD1 2025-2026 Q9');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pecten of the pubis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The posterior gluteal line', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The obturator groove', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The acetabular limbus', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The gluteal surface', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The bony pelvis is divided into two sections by the pelvic inlet: the greater pelvis and the lesser pelvis. Which of the following represent the boundaries of this pelvic inlet?', NULL, 'EMD1 2025-2026 Q10');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Behind, the promontory of the sacrum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In front, the ischial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Laterally, the arcuate lines of the hip bones', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In front, the pubic symphysis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Behind, the coccyx', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The femoral head is a spheroid articular projection located at the proximal epiphysis. Which of the following are the characteristics of this femoral head?', NULL, 'EMD1 2025-2026 Q11');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is covered with fibrous cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It represents 1/3 of a sphere', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It represents 2/3 of a sphere', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It presents the fovea capitis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It presents the intertrochanteric line', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The axis of the femoral neck forms an angle of inclination of 125° to 130° with that of the diaphysis. Which of the following angles corresponds to coxa valga?', NULL, 'EMD1 2025-2026 Q12');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '100°', 0),
  ((SELECT MAX(id) FROM questions), 'B', '110°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '120°', 0),
  ((SELECT MAX(id) FROM questions), 'D', '130°', 0),
  ((SELECT MAX(id) FROM questions), 'E', '140°', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The tibial plateau represents the base of the proximal epiphysis of the tibia and it articulates with the femoral condyles. Which of the following anatomical elements constitute it?', NULL, 'EMD1 2025-2026 Q13');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The anterior tibial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The superior lateral tibial articular surface', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The posterior intercondylar area', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The anterior intercondylar area', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The anterior tibial tuberosity', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The distal epiphysis of the tibia articulates inferiorly with the talus. Which of the following are the articular surfaces of this epiphysis?', NULL, 'EMD1 2025-2026 Q14');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The inferior tibial articular surface', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The medial superior tibial articular surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The superior lateral tibial articular surface', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The articular surface of the medial malleolus', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The articular surface of the lateral malleolus', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The proximal tibial epiphysis is a quadrangular pyramid with a base and four faces, each with several tuberosities. What are the tuberosities of this proximal epiphysis?', NULL, 'EMD1 2025-2026 Q15');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The anterior tibial tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The posterior tibial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The lateral tibial tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The medial tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The inferior tibial tuberosity', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Flexion and extension of the hip joint occur around a transverse axis that passes through the center of the femoral head. What is the range of motion of the hip joint with the knee extended?', NULL, 'EMD1 2025-2026 Q16');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '90°', 1),
  ((SELECT MAX(id) FROM questions), 'B', '100°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '110°', 0),
  ((SELECT MAX(id) FROM questions), 'D', '120°', 0),
  ((SELECT MAX(id) FROM questions), 'E', '130°', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The knee joint is a weight-bearing joint equipped with ligaments and tendons that provide the stability necessary for standing and walking. What joints make it up?', NULL, 'EMD1 2025-2026 Q17');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The patellofemoral joint', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The femorotibial joint', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The tibiopatellar joint', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The proximal tibiofibular joint', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The distal tibiofibular joint', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The knee joint is a weight-bearing joint. It is equipped with ligaments and tendons that provide the stability necessary for standing and walking. The central pivot is a strong ligament of this joint. What are its characteristics?', NULL, 'EMD1 2025-2026 Q18');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is made up of the cruciate ligaments', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is made up of the collateral ligaments', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is made up of the patellar ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It ensures the anteroposterior stability of the knee', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It ensures lateral stability of the knee', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Knee flexion is the act of bringing the back of the leg towards the back of the thigh. What is the range of passive flexion for a flexed hip?', NULL, 'EMD1 2025-2026 Q19');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '120°', 0),
  ((SELECT MAX(id) FROM questions), 'B', '130°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '140°', 0),
  ((SELECT MAX(id) FROM questions), 'D', '150°', 0),
  ((SELECT MAX(id) FROM questions), 'E', '160°', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The subaponeurotic skeletal muscle:', NULL, 'EMD1 2025-2026 Q20');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a subcutaneous muscle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a deep muscle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a muscle located between the fascia and the skin', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is a muscle found in the pharynx and larynx', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It is an involuntary muscle with rapid contractions', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'From an insertion point perspective, a skeletal muscle:', NULL, 'EMD1 2025-2026 Q21');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Must have a starting point (usually fixed) and an ending point (usually mobile)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It can be inserted onto the skin, like the palmaris brevis muscle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It can attach to the fascia, like the cricothyroid muscle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It can insert onto cartilage, like the abductor hallucis muscle', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It can attach to the bone, like the brachioradialis muscle', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The muscular fascia:', NULL, 'EMD1 2025-2026 Q22');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is also called the covering aponeurosis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a fibrous groove delimiting the osteofibrous canals with the bone', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Sheathes the muscles', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Separates the muscles', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Facilitates muscle gliding', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The inferior surface of the clavicle presents:', NULL, 'EMD1 2025-2026 Q23');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The groove of the subclavius muscle, in the middle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The acromial articular surface, laterally', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The costal tuberosity, medially', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The trapezoid line, which gives attachment to the ligament of the same name', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The conoid tubercle, where the conoid ligament attaches', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The lateral angle of the scapula supports several anatomical structures such as:', NULL, 'EMD1 2025-2026 Q24');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The neck of the scapula which supports the coracoid process', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The coracoid process which gives attachment to the coracoclavicular ligament', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The supraglenoid tubercle, which provides insertion for the triceps brachii muscle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The scapular notch where the suprascapular artery and nerve pass', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The glenoid cavity which faces laterally', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Among the protrusions (projections) of the diaphysis of the humerus, the following are mentioned:', NULL, 'EMD1 2025-2026 Q25');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The crest of the lesser tubercle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The deltoid tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The radial nerve groove', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The crest of the greater tubercle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The medial epicondyle', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The medial border of the radius:', NULL, 'EMD1 2025-2026 Q26');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is also called the interosseous border', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Separates the two surfaces, anterior and lateral, of the radius', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It continues on both epiphyses of the radius', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Faces the lateral border of the ulna', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Provides attachment to the forearm interosseous membrane', 1);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The coronoid process of the ulna bears the following anatomical structures:', NULL, 'EMD1 2025-2026 Q27');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The trochlear notch (upper part)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The radial notch', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The ulnar notch', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The ulnar styloid process', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ulnar tuberosity', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Among the carpal bones, the following are mentioned:', NULL, 'EMD1 2025-2026 Q28');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The scaphoid bone located laterally on the proximal row', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The trapezoid bone belongs to the proximal row', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The pisiform bone which articulates with the lunate bone', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The capitate bone is located in the middle of the proximal row', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The hamate bone is located medially on the distal row', 1);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The wrist is composed of the following joints:', NULL, 'EMD1 2025-2026 Q29');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The distal radioulnar joint', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The radiocarpal joint', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The mid-carpal joint', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The proximal intercarpal joints', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The distal intercarpal joints', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The antebrachial articular surface of the radiocarpal joint:', NULL, 'EMD1 2025-2026 Q30');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a convex elliptical surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It has a major transverse axis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is formed of two parts: the carpal articular surface of the radius, and the radioulnar articular disc', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is divided into three thirds: 1/3 lateral and 2/3 medial', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It articulates with the four carpal bones of the proximal row', 0);

-- Q31
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which passive ligaments of the radiocarpal joint terminate on the lunate?', NULL, 'EMD1 2025-2026 Q31');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The palmar radiocarpal ligament', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The palmar ulnocarpal ligament', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The dorsal radiocarpal ligament', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The radial collateral ligament of the carpus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ulnar collateral ligament of the carpus', 0);

-- Q32
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The forefoot is composed of the following joints:', NULL, 'EMD1 2025-2026 Q32');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The tarsometatarsal joints', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The intermetatarsal joints', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The metatarsophalangeal joints', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The transverse tarsal joint', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The interphalangeal joints of the foot', 1);

-- Q33
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The eversion movement of the foot is the result of the combination of three foot movements. Which ones?', NULL, 'EMD1 2025-2026 Q33');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Elevation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Extension', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Abduction', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pronation', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Supination', 0);

-- Q34
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The trochlea of the talus:', NULL, 'EMD1 2025-2026 Q34');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a large protrusion, articulating with the leg', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It features two articular surfaces', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It fits into the tibiofibular "mortise"', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It articulates medially with the articular surface of the medial malleolus', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It articulates laterally with the fibula via a comma-shaped articular surface', 0);

-- Q35
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The elbow joint is a complex joint that unites the humerus, ulna, and radius. This joint has several articular surfaces. What is the position of the capitulum?', NULL, 'EMD1 2025-2026 Q35');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occupies the outer surface of the coronoid process', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It occupies the perimeter of the head of the radius', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is located on the lateral and distal part of the humerus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is located in the medial and distal part of the humerus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It is located on the lateral and proximal part of the humerus', 0);

-- Q36
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The elbow has three palpable bony landmarks posteriorly: the lateral epicondyle, the medial epicondyle, and the olecranon. Which of the following correspond to these landmarks?', NULL, 'EMD1 2025-2026 Q36');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The Malgaigne line in flexion', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The Malgaigne line in extension', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The Malgaigne triangle in extension', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The Nélaton triangle in extension', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The Nélaton triangle in flexion', 1);

-- Q37
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synovial joints are characterized by the presence of a joint cavity, a synovial membrane, and bone surfaces covered with articular cartilage. The latter is characterized by:', NULL, 'EMD1 2025-2026 Q37');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The same thickness in all joints', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A rich vascularization', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its lesions are reversible with medical treatment', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its degeneration is responsible for osteoarthritis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It covers the epiphyses of the long bones', 1);

-- Q38
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The adaptive mechanisms are fibrocartilaginous structures that exist in cases of joint incongruity and are interposed between the bone surfaces:', NULL, 'EMD1 2025-2026 Q38');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They exist in all joints', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They play a role in joint mobility', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They are interposed between the capsule and the synovium', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They are essential for joint stability', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'They are never the site of lesions', 0);

-- Q39
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The sternocostoclavicular joint unites the medial end of the clavicle with the sternal manubrium and the first costal cartilage:', NULL, 'EMD1 2025-2026 Q39');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It''s a saddle joint with an articular disc', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is an arthrodial (plane) joint with an articular disc', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It''s a joint that allows for slight gliding movements', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It''s a slippery space with a serous bursa', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The articular surfaces are joined by a thick capsule and two ligaments', 0);

-- Q40
INSERT INTO questions (module_id, stem, explanation, source) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The coracohumeral ligament is a strong ligament that originates from the lateral border of the coracoid process. What is its termination?', NULL, 'EMD1 2025-2026 Q40');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'By two bundles, one on the greater tubercle and the other on the lesser tubercle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'By three bundles on the greater and lesser tubercles and on the anatomical neck', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'By two bundles, one on the anatomical neck and the other on the surgical neck', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'By a single bundle on the bicipital groove', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'By a single bundle on the surgical neck', 0);
