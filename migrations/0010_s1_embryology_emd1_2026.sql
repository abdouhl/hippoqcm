-- Generated from data/s1-embryology-emd1-2026.json — 25 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Find the correct statement: the structure (X) shown above represents:', NULL, 'EMD1 2025-2026 Q1', 's1/embryology-q1.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The beginning of delimitation.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The formation of the mesoblast (mesoderm).', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The formation of the neuroectoderm.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The formation of the notochord.', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Find the correct label for structure X:', NULL, 'EMD1 2025-2026 Q2', 's1/embryology-q1.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Arrow 1 indicates the pharyngeal membrane.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Arrow 2 indicates the primitive streak.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Arrow 3 indicates Hensen''s node.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Arrow 4 indicates the future neural tube.', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements concerning the hypothalamic–pituitary–gonadal axis, indicate which is/are correct:', NULL, 'EMD1 2025-2026 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The hypothalamus secretes GnRH.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Inhibin is secreted by Sertoli cells.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pituitary LH stimulates Sertoli cells.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Progesterone is secreted during the preovulatory phase.', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the decidua:', NULL, 'EMD1 2025-2026 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It refers to the part of the endometrium formed following the decidual reaction.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is expelled after childbirth.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The parietal decidua surrounds the embryo and accompanies it during growth.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'At the end of pregnancy, the three deciduae are observed.', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning monozygotic twins:', NULL, 'EMD1 2025-2026 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'These twins are always monoamniotic.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The least "true" of true twins are diamniotic and dichorionic.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They are not tolerant to reciprocal grafts.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Conjoined twins result from a separation at a stage preceding the appearance of the primitive streak.', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements concerning neurulation, indicate which is/are correct:', NULL, 'EMD1 2025-2026 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The primordium of the nervous system appears at the beginning of the 3rd week of development.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The neural plate is an anterior thickening of the neuroectoderm.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'At the end of the 4th week, the three primary brain vesicles give rise to five.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Neurulation is induced by the appearance of the vertebral column.', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'At the end of segmentation (metamerization), the paraxial mesoblast will consist of:', NULL, 'EMD1 2025-2026 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '30 pairs of somites.', 0),
  ((SELECT MAX(id) FROM questions), 'B', '35 pairs of somites.', 0),
  ((SELECT MAX(id) FROM questions), 'C', '42 pairs of somites.', 1),
  ((SELECT MAX(id) FROM questions), 'D', '44 pairs of somites.', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the embryological elements proposed below, indicate the one(s) that have an inductive effect:', NULL, 'EMD1 2025-2026 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primordial gonocytes.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The allantoic diverticulum.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The neural tube.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The primitive streak.', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the figure below:', NULL, 'EMD1 2025-2026 Q9', 's1/embryology-q9.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a pre-antral follicle.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'At the center of the structure is the secondary oocyte arrested in metaphase II.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At the periphery, an internal theca of fibrous nature can be identified.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The structure has just undergone a hormonal surge (FSH, LH).', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements concerning the passage of sperm through the female genital tract, indicate which one(s) is/are correct:', NULL, 'EMD1 2025-2026 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cervical secretions are favourable to sperm at the time of ovulation.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cervical secretions are favourable to sperm before ovulation.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The pH of the vaginal canal is unfavourable to sperm survival.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The permeability of the cervical mucus varies throughout the cycle.', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Regarding fertilisation:', NULL, 'EMD1 2025-2026 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Acrosomal hyaluronidase enables hydrolysis of the zona pellucida.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Contact between the first sperm and the plasma membrane of the oocyte triggers the release of cortical granules.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Fertilisation can take place in the uterine cavity.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Sperm deposited in the vagina travel towards the fallopian tube, at the end of which the oocyte is located.', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Some of these characteristics are observed during the endometrium''s response to implantation:', NULL, 'EMD1 2025-2026 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The immunological reaction is generally very strong.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Stromal cells proliferate and become smaller.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Invasion of lymphocytes with increased vascularisation.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It begins in the implantation area in contact with the syncytiotrophoblast.', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following cells, indicate which one(s) is (are) haploid:', NULL, 'EMD1 2025-2026 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Spermatozoid.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Spermatids.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Spermatogonia.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Oocyte II.', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Regarding the evolution of the corpus luteum in the event of fertilisation, it:', NULL, 'EMD1 2025-2026 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Regresses within a few days and is replaced by the egg, which releases oestrogen and progesterone.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Regresses within 12 to 14 days and is replaced by the placenta, which releases oestrogen and progesterone.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Persists and its endocrine activity is maintained until the third month.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Produces the HCG necessary to maintain pregnancy.', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following elements, indicate the one(s) that derive from the endoderm:', NULL, 'EMD1 2025-2026 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The large intestine.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The liver.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The kidney.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The epidermis.', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the statements concerning the intermediate mesoblast, indicate the one(s) that is/are correct:', NULL, 'EMD1 2025-2026 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pronephros is represented by functional urinary structures.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The mesonephros forms the Wolffian duct, which participates in the formation of the urinary tract and male genital tract.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The metanephros is the origin of the definitive genital outline.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The metanephros is the origin of the outline of the kidney.', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The cephalic part of the neural tube gives rise to three primitive vesicles in the cranio-caudal direction, in the following order:', NULL, 'EMD1 2025-2026 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Telencephalon-diencephalon-mesencephalon.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Telencephalon-mesencephalon-rhombencephalon.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Prosencephalon-myelencephalon-telencephalon.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Prosencephalon-mesencephalon-rhombencephalon.', 1);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'What is the term used to describe the process during which ectodermal cells migrate to form the mesoblast?', NULL, 'EMD1 2025-2026 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Invagination.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Proliferation.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Pre-gastrulation.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Individualisation.', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'From an embryological point of view, the diagram shown represents:', NULL, 'EMD1 2025-2026 Q19', 's1/embryology-q19.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It has a trophoblastic origin.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Derived from the extra-embryonic mesenchyme.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Constitutes the functional unit of the placenta.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Disappears at the end of pregnancy.', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The placental barrier, at the stage shown, includes:', NULL, 'EMD1 2025-2026 Q20', 's1/embryology-q19.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'An external syncytiotrophoblastic layer.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'An internal cytotrophoblastic layer.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Primitive blood cells in the core of the villus.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Embryonic mesoderm.', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning primitive blood islands, they are:', NULL, 'EMD1 2025-2026 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Of ectodermal origin.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Their primordium appears at the end of the 2nd week of embryonic development.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At the origin of the first blood vessels and blood cells.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Definitive structures.', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the allantois, it is:', NULL, 'EMD1 2025-2026 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A formation of purely mesodermal origin.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A diverticulum derived from the ectoderm.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A diverticulum formed by evagination of the endoderm.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A structure derived from Heuser''s membrane.', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the location of the allantois, it forms posterior to:', NULL, 'EMD1 2025-2026 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pharyngeal membrane.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The cloacal membrane.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The yolk sac.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The cardiogenic area.', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the structure of the allantoic wall, the epithelium of the allantois is lined by:', NULL, 'EMD1 2025-2026 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Embryonic somatopleure.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Intermediate mesoderm.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Embryonic splanchnopleure.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Extra-embryonic ectoderm.', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the vascular role of the allantois, the allantoic vessels:', NULL, 'EMD1 2025-2026 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Completely degenerate.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Form the pulmonary arteries.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Form the umbilical vessels.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Form the cerebral capillaries.', 0);
