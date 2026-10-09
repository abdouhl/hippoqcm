-- Generated from data/lessons/s1-embryology-introduction-to-human-embryology.json — lesson "Introduction to human embryology": 0 exam + 17 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Introduction to human embryology', 's1/embryology/introduction-to-human-embryology.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the definition of embryology:', 'Human embryology covers development from the zygote until birth, so it includes the fetal period. Puberty (secondary sexual characteristics) is mentioned only as the end of secondary/definitive morphogenesis, not as the limit of embryology.', 'Lesson: Introduction to human embryology', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Embryology is the morphological description of the transformations of the fertilized egg into an organism', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Human embryology covers human development from the zygote stage until birth', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Human embryology covers development from the zygote stage until puberty', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The fetal period falls within the scope of human embryology', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the cells defined in embryology:', 'Both gametes (oocyte and spermatozoon) are haploid; the zygote and somatic cells are diploid.', 'Lesson: Introduction to human embryology', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The oocyte is a haploid sex cell with a single copy of each chromosome', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The spermatozoon is a diploid cell that ensures fertilization', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The zygote is a diploid cell resulting from the fusion of a male and a female gamete', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A somatic cell is a haploid cell making up the body', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The gonocyte:', 'A gonocyte is a germ cell whose differentiation produces a gamete. The fusion product of two gametes is the zygote; ''any cell making up the body'' defines the somatic cell.', 'Lesson: Introduction to human embryology', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a cell whose differentiation will produce a gamete', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a germ cell', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is the diploid cell resulting from the fusion of two gametes', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is any cell making up the body of an organism', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the human virgin egg (female gamete):', 'The human egg is an oocyte II blocked in metaphase II and is alecithal, unlike the bird egg which is very rich in vitellus (lecith = nutritional reserves).', 'Lesson: Introduction to human embryology', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a secondary oocyte (oocyte II) blocked in metaphase II', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is alecithal, i.e. devoid of nutritional reserves', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Like the bird egg, it is very rich in vitellus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Vitellus (lecith) refers to the egg''s nutritional reserves', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The term ''germ'' designates the developing organism:', '''Germ'' is used while the shape is still spherical: from the zygote until the end of the 3rd week of development. From the 8th week until birth it is a fetus.', 'Lesson: Introduction to human embryology', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'From the 8th week of pregnancy until birth', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'As long as its shape is still spherical', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Starting from the zygote stage', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Until the end of the 3rd week of embryonic development', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the embryo and the fetus:', 'Organs are sketched out during the embryonic period; the fetal period is characterized essentially by maturation and growth, since systems and organs are already formed.', 'Lesson: Introduction to human embryology', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The embryo is the organism from the first division of the zygote until the main organs are sketched out', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The fetus has bilateral symmetry', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The fetal period is characterized essentially by the sketching out of the organs', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'During the first 8 weeks of pregnancy, we speak of an embryo', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'An ultrasound is performed at the 14th week of pregnancy. At this stage, the developing organism:', 'From the 3rd month the organism has distinctive human characteristics and is called a fetus; the fetal period is mainly maturation and growth. The neural tube is first sketched in the 4th week, and ''germ'' only applies until the end of the 3rd week.', 'Lesson: Introduction to human embryology', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is designated by the term fetus', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is undergoing the first sketch of its neural tube', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Grows and matures, its systems and organs being already formed', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is still called a germ because it is spherical', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the section planes of the (spherical) germ:', 'Germ planes mimic the globe: the meridian plane passes through the two poles (animal and vegetative), the equatorial plane cuts it into two equal halves. Sub- and supra-equatorial sections lie below/above the equator, parallel to it, not through the poles.', 'Lesson: Introduction to human embryology', NULL, 'generated', 8);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The sub- and supra-equatorial planes pass through the animal and vegetative poles', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They are similar to those used for the terrestrial globe', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The meridian plane passes through the animal and vegetative poles', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The equatorial plane cuts the germ into two equal parts', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About sections in the embryo and the fetus:', 'The fetus has acquired bilateral symmetry, so adult section planes are used; meridian/equatorial planes belong to the spherical germ.', 'Lesson: Introduction to human embryology', NULL, 'generated', 8);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Longitudinal sections of the embryo are of 2 types: sagittal and para-sagittal', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In the fetus, meridian and equatorial planes are used, as in the germ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Transverse sections can pass through any region of the embryo', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In the fetus, bilateral symmetry being acquired, section planes are the same as in the adult', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which section necessarily divides the embryo into two equal parts?', 'The sagittal (median) section must pass through the embryo''s axis of symmetry, giving 2 equal parts. The para-sagittal section is only parallel to it, and transverse sections can be at any level.', 'Lesson: Introduction to human embryology', NULL, 'generated', 8);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The para-sagittal section', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The transverse section', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The sagittal (median) section', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The sub-equatorial section', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'In this diagram of an embryo, the central black arrow, the two red arrows and the green arrow represent, respectively:', 'The median longitudinal line through the axis of symmetry is the sagittal section, the lines parallel to it are para-sagittal, and the line perpendicular to the longitudinal plane is transverse. Meridian/equatorial planes apply to the spherical germ.', 'Lesson: Introduction to human embryology', 's1/lessons/introduction-to-human-embryology-g1.png', 'generated', 9);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Para-sagittal, sagittal and transverse sections', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Meridian, sub/supra-equatorial and equatorial planes', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Sagittal, transverse and para-sagittal sections', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Sagittal, para-sagittal and transverse sections', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Fertilization, segmentation and the formation of the blastocyst belong to:', 'Pre-morphogenesis occupies the 1st week: fertilization, segmentation and blastocyst formation. Primordial morphogenesis (weeks 2–3) is the didermic → tridermic transformation.', 'Lesson: Introduction to human embryology', NULL, 'generated', 9);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primordial morphogenesis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Pre-morphogenesis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Primary morphogenesis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Secondary and definitive morphogenesis', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About primordial morphogenesis:', 'Primordial morphogenesis (weeks 2–3) = gastrulation, producing a tridermic embryonic disc. Days 20–29 (4th week) correspond to primary morphogenesis.', 'Lesson: Introduction to human embryology', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occurs during the 2nd and 3rd weeks of embryonic development', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It corresponds to days 20–29 of pregnancy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It transforms the embryonic button into a didermic then a tridermic germ', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its process is gastrulation, leading to the gastrula stage', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About primary morphogenesis:', 'Primary morphogenesis (4th week) is neurulation (neurula stage) and sets up the neural tube, circulatory and digestive sketches. The gastrula belongs to primordial morphogenesis; secondary sexual characteristics end secondary/definitive morphogenesis.', 'Lesson: Introduction to human embryology', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It corresponds to the 4th week of pregnancy (20th–29th days)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its characteristic stage is the gastrula', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It ends with the appearance of secondary sexual characteristics', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It establishes the first sketch of the nervous, circulatory and digestive systems', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About secondary and definitive morphogenesis:', 'It starts at the 5th week and continues through the fetal period and even years after birth, until secondary sexual characteristics appear at puberty — so it does not end at birth.', 'Lesson: Introduction to human embryology', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It ends at birth', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It begins from the 5th week of pregnancy', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is when the different organs of the embryo are sketched out', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It continues until the appearance of secondary sexual characteristics at puberty', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'A tri-dermic embryonic disc is the characteristic feature of which stage?', 'In the table of embryogenesis periods, gastrulation gives the gastrula, featuring a tri-dermic embryonic disc. The neurula features the neural sketch.', 'Lesson: Introduction to human embryology', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Zygote', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Gastrula', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Neurula', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Embryo with organ sketches', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'A woman is on day 24 of pregnancy. At this time, the conceptus is undergoing:', 'Day 24 falls in the 4th week (days 20–29) = primary morphogenesis: neurulation plus first sketches of the circulatory and digestive systems. Blastocyst formation is 1st week; the didermic germ forms in weeks 2–3.', 'Lesson: Introduction to human embryology', NULL, 'generated', 10);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Introduction to human embryology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Formation of the blastocyst', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Transformation of the embryonic button into a didermic germ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Neurulation, with the first sketch of the neural tube', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The establishment of the first sketch of the circulatory and digestive systems', 1);
