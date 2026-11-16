-- Generated from data/lessons/s1-embryology-spermatogenesis.json — lesson "Spermatogenesis": 14 exam + 26 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Spermatogenesis', 's1/embryology/spermatogenesis.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q2',
    'EMD1 2022-2023 Q27',
    'EMD1 2023-2024 Q1',
    'EMD1 2023-2024 Q2',
    'EMD1 2023-2024 Q3',
    'EMD1 2023-2024 Q4',
    'EMD1 2023-2024 Q5',
    'EMD1 2024-2025 Q2',
    'EMD1 2024-2025 Q4',
    'EMD1 2024-2025 Q7',
    'EMD1 2024-2025 Q14',
    'EMD1 2024-2025 Q18',
    'EMD1 2025-2026 Q3',
    'EMD1 2025-2026 Q13'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About spermatogenesis in general:', 'Spermatogenesis starts at puberty, is continuous, and takes place in the seminiferous tubules of the testis, producing haploid (23-chromosome) spermatozoa. Gonocytes appear during the first weeks of embryonic development, not at puberty.', 'Lesson: Spermatogenesis', NULL, 'generated', 1, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It begins at puberty and continues without interruption until advanced age', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It takes place in the epididymis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It produces spermatozoa containing 23 chromosomes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Gonocytes (primordial germ cells) first appear at puberty', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the structure of the testis:', 'The albuginea thickens at the UPPER pole to form the mediastinum testis, which contains the rete testis. Each of the 200–300 lobules holds 1–4 seminiferous tubules that drain through a 1 mm straight tubule into the rete testis.', 'Lesson: Spermatogenesis', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is surrounded by the tunica albuginea, a poorly extensible fibrous capsule', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The mediastinum testis (corpus of Highmore) is a thickening of the albuginea at the lower pole', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It contains 200 to 300 lobules, each holding 1 to 4 seminiferous tubules', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The seminiferous tubules of a lobule converge into a straight tubule that communicates with the rete testis', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'A spermatozoon formed in a seminiferous tubule reaches the epididymal duct. Which route did it follow?', 'Tubules converge into straight tubules, which open into the rete testis (in the mediastinum); efferent ductules in the head of the epididymis then continue into the epididymal duct.', 'Lesson: Spermatogenesis', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Seminiferous tubule → straight tubule → rete testis → efferent ductules → epididymal duct', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Seminiferous tubule → rete testis → straight tubule → efferent ductules → epididymal duct', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Seminiferous tubule → straight tubule → rete testis → epididymal duct → efferent ductules', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Seminiferous tubule → straight tubule → efferent ductules → rete testis → epididymal duct', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the cells of the seminiferous tubule and of the interstitium:', 'Leydig cells are interstitial: they sit in the connective tissue BETWEEN the tubules, not in the tubule wall. The tubule wall holds only Sertoli cells and germ cells, layered from the basement membrane toward the lumen in the order of spermatogenesis.', 'Lesson: Spermatogenesis', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Leydig cells lie in the wall of the seminiferous tubules, between the germ cells', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Sertoli cells span the entire thickness of the epithelium and are linked to one another by tight junctions', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'From the periphery to the lumen one finds spermatogonia, primary spermatocytes, secondary spermatocytes, spermatids, then spermatozoa', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Leydig cells form cords or isolated clusters around capillaries in the loose connective tissue and secrete testosterone', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the Sertoli cell:', 'FSH (not LH) binds membrane receptors on Sertoli cells and stimulates ABP formation; LH acts on Leydig cells. Germ cells lie between Sertoli cells, connected to them by junctions, not inside them.', 'Lesson: Spermatogenesis', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It carries membrane receptors for LH', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It produces ABP (Androgen-Binding Protein)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a large, roughly pyramidal cell with multiple cytoplasmic processes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Germ cells divide inside its cytoplasm', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the multiplication phase of spermatogenesis:', 'The last mitosis of the spermatogonia produces primary spermatocytes, which are still diploid (2n); haploidy is only reached after the first meiotic division.', 'Lesson: Spermatogenesis', NULL, 'generated', 4, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It concerns the spermatogonia, diploid stem cells lying against the basement membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its successive mitoses maintain the spermatogonial pool', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'One spermatogonium gives rise to 4 primary spermatocytes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The primary spermatocytes it produces are haploid', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the maturation phase of spermatogenesis:', 'The primary spermatocyte (2n) undergoes the REDUCTIONAL division (meiosis I) into 2 spermatocytes II (n); each undergoes the equational division into 2 spermatids, so one spermatocyte I gives 4 spermatids.', 'Lesson: Spermatogenesis', NULL, 'generated', 5, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is preceded by a growth phase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The primary spermatocyte undergoes the equational division', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Each secondary spermatocyte gives 2 spermatids with n chromosomes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'One primary spermatocyte gives 8 spermatids', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Ten spermatogonia each complete one round of the sequence described in the lesson (last mitosis → meiosis). How many spermatids are obtained?', 'One spermatogonium gives 4 primary spermatocytes, and each primary spermatocyte gives 4 spermatids, so 16 spermatids per spermatogonium, i.e. 160 for 10. 40 forgets meiosis (counts only spermatocytes I).', 'Lesson: Spermatogenesis', NULL, 'generated', 5, 4, 1, 'Chain the two ×4 factors: 4 × 4 = 16 spermatids per spermatogonium, then × 10 = 160. If you got 40 you stopped at the spermatocytes I; 320 doubles a step that doesn''t exist.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '40', 0),
  ((SELECT MAX(id) FROM questions), 'B', '80', 0),
  ((SELECT MAX(id) FROM questions), 'C', '160', 1),
  ((SELECT MAX(id) FROM questions), 'D', '320', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which of the following transitions involve a cell division?', 'Primary spermatocytes come from the last spermatogonial mitosis, and spermatocytes II from the first meiotic division. Spermiogenesis (spermatid → spermatozoon) involves no division, and epididymal maturation is purely functional.', 'Lesson: Spermatogenesis', NULL, 'generated', 5, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Spermatogonium → primary spermatocyte', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Primary spermatocyte → secondary spermatocytes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Spermatid → spermatozoon', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Spermatozoon in the testis → motile spermatozoon in the epididymis', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The phases of spermatogenesis in the correct chronological order are:', 'Spermatogonia multiply by mitosis, the spermatocyte I grows, meiosis forms the maturation phase, and spermiogenesis (differentiation) turns spermatids into spermatozoa.', 'Lesson: Spermatogenesis', NULL, 'generated', 5, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Multiplication – growth – maturation – differentiation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Multiplication – maturation – growth – differentiation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Growth – multiplication – differentiation – maturation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Multiplication – differentiation – growth – maturation', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About spermiogenesis:', 'Spermiogenesis is pure differentiation: cytoplasmic reduction, an acrosome from Golgi vesicles, and a flagellum from microtubules arising from the DISTAL centriole.', 'Lesson: Spermatogenesis', NULL, 'generated', 5, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It involves no cell division', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The acrosome forms from the condensation of Golgi vesicles', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The flagellum forms from microtubules arising from the proximal centriole', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It includes a reduction of the spermatid''s cytoplasm', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the diagram (figure), which statement(s) is (are) correct?', '1 = spermatogonium (2n), whose mitoses both renew the pool and give primary spermatocytes (2, still 2n); 2 → 3 is meiosis I (reductional, 2n → n). 4 → 5 is spermiogenesis, which happens in the seminiferous tubule of the testis.', 'Lesson: Spermatogenesis', 's1/lessons/spermatogenesis-g1.png', 'generated', 6, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cell 1 renews itself, maintaining the stem-cell pool', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The division from 2 to 3 is the reductional division', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The transition from 1 to 2 is the first meiotic division', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The transformation of 4 into 5 takes place in the epididymis', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the diagram (figure), which statement(s) is (are) correct?', 'This is spermiogenesis: 1 is the acrosome cap (condensed Golgi vesicles), 2 the excess cytoplasm removed by cytoplasmic reduction, 3 the middle piece with its helical mitochondrial sheath.', 'Lesson: Spermatogenesis', 's1/lessons/spermatogenesis-g2.png', 'generated', 6, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It shows the transformation of a spermatid into a spermatozoon, without division', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Structure 1 derives from Golgi vesicles', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Element 2 is excess cytoplasm that is eliminated', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Segment 3 contains the mitochondria that supply energy for flagellar movement', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the regulation diagram (figure), which statement(s) is (are) correct?', '1 = Sertoli cell, 2 = Leydig cell (interstitial, outside the tubule), 3 = inhibin, 4 = testosterone. Most testosterone enters the cytoplasm and binds ABP; only the free fraction passes into the blood.', 'Lesson: Spermatogenesis', 's1/lessons/spermatogenesis-g3.png', 'generated', 10, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cell 1 binds FSH through membrane receptors and produces ABP', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cell 2 lies in the wall of the seminiferous tubule', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Product 3 is inhibin, which exerts negative feedback on FSH only', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Product 4 mostly passes free into the blood', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the functional maturation of spermatozoa in the epididymis:', 'In the epididymis spermatozoa gain motility and zona-pellucida binding, but are DECAPACITATED by the seminal fluid: their fertilizing (fusion) ability is suppressed.', 'Lesson: Spermatogenesis', NULL, 'generated', 7, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Spermatozoa leaving the testis are barely motile', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They acquire their motility under the action of androgens secreted by the Leydig cells', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They acquire their ability to fuse with the oocyte membrane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The molecules that recognize the zona pellucida are set up', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About decapacitation and capacitation:', 'The ejaculated spermatozoon is still decapacitated and cannot fertilize; capacitation happens later, in the female genital tract.', 'Lesson: Spermatogenesis', NULL, 'generated', 13, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Decapacitation occurs in the epididymis through the action of the seminal fluid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A decapacitated spermatozoon temporarily loses its ability to fuse with other membranes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'To become fertilizing, the ejaculated spermatozoon must undergo capacitation in the female genital tract', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The ejaculated spermatozoon is immediately able to fertilize', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the head of the spermatozoon:', 'The acrosome is a flattened vesicle over the ANTERIOR two-thirds of the nucleus, full of hydrolytic enzymes used to cross the oocyte envelopes; the plasma membrane is conventional.', 'Lesson: Spermatogenesis', NULL, 'generated', 8, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The acrosome covers the posterior two-thirds of the nucleus', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The nucleus occupies most of the head', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The acrosome contains hyaluronidases, acrosin and the Corona Penetrating Enzyme', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its plasma membrane has particular morphological features', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the neck, middle piece and flagellum of the spermatozoon:', 'The energy supply (mitochondrial sheath) is in the middle piece, not the end piece; the flagellum narrows from middle piece to principal piece to end piece.', 'Lesson: Spermatogenesis', NULL, 'generated', 9, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The mitochondria are arranged in a helix around the flagellum in the middle piece', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The mitochondria that power the flagellum are located in the end piece', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The middle piece contains the centriole that gives rise to the flagellum', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Along the flagellum, the middle piece, principal piece and end piece have decreasing diameters', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Under the light microscope, the spermatozoon shows three parts:', 'The three visible parts are the head, the neck (the narrow portion joining head and flagellum) and the flagellum; the acrosome belongs to the head and the middle/end pieces belong to the flagellum.', 'Lesson: Spermatogenesis', NULL, 'generated', 8, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Head, neck, flagellum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Head, acrosome, tail', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Head, middle piece, end piece', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Nucleus, acrosome, flagellum', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'A 20-year-old man has both testes still in the abdomen (bilateral cryptorchidism). Which finding(s) is (are) expected?', 'Undescended testes produce no spermatozoa (sterility) but their interstitial Leydig cells keep secreting testosterone, so secondary sexual characteristics are preserved.', 'Lesson: Spermatogenesis', NULL, 'generated', 9, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Seminiferous tubules almost devoid of gametes', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Maintained testosterone production by the Leydig cells', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Loss of male secondary sexual characteristics', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Sterility', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Why does an undescended (cryptorchid) testis fail to produce spermatozoa?', 'The lesson attributes the arrest to the lack of scrotal cooling; testosterone secretion by Leydig cells is maintained.', 'Lesson: Spermatogenesis', NULL, 'generated', 9, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Normal spermatogenesis needs the slight cooling obtained when the testes migrate into the scrotum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its Leydig cells stop secreting testosterone', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It contains no Sertoli cells', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The pituitary stops secreting FSH', 0);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the neuroendocrine control of the testis:', 'GnRH acts on the pituitary, triggering FSH and LH secretion; it does not act on the testis directly. LH drives Leydig cells, and free testosterone feeds back negatively on LH (via the hypothalamus or the pituitary).', 'Lesson: Spermatogenesis', NULL, 'generated', 10, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'GnRH is produced in a pulsatile way by hypothalamic neurons, and its production greatly increases at puberty', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'GnRH acts directly on Sertoli cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'LH ensures the multiplication of Leydig cells', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Free testosterone exerts negative feedback on LH secretion', 1);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About inhibin:', 'FSH triggers inhibin secretion by Sertoli cells, and inhibin lowers FSH secretion (hypothalamus or pituitary). The negative feedback on LH comes from free testosterone.', 'Lesson: Spermatogenesis', NULL, 'generated', 10, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is secreted by Sertoli cells in response to FSH', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is secreted by Leydig cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It exerts negative feedback on LH secretion', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It can act directly on the pituitary gonadotroph cells, or indirectly by decreasing GnRH secretion', 1);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'A semen analysis concludes oligoasthenoteratozoospermia (OATS). This means:', 'Astheno- refers to weak motility, terato- to abnormal shape. Causes listed include genital infections, varicocele, smoking, obesity, heat, radiation, medications and stress.', 'Lesson: Spermatogenesis', NULL, 'generated', 12, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Oligozoospermia: the spermatozoa are too few to fertilize an oocyte', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Asthenozoospermia: the spermatozoa have an abnormal shape', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Teratozoospermia: the spermatozoa have an abnormal shape', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A varicocele is among its possible causes', 1);

-- G25
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the factors influencing spermatogenesis:', 'Endocrine disorders explain only about 2–5% of male infertility, and radiation or anticancer treatments may act temporarily or permanently.', 'Lesson: Spermatogenesis', NULL, 'generated', 12, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'About 25% of men who contract mumps after puberty become infertile', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Endocrine disorders account for most cases of male infertility', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Some men produce antibodies against their own spermatozoa, causing poor motility or agglutination', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Anticancer treatments affect spermatogenesis only temporarily', 0);

-- G26
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'From the standpoint of chromosomal complement, about spermatozoa:', 'Separating the XY pair at meiosis gives equal numbers of X- and Y-bearing spermatozoa, which look identical but can be separated in vitro.', 'Lesson: Spermatogenesis', NULL, 'generated', 12, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Spermatogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Meiosis yields equal numbers of 22 + X and 22 + Y spermatozoa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'X- and Y-bearing spermatozoa can be distinguished morphologically', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'X- and Y-bearing spermatozoa can be separated in vitro', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Their highly compacted haploid genome protects them against genotoxic agents', 1);
