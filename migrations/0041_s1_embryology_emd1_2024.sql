-- Generated from data/s1-embryology-emd1-2024.json — 25 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning gametogenesis, indicate the correct answer(s):', 'No official answer key for this exam — answers worked out from the course. Cryptorchid testes still secrete testosterone; in women there is no equivalent of spermiogenesis.', 'EMD1 2023-2024 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The gonad''s only function is gamete production', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cryptorchid testes produce no spermatozoa and testosterone production is blocked', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Spermatozoa result from the transformation, without mitosis, of spermatids', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In women, the differentiation stage is absent from gametogenesis', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the Sertoli cell, tick the correct answer(s):', 'No official key — Sertoli cells are stimulated by FSH (Leydig cells by LH).', 'EMD1 2023-2024 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It phagocytoses the residues of spermiogenesis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is stimulated by LH', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It rests on the basement membrane of the seminiferous tubule', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It does not take part in regulating spermatogenesis', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'What is the role of Sertoli cells in spermatogenesis?', 'No official key.', 'EMD1 2023-2024 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Secretion of testosterone', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Nutrition and support of germ cells', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Production of spermatozoa', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Transport of spermatozoa to the epididymis', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'How many cell divisions are needed (from the primary spermatocyte) to form a mature spermatozoon?', 'No official key — the two meiotic divisions; spermiogenesis is a transformation without division.', 'EMD1 2023-2024 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'One', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Two', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Three', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Four', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Where does the differentiation of the spermatozoon (spermiogenesis) take place in men?', 'No official key — spermiogenesis occurs in the seminiferous tubules; the epididymis is where spermatozoa mature.', 'EMD1 2023-2024 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Testes', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Prostate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Epididymis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Seminal vesicles', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the 1st week of embryonic development:', 'No official key — the blastocyst hatches from the zona around day 5–6; the blastocoel forms before implantation.', 'EMD1 2023-2024 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The zygote is surrounded by the zona pellucida throughout the whole 1st week', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'During segmentation, the egg does not (or barely) increase in volume because it is surrounded by the zona pellucida', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The blastocoel appears during implantation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It represents primordial morphogenesis', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following elements, which enter into the constitution of the chorionic plate?', 'No official key — the chorionic plate = extra-embryonic mesoderm + (cyto/syncytio)trophoblast. Heuser''s membrane lines the primary yolk sac.', 'EMD1 2023-2024 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Syncytiotrophoblast', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Heuser''s membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Extra-embryonic mesenchyme', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Allantoic diverticulum', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which process marks the beginning of gastrulation?', 'No official key.', 'EMD1 2023-2024 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Neurulation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Implantation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Formation of the primitive streak', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Segmentation', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which crucial structure forms during gastrulation and induces the neural tube?', 'No official key — the notochord (axial mesoblast).', 'EMD1 2023-2024 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Axial mesoblast', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Paraxial mesoblast', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Intermediate mesoderm', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lateral mesoblast', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the allantoic diverticulum:', 'No official key — it appears around day 16 (3rd week).', 'EMD1 2023-2024 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It designates a diverticulum that sinks into the embryonic connecting stalk', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It only appears at the beginning of the 4th week', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is an endoblastic invagination at the caudal pole of the embryo', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It induces the appearance of primordial gonocytes', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about the amniotic cavity, which is (are) correct?', 'No official key — amnioblasts come from the epiblast.', 'EMD1 2023-2024 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It forms at the beginning of the 2nd week of development', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The amnion originates from the syncytiotrophoblast', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It appears in the 4th week and contributes to embryonic delimitation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Amniocentesis is a puncture of the amniotic fluid during pregnancy', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'At the start of metamerization, around day 23, the paraxial mesoblast will consist of:', 'No official key — first pairs around day 20, about 3 pairs per day.', 'EMD1 2023-2024 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10 pairs of somites', 1),
  ((SELECT MAX(id) FROM questions), 'B', '20 pairs of somites', 0),
  ((SELECT MAX(id) FROM questions), 'C', '30 pairs of somites', 0),
  ((SELECT MAX(id) FROM questions), 'D', '40 pairs of somites', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the statements about the intermediate mesoblast, which is (are) correct?', 'No official key — the human pronephros is never functional.', 'EMD1 2023-2024 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pronephros is represented by functional urinary structures', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The mesonephros is a transient urinary structure', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The metanephros is at the origin of the urogenital tracts', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The metanephros gives rise to the primordium of the definitive kidney', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which of the statements below concern the 4th week of embryonic development?', 'No official key.', 'EMD1 2023-2024 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Mesencephalic and cervical flexures, head flexed toward the umbilical cord', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Closure of the anterior then posterior neuropore', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Lung bud', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Individualization of the embryo from its annexes', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The cephalic part of the neural tube gives 3 primary vesicles; in cranio-caudal order we observe:', 'No official key.', 'EMD1 2023-2024 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Telencephalon – diencephalon – mesencephalon', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Telencephalon – mesencephalon – rhombencephalon', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Prosencephalon – myelencephalon – telencephalon', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Prosencephalon – mesencephalon – rhombencephalon', 1);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'What term describes the process by which ectodermal (epiblast) cells migrate inward to form the mesoblast?', 'No official key.', 'EMD1 2023-2024 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Invagination', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Proliferation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Pre-gastrulation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Individualization', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which structure is formed by delimitation (folding) and gives rise to internal organs?', 'No official key.', 'EMD1 2023-2024 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primitive gut tube', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Heart tube', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Vitelline duct', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Neural tube', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following elements, which derive(s) from the mesoblast?', 'No official key — spinal cord and placodes are ectodermal; pancreas is endodermal.', 'EMD1 2023-2024 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The spinal cord', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The vertebrae', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The pancreas', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The optic placodes', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about the pairs of somites, which is (are) correct?', 'No official key — they appear first in the occipital region and progress caudally.', 'EMD1 2023-2024 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They lie on either side of the notochord', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They lie on either side of the neural plate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They establish the metameric organization of the body', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They appear in pairs in the posterior zone of the embryo''s body', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About stem cells, which assertion(s) is (are) correct?', 'No official key — hematopoietic stem cells circulate in small numbers.', 'EMD1 2023-2024 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a cell capable of differentiating into different cell types', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is an immune cell', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is found in the developing embryo', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is found in the circulating blood of the body', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning cell differentiation:', 'No official key — many differentiated cells can still divide.', 'EMD1 2023-2024 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is the process by which cells specialize into a cell type identifiable by its own morphological characteristics', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A stem cell is an undifferentiated cell', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A differentiated cell is characterized by a total loss of mitotic power', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The differentiated state is stable but reversible', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about dizygotic twins, which is (are) correct?', 'No official key — dizygotic twins make up about 2/3 of twin cases and come from two eggs, so there is no separation.', 'EMD1 2023-2024 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'All these twins are dichorionic diamniotic', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They represent 1/3 of twin cases', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They always have a different genetic makeup', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Their separation occurs very early (at the 2-blastomere stage)', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The plate (figure) shows cases of twinning. Indicate the correct statement(s); these are:', 'No official key — conjoined twins come from an incomplete late split of the embryonic disc (monochorionic monoamniotic). Case A is joined at the thorax/abdomen, not the buttocks.', 'EMD1 2023-2024 Q23', 's1/embryology-2024-q23.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Monozygotic monochorionic monoamniotic twins', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Monozygotic monochorionic diamniotic twins', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The separation took place at the inner cell mass (embryonic button) stage', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The 1st case (A) on the plate represents pygopagus twins', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the diagram (figure), indicate the correct answer(s):', 'No official key — the primary yolk sac is pinched off as an exocoelomic cyst.', 'EMD1 2023-2024 Q24', 's1/embryology-2024-q24.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a phenomenon characteristic of the 2nd week of development', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is hatching', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the beginning of blastocyst adhesion to the endometrium', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is the formation of the secondary yolk sac (lecithocele)', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Rank the placental villi shown (figure) by degree of development:', 'No official key — D primary (trophoblastic trabeculae), C secondary (mesenchymal core), A tertiary (with vessels), B mature/term.', 'EMD1 2023-2024 Q25', 's1/embryology-2024-q25.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A C D B', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'D C A B', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A B C D', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'D A C B', 0);
