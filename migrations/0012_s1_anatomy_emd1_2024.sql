-- Generated from data/s1-anatomy-emd1-2024.json — 40 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The anatomical reference position is the position on which all anatomical descriptions are based. Which of the following correspond to this anatomical reference position?', NULL, 'EMD1 2023-2024 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A living adult, seated', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Arms hanging along the body', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Palms of the hands facing inward', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Gaze directed upward', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Feet together, placed on the ground', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The Nomina Anatomica is an essential basis for communication between physicians and scientists. Which of the following correspond to the Nomina Anatomica?', NULL, 'EMD1 2023-2024 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is written in English', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is written in Latin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a European nomenclature', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is an international nomenclature', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It universalizes the study of the human body', 1);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'For descriptive, topographic and functional anatomy, we use reference axes: the body axis, the hand axis and the foot axis. What are the characteristics of the foot axis?', NULL, 'EMD1 2023-2024 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A longitudinal axis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A transverse axis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An axis passing through the 4th toe', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'An axis passing through the 3rd toe', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'An axis passing through the 2nd toe', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'During the Muslim renaissance, several scientists marked this period. Who is the founder of modern optics and the first scientist to describe the anatomy of the eye?', NULL, 'EMD1 2023-2024 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ibn Rushd', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Ibn Al-Haytham', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ibn Nafis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Abu Al-Qasim Al-Zahrawi', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Ibn Sina', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Medial rotation is a rotational movement from outside to inside. What are its axis and plane?', NULL, 'EMD1 2023-2024 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A transverse axis and a sagittal plane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A sagittal axis and a frontal plane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A vertical axis and a transverse plane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A vertical axis and a sagittal plane', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A transverse axis and a frontal plane', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Cartilage is a specialized connective tissue; it is elastic and resistant. Which of the following correspond to hyaline cartilage?', NULL, 'EMD1 2023-2024 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A bluish cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A whitish cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A yellowish cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A glassy (vitreous) cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'A translucent cartilage', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bone growth is of two types: growth in length and growth in width. Which structure is responsible for growth in width?', NULL, 'EMD1 2023-2024 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The epiphyseal cartilage (growth plate)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Compact bone', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The periosteum', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Spongy bone', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Morphologically, the bone surface is not regular; it shows reliefs and cavities. Which of the following correspond to non-articular eminences?', NULL, 'EMD1 2023-2024 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A crest', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A foramen', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A process', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A spine', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'A groove (sulcus)', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The femur is a long bone forming the skeleton of the thigh. It has a proximal epiphysis, a distal epiphysis and a diaphysis. What are the articular surfaces of the distal epiphysis?', NULL, 'EMD1 2023-2024 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The medial epicondyle of the femur', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The patellar surface of the femur', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The medial condyle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The lateral condyle', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The posterior surface of the patella', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The hip bone (os coxae) is a flat, twisted bone shaped like a two-bladed propeller. It connects the lower limb to the spine. Which of the following belong to its lateral surface?', NULL, 'EMD1 2023-2024 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The posterior gluteal line', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The obturator foramen', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The arcuate line', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The auricular surface', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The acetabulum', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The hip bone has 4 borders: superior, inferior, anterior and posterior. Which of the following belong to its anterior border?', NULL, 'EMD1 2023-2024 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The innominate notch', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The greater sciatic notch', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The iliopectineal (iliopubic) eminence', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The lesser innominate notch', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The ischial tuberosity', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The tibial plateau articulates with the femoral condyles. Which anatomical elements make it up?', NULL, 'EMD1 2023-2024 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The fibular articular surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The anterior intercondylar area', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The oblique crest', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The intercondylar tubercles', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The medial malleolus', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The tarsal bones of the foot are seven, arranged in an anterior tarsus and a posterior tarsus. Which are the bones of the anterior tarsus?', NULL, 'EMD1 2023-2024 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lunate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The cuboid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The talus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The calcaneus', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The navicular', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The femur has a sharp posterior border (the linea aspera) which gives attachment to several hip and thigh muscles. Which of the following muscles attach to this border?', NULL, 'EMD1 2023-2024 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The gluteus medius', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The adductor muscles of the thigh', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The vastus medialis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The vastus lateralis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The obturator externus', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The articular capsule of the knee is a fibrous sleeve connecting the articular surfaces, inserting more or less close to the articular cartilage. What are its characteristics?', NULL, 'EMD1 2023-2024 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It thickens posteriorly to form the condylar shells (caps)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It thickens anteriorly to form the condylar shells (caps)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It has an anterior window for the patella', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It has an anterior window for the fabella', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It has a posterior window for the fabella', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The knee joint is a weight-bearing joint with a ligamentous and tendinous system providing stability when standing and walking. The collateral system is a powerful ligament of this joint. What are its characteristics?', NULL, 'EMD1 2023-2024 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is formed by the cruciate ligaments', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is formed by the collateral ligaments', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its injury produces a drawer movement', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It ensures antero-posterior stability of the knee', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It ensures lateral (collateral) stability of the knee', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Knee flexion brings the posterior surface of the leg toward the posterior surface of the thigh. What is the range of active flexion with the hip extended?', NULL, 'EMD1 2023-2024 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '120°', 1),
  ((SELECT MAX(id) FROM questions), 'B', '130°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '140°', 0),
  ((SELECT MAX(id) FROM questions), 'D', '150°', 0),
  ((SELECT MAX(id) FROM questions), 'E', '160°', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'According to their anatomical structure and mobility, there are three types of joints. Among them, syndesmoses are:', NULL, 'EMD1 2023-2024 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Fibrous joints whose articular surfaces are covered with articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Fibrous joints that unite the teeth to their sockets', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Joined by fibrocartilaginous structures', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Joints between articular surfaces that are distant from each other', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Fibrous joints that progressively ossify over time', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'According to the morphology of the articular surfaces, six types of joints are distinguished. Ginglymus (hinge) joints:', NULL, 'EMD1 2023-2024 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Unite two articular surfaces, one concave and the other convex', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Unite two pulley-shaped articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Have a single axis of movement', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are also called condylar joints', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Are amphiarthrosis-type joints', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Synovial joints have great mobility. Adduction:', NULL, 'EMD1 2023-2024 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a movement performed around a transverse axis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a movement that carries the anterior surface of a segment outward', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a simple movement performed by a single type of joint', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a movement specific to spheroid joints', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is a movement performed in a frontal plane', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scapula is a thin, flat, asymmetric bone located on the postero-superior part of the thorax:', NULL, 'EMD1 2023-2024 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pillar of the scapula is a vertical ridge that delimits its dorsal surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its cervical (superior) border shows the coracoid notch medially', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its lateral border is the longest and thickest', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The glenoid cavity is carried by the neck of the scapula', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The tip (inferior angle) of the scapula lies opposite the 8th rib', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The clavicle is a long bone that forms the shoulder girdle with the scapula:', NULL, 'EMD1 2023-2024 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its caudal (inferior) surface has the costal tuberosity on its medial part', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The conoid tubercle is located laterally and anteriorly on the ventral surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The trapezoid ligament attaches to the ventral tubercle of its caudal surface', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its cranial (superior) surface gives attachment to the costoclavicular ligament', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its anterior border is concave in its medial part', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The humerus is a long bone forming the skeleton of the arm. It articulates above with the scapula and below with the two forearm bones:', NULL, 'EMD1 2023-2024 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The radial nerve groove on its dorsal surface is oblique downward and outward', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The bicipital groove extends its antero-lateral surface downward', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its proximal epiphysis is entirely articular', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The distal epiphysis articulates only with the ulna', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The trochlea occupies the medial part of the humeral condyle', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radius is a long bone of the forearm occupying its lateral part:', NULL, 'EMD1 2023-2024 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The fovea of the radial head articulates with the medial part of the humeral condyle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The radial tuberosity gives attachment to the biceps brachii', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The medial surface of its distal end extends downward as the styloid process', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The inferior surface of its distal end articulates with the first row of the carpus', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Its proximal epiphysis has a single articular surface', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The scapulohumeral (glenohumeral) joint is the main shoulder joint; it unites the humeral head to the glenoid cavity of the scapula:', NULL, 'EMD1 2023-2024 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a deep, fragile and very mobile joint', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a diarthrosis of the enarthrosis (ball-and-socket) type', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a mobile joint with two degrees of freedom', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Adduction is possible on its own', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Flexion is a movement in the sagittal plane, also called antepulsion', 1);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The glenoid labrum is a fibrocartilaginous ring applied around the rim of the glenoid cavity:', NULL, 'EMD1 2023-2024 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its peripheral surface is free, smooth and convex', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its external surface is covered with articular cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its internal surface extends outward the surface of the scapular neck', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is richly innervated and vascularized', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Its lesions heal spontaneously', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The sterno-costo-clavicular joint is a true joint of the shoulder complex:', NULL, 'EMD1 2023-2024 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a plane joint of the arthrodial type', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a synovial joint with an intermediate articular disc', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It unites two articular surfaces', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It allows very slight gliding movements', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It allows two types of movements', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The subtalar joint is one of the joints of the foot:', NULL, 'EMD1 2023-2024 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is the joint uniting the posterior tarsus to the anterior tarsus', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a synovial joint of the spheroid type', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It unites the posterior calcaneal surface to the posterior talar surface', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It has a capsule and two passive ligaments', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It is a mobile joint with two degrees of freedom', 1);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The ankle joint unites the two leg bones to the talus and is of the trochlear type:', NULL, 'EMD1 2023-2024 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The tibiofibular mortise has a medial wall facing the lateral surface of the talus', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The tibiofibular mortise has three walls, the superior one being fibular', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The tibial plafond (pilon) faces the talar trochlea', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The medial collateral ligament is made of two bundles, anterior and posterior', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The posterior bundle of the fibular collateral ligament extends from the lateral malleolus to the posterior surface of the talus', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The ulna is a long bone of the forearm forming the medial part of the forearm skeleton:', NULL, 'EMD1 2023-2024 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The posterior surface of the olecranon is triangular with a concave inferior base', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The ulnar tuberosity marks the antero-inferior surface of the coronoid process', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The ulnar head has a single articular surface', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The anterior surface of the olecranon and the superior surface of the coronoid process form the trochlear notch of the ulna', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The beak of the olecranon extends its medial surface', 0);

-- Q31
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The radio-ulnar articular disc:', NULL, 'EMD1 2023-2024 Q31', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a fibrocartilaginous structure', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is triangular in shape', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Occupies the medial 2/3 of the antebrachial articular surface', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is interposed between the ulna and the radius', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Articulates with the triquetrum and the pisiform', 0);

-- Q32
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The trapeziometacarpal joint:', NULL, 'EMD1 2023-2024 Q32', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is one of the intercarpal joints', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Unites the trapezium and the head of metacarpal I', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a saddle-type synovial joint', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is very mobile', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Performs rotational movements of the thumb', 0);

-- Q33
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The internal surface of the annular ligament of the radius:', NULL, 'EMD1 2023-2024 Q33', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is purely fibrous in structure', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is covered with cartilage', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Attaches anteriorly to the anterior border of the radial notch of the ulna', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Encircles the radial head', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Articulates with the articular circumference of the radius', 1);

-- Q34
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which passive ligament of the elbow joint attaches to the radius?', NULL, 'EMD1 2023-2024 Q34', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ulnar collateral ligament of the elbow', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The radial collateral ligament of the elbow', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The oblique ligament of the elbow', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The posterior ligament', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The quadrate ligament', 1);

-- Q35
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The elbow joint performs the following movements:', NULL, 'EMD1 2023-2024 Q35', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flexion, with a range of 140° to 160°', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Extension, with a range of 0°', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pronation, with a range of 85°', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Supination, with a range of 80°', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Circumduction', 0);

-- Q36
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The pubofemoral ligament:', NULL, 'EMD1 2023-2024 Q36', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Attaches to the ischial tuberosity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Attaches to the iliopectineal (iliopubic) eminence', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Was formerly called the ligament of Bertin', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is an intrasynovial ligament', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is an active ligament', 0);

-- Q37
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The ligament of the head of the femur:', NULL, 'EMD1 2023-2024 Q37', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Was formerly called the round ligament of the femoral head', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Plays a role in nourishing the femoral head', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is an intrasynovial and intracapsular ligament', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Reinforces the articular capsule', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Attaches at the fovea capitis', 1);

-- Q38
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The acetabulum:', NULL, 'EMD1 2023-2024 Q38', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the only articular surface of the hip bone', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is surrounded by the glenoid labrum', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is surrounded by the cotyloid (acetabular) labrum', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is entirely covered with articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is partially covered with articular cartilage', 1);

-- Q39
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Muscle has the following properties:', NULL, 'EMD1 2023-2024 Q39', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Tonicity', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Rigidity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Elasticity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Contractility', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Excitability', 1);

-- Q40
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The roles of muscles are:', NULL, 'EMD1 2023-2024 Q40', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Heat production', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Vitamin production', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Production of movement', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Concentration of clotting factors', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Stabilization of joints', 1);
