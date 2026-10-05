-- Generated from data/s1-embryology-emd1-2023.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the gonadal activity of both sexes, which statement(s) is (are) correct?', 'No official answer key for this exam — answers worked out from the course.', 'EMD1 2022-2023 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In women this activity is cyclic, whereas in men it is discontinuous', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The male gonadal sex needs the hormone AMH for its differentiation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Oogonia are observed in the cortical zone of the embryonic ovary', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Spermatogonia enter a quiescent state', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about germ cells, which is (are) correct?', 'No official key.', 'EMD1 2022-2023 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Spermatogonia disappear at puberty', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Spermatogonia are active from puberty onward', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Primary oocytes appear during intrauterine life', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Spermatids are haploid cells', 1);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The antral (cavitary) follicle is characterized by:', 'No official key — the mature pre-ovulatory follicle is the Graafian follicle.', 'EMD1 2022-2023 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A compact, solid structure', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The absence of thecae', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Progressive enlargement of the follicular cavity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A mature pre-ovulatory entity', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning oogenesis, the differentiation phase:', 'No official key — differentiation (oogonia → primary oocytes) occurs in fetal life; the peak stock is about 7 million.', 'EMD1 2022-2023 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Designates the transformation of primary oocytes into secondary oocytes', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Takes place during intrauterine life', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Results in a stock of 300 million primary oocytes', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Does not exist', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The uterine cycle is characterized by cyclic changes of the uterine mucosa over an average of 28 days, alternating destruction and reconstruction. Order these events chronologically:
A – formation of the "uterine lace": arteries become spiral and glands long and tortuous
B – menstrual period: endometrium very thin due to its destruction
C – secretory phase = glycogen production to nourish the embryo; the endometrium reaches its maximal thickness and prepares to receive the embryo
D – the endometrium regenerates and proliferates, with tubular gland elongation and blood vessel development', 'No official key — proliferative phase, secretory phase, uterine lace (premenstrual), then menstruation.', 'EMD1 2022-2023 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A B D C', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'D C A B', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'B A C D', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'B D A C', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which hormonal event triggers ovulation?', 'No official key.', 'EMD1 2022-2023 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The sudden drop in FSH', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The concomitant rise of estrogens and progesterone', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The LH surge (peak)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'None of the above', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The menstrual cycle is defined by the succession:', 'No official key.', 'EMD1 2022-2023 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ovulation – luteal phase – progestational phase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Estrogenic phase – ovulation – progestational phase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Progestational phase – ovulation – luteal phase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'None of the above', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'During ovulation:', 'No official key.', 'EMD1 2022-2023 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The primary oocyte becomes a secondary oocyte with emission of the 1st polar body', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The primary oocyte divides into two identical cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The secondary oocyte is released from the ovary to be picked up by the uterine tube', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'None of the above', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The corpus luteum:', 'No official key — hCG maintains it.', 'EMD1 2022-2023 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Degenerates if there is fertilization', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Develops into the Graafian follicle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Secretes progesterone and estrogen', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Receives a hormonal signal to persist in case of fertilization', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The enzymatic equipment of the acrosome:', 'No official key.', 'EMD1 2022-2023 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is at the origin of the "cortical reaction"', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Allows dissolution of the envelope of the secondary oocyte, i.e. the Slavjanski membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Causes decapacitation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is at the origin of the acrosome reaction', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Amphimixis (karyogamy):', 'No official key.', 'EMD1 2022-2023 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Occurs 30 hours after fertilization', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Designates the fusion of the male and female pronuclei into a single nucleus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is defined as the two-blastomere stage of the egg', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is seen just after segmentation', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Fertilization has the following consequence(s):', 'No official key — genetic sex depends on the spermatozoon; fertilization restores diploidy.', 'EMD1 2022-2023 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The 2nd physiological awakening of the egg', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Initiation of segmentation (cleavage)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Determination of the genetic sex of the egg, which depends on the sex chromosome carried by the oocyte', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Restoration of haploidy', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the anterior pituitary hormones listed below, which is (are) active on ovarian function?', 'No official key — hCG is placental, not pituitary.', 'EMD1 2022-2023 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'GH', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'FSH', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'LH', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'hCG', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the reaction of the endometrium to implantation:', 'No official key — this is the decidual reaction.', 'EMD1 2022-2023 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occurs on day 7 and starts at the implantation zone in contact with the syncytiotrophoblast', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is an immunological reaction: invasion by lymphocytes with increased vascularization', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is also called the acrosomal reaction', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Stromal cells become larger, fill with glycogen and lipids and form decidual cells', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'For implantation to succeed, which condition(s) must be met?', 'No official key — the implantation window is around day 20–21, under estrogen and progesterone.', 'EMD1 2022-2023 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The endometrium must be ready to be colonized by the embryonic trophoblast', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a true graft that can only succeed thanks to the "anti-rejection" action of the trophoblast, which tends to "mask" embryonic antigens', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Implantation can only occur during a normal cycle around day 15', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'When the mucosa has received ideal hormonal stimulation, essentially FSH and LH', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the primitive streak, which assertion(s) is (are) correct? It:', 'No official key — Hensen''s node is at its cranial end.', 'EMD1 2022-2023 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is set up at the beginning of the 3rd week of development', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Forms a cellular groove along the cephalo-caudal axis of the embryo', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is bounded posteriorly by Hensen''s node', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is followed by the appearance of the mesoblast', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Put in exact chronological order the events of the 3rd week of embryonic development:
A – appearance of a depression marking a primitive streak
B – formation of a dorsal notochord
C – ectoblast cells with mesoblastic potential are formed
D – a median thickening of the ectoblast marks the start of neurulation
Choose the right combination:', 'No official key.', 'EMD1 2022-2023 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A D C B', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'B C D A', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A C B D', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A D B C', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among these hormones, which is (are) NOT secreted by the placenta during pregnancy?', 'No official key.', 'EMD1 2022-2023 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'hCG', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Prolactin', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'FSH', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'AMH', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'At which developmental period does the amniotic cavity form?', 'No official key — around day 8.', 'EMD1 2022-2023 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'At the end of nidation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'When the trophoblast forms', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'At the beginning of the 2nd week of development', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'When the third germ layer forms', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which statement(s) about the diagram (figure) is (are) correct?', 'No official key — the didermic disc lies between the amniotic cavity and the primary yolk sac.', 'EMD1 2022-2023 Q20', 's1/embryology-2023-q20.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is an embryo at the trabecular (lacunar) stage', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Arrow 2 points to the uterine cavity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Arrow 3 points to the follicular cavity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The didermic disc lies between two cavities', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the second week of embryonic development, it:', 'No official key — blastulation is week 1; the prechordal plate appears at the end of week 2.', 'EMD1 2022-2023 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is characterized by blastulation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Leads to the formation of a didermic embryo', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Marks the establishment of blood exchanges between the mother and the embryo', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'At its end, is characterized by a pre-gastrulation phenomenon', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following statements about somites, which is (are) correct?', 'No official key — somites come from paraxial mesoderm, appear in the occipital region from about day 20.', 'EMD1 2022-2023 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They originate from the intermediate mesoblast', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They are cell masses (sclero-myo-dermatome)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They start to appear in the posterior dorsal region of the embryo', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The first pairs appear on day 21', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the allantois:', 'No official key — the proximal part persists as the urachus.', 'EMD1 2022-2023 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a diverticulum formed by invagination of the endoderm', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The allantoic epithelium is lined by extra-embryonic mesenchyme forming the splanchnopleure', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The intra-embryonic (proximal) part regresses rapidly before the end of the 3rd week', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The extra-embryonic (distal) part is a constituent of the umbilical cord', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the embryological elements below, which undergo an inductive effect from other embryological structures?', 'No official key — the neural tube is induced by the notochord.', 'EMD1 2022-2023 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primordial gonocytes', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The notochord', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The neural tube', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The primitive streak', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'At which developmental stages can monozygotic twins form?', 'No official key.', 'EMD1 2022-2023 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1st week', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2nd week', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4th week', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'At fertilization', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'What is the approximate age of an embryo with 12 pairs of somites?', 'No official key — the closest option.', 'EMD1 2022-2023 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '26 days', 1),
  ((SELECT MAX(id) FROM questions), 'B', '30 days', 0),
  ((SELECT MAX(id) FROM questions), 'C', '32 days', 0),
  ((SELECT MAX(id) FROM questions), 'D', '34 days', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which statement(s) about the diagram (figure) is (are) correct?', 'No official key — the figure shows spermiogenesis (part of spermatogenesis), a transformation, not a division; mitochondria are in the middle piece.', 'EMD1 2022-2023 Q27', 's1/embryology-2023-q27.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It shows the process of spermatogenesis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It shows the division of a spermatid into a spermatozoon', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The enzymatic capital is contained in the acrosome', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The energy capital is contained in the end piece of the flagellum', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the following elements, which enter into the constitution of the placenta?', 'No official key.', 'EMD1 2022-2023 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Syncytiotrophoblast', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cytotrophoblast', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Extra-embryonic mesenchyme', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Amnion', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Among the characteristics of the embryonic annexes, which is (are) correct? They:', 'No official key.', 'EMD1 2022-2023 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Form independently of the fertilized oocyte', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Have the same karyotype and genotype as the embryo/fetus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are used for diagnostic purposes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Appear late because the human egg is alecithal', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The "most identical" identical twins have the following characteristic(s):', 'No official key.', 'EMD1 2022-2023 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Monozygotic diamniotic monochorionic', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Monozygotic monoamniotic monochorionic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Monozygotic diamniotic dichorionic', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Tolerance to cross-grafts', 1);
