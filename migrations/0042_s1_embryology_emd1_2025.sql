-- Generated from data/s1-embryology-emd1-2025.json — 25 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about folliculogenesis, which is (are) correct?', NULL, 'EMD1 2024-2025 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'About 1 million follicles are present at birth', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The secondary follicle contains a secondary oocyte', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Folliculogenesis begins from the 7th month of pregnancy', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The mature follicle contains the first polar body', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about male meiosis, which is (are) correct?', NULL, 'EMD1 2024-2025 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is preceded by a differentiation phase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Each secondary spermatocyte enters meiosis II (equational division)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'One primary spermatocyte gives 16 spermatids at the end of meiosis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Meiosis II is completed at fertilization', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the figure (histological section):', 'A mature (pre-ovulatory) Graafian follicle; the theca interna is glandular, the theca externa fibrous.', 'EMD1 2024-2025 Q3', 's1/embryology-2025-q3.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a pre-antral follicle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'At the center of the structure lies the secondary oocyte blocked in metaphase II', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At the periphery a fibrous theca interna is recognized', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The structure has just undergone a hormonal surge (FSH, LH)', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about the hypothalamo-pituitary-gonadal axis, which is (are) correct?', NULL, 'EMD1 2024-2025 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The hypothalamus secretes hCG', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Inhibin exerts negative feedback on testosterone secretion', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pituitary FSH stimulates Sertoli cells', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Progesterone is mainly secreted in the pre-ovulatory phase', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning Sertoli cells, which statement(s) is (are) correct?', NULL, 'EMD1 2024-2025 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They secrete AMH, which feeds back on the hypothalamo-pituitary axis when sperm count is high', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They supply nutrients to Leydig cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They remove the cytoplasm of secondary spermatocytes', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They form a protective barrier for cells in meiosis against the immune system', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about the endometrial reaction to implantation (decidual reaction), which is (are) correct?', NULL, 'EMD1 2024-2025 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occurs on the 12th day of embryonic development', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'If the reaction is very strong, the zygote is rejected and the pregnancy stops', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The decidua designate the part of the myometrium formed after the decidual reaction, eliminated after delivery', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The three decidua formed persist until the end of pregnancy', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the diagram (figure), which statement(s) is (are) correct?', 'Spermiogenesis: the acrosome (10) forms from Golgi vesicles.', 'EMD1 2024-2025 Q7', 's1/embryology-2023-q27.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It shows the phenomenon of spermatogenesis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It corresponds to the transformation of a spermatid into a spermatozoon', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Element 10 results from the accumulation of elements 2 and 3', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'This phenomenon lasts 74 days', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'To enter the oocyte, the capacitated spermatozoon must successively cross:', NULL, 'EMD1 2024-2025 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The zona pellucida, the corona radiata, the cumulus oophorus and the oocyte plasma membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The zona pellucida, the cumulus oophorus, the corona radiata and the oocyte plasma membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The cumulus oophorus, the oocyte plasma membrane, the zona pellucida and the corona radiata', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The cumulus oophorus, the corona radiata, the zona pellucida and the oocyte plasma membrane', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the indifferent genital system:', NULL, 'EMD1 2024-2025 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The Wolffian ducts degenerate in the male', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The Müllerian ducts degenerate in the male', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its primordium appears at the end of the 3rd week', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The male needs primordial gonocytes to synthesize anti-Müllerian hormone (AMH)', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the decidua (caducous membranes):', 'The stem is cut off on the scan. The decidua capsularis (not parietalis) surrounds the embryo.', 'EMD1 2024-2025 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They designate the part of the endometrium formed after the decidual reaction', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are eliminated after delivery', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The parietal decidua lies around the embryo and accompanies it as it grows', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'At the end of pregnancy two decidua are observed', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the statements about the primitive streak, which assertion(s) is (are) correct?', NULL, 'EMD1 2024-2025 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is set up at the beginning of the 3rd week of development', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It forms a cellular groove along the cephalo-caudal axis of the embryo', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is bounded posteriorly by Hensen''s node', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is followed by the appearance of the mesoblast', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'All these implantations are ectopic except one:', NULL, 'EMD1 2024-2025 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Tubal', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Pelvic', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cervical', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Uterine', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The placenta secretes all these hormones except one:', 'Official key: D.', 'EMD1 2024-2025 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Progesterone', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Estrogen', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'hCG', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Inhibin', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Gametogenesis includes all these phases except one:', 'Official key: A.', 'EMD1 2024-2025 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Proliferation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Multiplication', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cell division', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Growth', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the development of somites, tick the correct answer(s):', NULL, 'EMD1 2024-2025 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The first somites appear on day 24', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2 to 3 pairs of somites appear per day', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'All somites are in place by day 28', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Somites are metameric structures', 1);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which statement(s) about the diagram (figure) is (are) correct?', NULL, 'EMD1 2024-2025 Q16', 's1/embryology-2023-q20.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is an embryo at the trabecular (lacunar) stage', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Arrow 2 points to the uterine cavity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Arrow 3 points to the follicular cavity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The didermic disc lies between two cavities', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the embryological elements below, which one(s) has (have) an inductive effect?', 'Official key: B.', 'EMD1 2024-2025 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primordial gonocytes', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The allantoic diverticulum', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The neural tube', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The neural plate', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Meiosis takes place during the phase of:', NULL, 'EMD1 2024-2025 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Differentiation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Maturation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Growth', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Multiplication', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about the delimitation (folding) process, which is (are) correct?', NULL, 'EMD1 2024-2025 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Delimitation occurs at the same time as organogenesis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Delimitation individualizes the embryo from its annexes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Delimitation is accompanied by the setting up of the mesoblast', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It transforms the didermic embryonic disc into a tridermic disc', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'What is the approximate age of an embryo with 44 pairs of somites?', NULL, 'EMD1 2024-2025 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '26 days', 0),
  ((SELECT MAX(id) FROM questions), 'B', '30 days', 0),
  ((SELECT MAX(id) FROM questions), 'C', '35 days', 0),
  ((SELECT MAX(id) FROM questions), 'D', '40 days', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Put the stages of the evolution of the human placenta in the exact order:
A – The villi spread and form a cytotrophoblastic shell.
B – The trophoblast emits the syncytiotrophoblast, then turns into cytotrophoblast.
C – The syncytiotrophoblast hollows out lacunae that will contain maternal blood.
D – At the end of the third month, all parts of the chorion degenerate except, where the umbilical cord is implanted, the villi that form the placenta.
Choose the right combination:', NULL, 'EMD1 2024-2025 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A B C D', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'B C D A', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'C A B D', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'B C A D', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About diagram X (figure), indicate the correct answer(s):', NULL, 'EMD1 2024-2025 Q22', 's1/embryology-2025-q22.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It represents an embryo at the end of the 4th week', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The approximate age of this embryo is 35 days', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'At this stage the anterior neuropore is closed', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'At this stage the primitive umbilical cord is formed by the end of the allantois, the vitelline duct and the yolk sac', 1);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the same diagram X (figure):', NULL, 'EMD1 2024-2025 Q23', 's1/embryology-2025-q22.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Element 1 represents the umbilical cord', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Element 2 is of ectoblastic origin', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Element 3 plays an essential role in setting up the vascular elements', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Element 4 is set up in the 2nd week of embryonic development', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The "most identical" identical twins have the following characteristic(s):', NULL, 'EMD1 2024-2025 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Monozygotic diamniotic monochorionic', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Monozygotic monoamniotic monochorionic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Monozygotic diamniotic dichorionic', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Intolerance to cross-grafts', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the diagram (figure), indicate the correct answer(s):', NULL, 'EMD1 2024-2025 Q25', 's1/embryology-2025-q25.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a phenomenon characteristic of the 2nd week of development', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is hatching', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the beginning of blastocyst adhesion to the endometrium', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is the formation of the secondary yolk sac (lecithocele)', 1);
