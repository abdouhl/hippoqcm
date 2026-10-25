-- Generated from data/lessons/s1-anatomy-skeletal-system.json — lesson "Skeletal system": 10 exam + 20 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Skeletal system', 's1/anatomy/skeletal-system.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q6',
    'EMD1 2023-2024 Q7',
    'EMD1 2023-2024 Q8',
    'EMD1 2024-2025 Q6',
    'EMD1 2024-2025 Q7',
    'EMD1 2024-2025 Q8',
    'EMD1 2024-2025 Q9',
    'EMD1 2025-2026 Q6',
    'EMD1 2025-2026 Q7',
    'EMD1 2025-2026 Q8'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the skeletal system:', 'Most of the skeleton is cartilaginous in the fetus; in the adult only some cartilaginous structures persist. Also false: "Its study constitutes arthrology"; "Cartilage produces the blood cells".', 'Lesson: Skeletal system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In the adult, most of the skeleton is cartilaginous', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cartilage produces the blood cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In humans it is an endoskeleton with a cartilaginous part and a bony part', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its study constitutes arthrology', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Bones store mineral salts (calcium)', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Cartilage is a tissue that is:', 'Cartilage is strong but elastic and devoid of vessels and nerves. The periosteum covers bone except at the articular surfaces.', 'Lesson: Skeletal system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Covered by periosteum on articular surfaces', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Richly vascularized', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Strong but elastic', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Devoid of nerves', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Devoid of blood vessels', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are made of hyaline cartilage?', 'Hyaline (translucent, bluish, vitreous): articular cartilage, thyroid and cricoid cartilages, tracheobronchial tree, nasal cartilages. The meniscus is fibrocartilage; the epiglottis is elastic cartilage.', 'Lesson: Skeletal system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The thyroid and cricoid cartilages of the larynx', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The epiglottis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The tracheobronchial tree cartilages', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The meniscus of the knee', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Articular cartilage', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are examples of fibrocartilage?', 'Fibrocartilage (whitish, resistant, rich in collagen fibres): intervertebral disc, knee meniscus, acetabular labrum. Auricular cartilage is elastic; nasal cartilages are hyaline.', 'Lesson: Skeletal system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The nasal cartilages', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The meniscus of the knee', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The intervertebral disc', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The auricular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The acetabular labrum', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Elastic cartilage:', 'Elastic cartilage is yellowish, rich in elastic fibres: auricle, epiglottis and small laryngeal cartilages. Articular cartilage is hyaline. Also false: "Is bluish and translucent"; "Forms the intervertebral disc".', 'Lesson: Skeletal system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Forms the articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is bluish and translucent', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is rich in elastic fibres', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Forms the epiglottis', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Forms the intervertebral disc', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A cartilage described as "whitish, resistant and rich in collagen fibres" is:', 'Whitish + collagen = fibrocartilage. Hyaline is bluish/translucent; elastic is yellowish with elastic fibres.', 'Lesson: Skeletal system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The cricoid cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Hyaline cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Elastic cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Fibrocartilage', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About the bones of the skeleton:', '206 bones, with variable supernumerary bones at the extremities (sesamoid) and in the skull (Wormian), not in the spine. Also false: "Wormian bones are supernumerary bones of the foot"; "Sesamoid bones are supernumerary bones of the skull".', 'Lesson: Skeletal system', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Wormian bones are supernumerary bones of the foot', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Supernumerary bones are found only in the vertebral column', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'There are 206 constant bones', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Sesamoid bones are supernumerary bones of the skull', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Their number may vary because of supernumerary bones', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following belong to the axial skeleton?', 'The axial skeleton is the spine, bony head, rib cage and hyoid bone. The scapula belongs to the thoracic limb (appendicular skeleton).', 'Lesson: Skeletal system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The bony head', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The scapula', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The rib cage', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The hyoid bone', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The vertebral column', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The appendicular skeleton:', 'The appendicular skeleton is symmetrical, attached to the axial skeleton, made of the limb bones. Hyoid and sternum (rib cage) are axial.', 'Lesson: Skeletal system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is formed by the bones of the thoracic and pelvic limbs', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is symmetrical', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Includes the sternum', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Includes the hyoid bone', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Attaches to the axial skeleton', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About bone classification:', 'The vertebra is an irregular bone, which escapes the three classic types. Short bones are e.g. carpal and tarsal bones. Also false: "A long bone has one epiphysis and two diaphyses"; "A flat bone has a diaphysis and two epiphyses".', 'Lesson: Skeletal system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The vertebra is a typical short bone', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A long bone has one epiphysis and two diaphyses', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A flat bone has a diaphysis and two epiphyses', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'In a long bone, length predominates over width and thickness', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'In a short bone the three dimensions are almost equal', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the bone with its type:', 'Femur = long, scapula = flat, carpal/tarsal bones = short, vertebra = irregular.', 'Lesson: Skeletal system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The scapula is a flat bone', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The carpal bones are short bones', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The tarsal bones are long bones', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The vertebra is a flat bone', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The femur is a long bone', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Which of the following are non-articular eminences?', 'Non-articular eminences: process, tuberosity, tubercle, spine, crest. Notch and fossa are non-articular cavities.', 'Lesson: Skeletal system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A tubercle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A fossa', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A tuberosity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A notch (incisure)', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A spine', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Match the bony relief with its example given in the course:', 'The obturator foramen is a foramen (non-articular cavity) and the olecranon fossa is a fossa (non-articular cavity). An articular eminence is a head, e.g. humeral head; tubercle example: infraglenoid tubercle.', 'Lesson: Skeletal system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Crest (linear eminence): the iliac crest', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Articular eminence: the olecranon fossa', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Spine (acute eminence): the sciatic spine', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Process: the coracoid process', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Tubercle: the obturator foramen', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Non-articular cavities of bone:', 'The trochlear notch of the ulna is an articular cavity (it receives an articular eminence). Also false: "Include the crest, e.g. the iliac crest"; "Include the process, e.g. the coracoid process".', 'Lesson: Skeletal system', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Include the crest, e.g. the iliac crest', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Serve for the passage or attachment of an anatomical element', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Include the process, e.g. the coracoid process', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Include the trochlear notch of the ulna', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Include the foramen, an opening in the bone', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Bone (osseous tissue) is:', 'Bone is richly vascularized, not poorly.', 'Lesson: Skeletal system', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Poorly vascularized', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A specialized, dense and strong connective tissue', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Formed by 3 types of bone cells in a calcified matrix', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Constantly remodelled', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Rich in calcium phosphate and carbonate', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'Compact bone:', 'Compact bone = osteons + interstitial lamellae, diaphyseal, bordering the medullary canal (yellow marrow). Trabeculae and red marrow belong to epiphyseal spongy bone.', 'Lesson: Skeletal system', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Forms the diaphysis of long bones and delimits the medullary canal', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Contains interstitial lamellae between the osteons', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is made of osteons', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is made of bony trabeculae', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Contains the red bone marrow of the epiphyses', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About spongy bone and the diploe:', 'In short and flat bones compact bone surrounds the spongy bone, not the reverse. Also false: "Spongy bone forms the diaphysis of long bones"; "The diploe is surrounded by layers of periosteum only".', 'Lesson: Skeletal system', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In the skull vault, spongy bone is called the diploe', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In short bones, spongy bone surrounds compact bone', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The diploe is surrounded by layers of periosteum only', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Spongy bone forms the diaphysis of long bones', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Spongy bone is made of trabeculae delimiting small cavities', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'The periosteum:', 'Growth in length depends on the growth plate (epiphyseal/conjugation cartilage) at the diaphyseal-epiphyseal junction; the periosteum does growth in width and does not cover articular surfaces.', 'Lesson: Skeletal system', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Covers the bone except at the articular surfaces', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a whitish fibrous membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Covers the articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is responsible for growth in length', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is responsible for growth in width', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'A child''s femur grows in length thanks to:', 'Length growth = growth (conjugation) plate at the diaphyseal-epiphyseal junction; width growth = periosteum.', 'Lesson: Skeletal system', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The medullary canal', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The articular cartilage', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The periosteum', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The compact bone of the diaphysis', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The growth plate (epiphyseal cartilage) at the diaphyseal-epiphyseal junction', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy'), 'About ossification and radiological exploration of the skeleton:', 'Ossification is preceded by a cartilaginous or membranous matrix replaced by bone, hence the two ossification types. Also false: "Ossification begins at birth"; "Standard radiography is the examination of choice for tumoral pathology".', 'Lesson: Skeletal system', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Anatomy') AND title = 'Skeletal system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Standard radiography explores mainly traumatic pathology (fractures)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'There are two types: membranous and endochondral ossification', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ossification is preceded by a calcified bony matrix', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Standard radiography is the examination of choice for tumoral pathology', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Ossification begins at birth', 0);
