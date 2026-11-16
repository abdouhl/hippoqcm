-- Generated from data/lessons/s1-embryology-oogenesis.json — lesson "Oogenesis": 19 exam + 26 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Oogenesis', 's1/embryology/oogenesis.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q2',
    'EMD1 2022-2023 Q3',
    'EMD1 2022-2023 Q4',
    'EMD1 2022-2023 Q5',
    'EMD1 2022-2023 Q6',
    'EMD1 2022-2023 Q7',
    'EMD1 2022-2023 Q8',
    'EMD1 2022-2023 Q9',
    'EMD1 2022-2023 Q13',
    'EMD1 2023-2024 Q1',
    'EMD1 2024-2025 Q1',
    'EMD1 2024-2025 Q3',
    'EMD1 2024-2025 Q4',
    'EMD1 2024-2025 Q14',
    'EMD1 2024-2025 Q18',
    'EMD1 2025-2026 Q3',
    'EMD1 2025-2026 Q9',
    'EMD1 2025-2026 Q13',
    'EMD1 2025-2026 Q14'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the gonadal activity of the ovary:', 'The ovary has an endocrine (hormones) and an exocrine (gametes) function. Female reproductive activity is CYCLICAL and limited to puberty–menopause; male activity is continuous and only declines with age.', 'Lesson: Oogenesis', NULL, 'generated', 1, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its endocrine function is the secretion of estrogens and progesterone', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its exocrine function corresponds to oogenesis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'In women, reproductive activity is continuous between puberty and menopause', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'In men, gonadal activity declines with age but does not completely cease', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the ovary:', 'Folliculogenesis happens in the cortex (periphery); the medulla is the vascular central part. Each ovary is about 1 cm wide and 3 cm long, not the reverse.', 'Lesson: Oogenesis', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ovarian cortex contains the various stages of folliculogenesis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The medulla is loose connective tissue rich in blood and lymphatic vessels and nerves', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Each ovary measures about 3 cm in width and 1 cm in length', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Folliculogenesis takes place in the medulla', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the female genital tract:', 'The myometrium is a thick smooth-muscle layer; it is the endometrium (mucosa) whose thickness, vascularization and secretion vary with the cycle.', 'Lesson: Oogenesis', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The Fallopian tubes measure 10 to 14 cm and partially cover the ovaries', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'From outside to inside, the uterine wall comprises the serosa, the myometrium and the endometrium', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cervical mucus selects and facilitates the passage of spermatozoa into the uterine cavity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The myometrium is the layer whose thickness and secretory activity vary during the cycle', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the primordial follicle:', 'Between birth and puberty folliculogenesis is quiescent and about 60% of the reserve degenerates; the stock is non-renewable.', 'Lesson: Oogenesis', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primordial follicles start to form around the 7th month of gestation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It contains a primary oocyte arrested in prophase I, surrounded by a few flattened follicular cells', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At birth each ovary contains about one million primordial follicles', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Between birth and puberty folliculogenesis is active and the follicular reserve increases', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'An ovary contains about 1,000,000 primordial follicles at birth, and about 60% of them degenerate before puberty. About how many remain in this ovary at puberty?', '40% of 1,000,000 = 400,000 per ovary, the figure the lesson gives for puberty. 600,000 is the number that degenerated, not the number left.', 'Lesson: Oogenesis', NULL, 'generated', 3, 3, 1, 'What remains is 100 − 60 = 40%: 0.4 × 10⁶ = 4 × 10⁵ = 400,000. 600,000 is the trap (the degenerated part); 4,000,000 is more than you started with, so it is impossible.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '60,000', 0),
  ((SELECT MAX(id) FROM questions), 'B', '400,000', 1),
  ((SELECT MAX(id) FROM questions), 'C', '600,000', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4,000,000', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which features distinguish a primary follicle from a primordial follicle?', 'Both follicles contain a primary oocyte arrested in prophase I, so this does not distinguish them. The primary follicle adds cuboidal cells, a zona pellucida, a theca and the Slavjanski membrane.', 'Lesson: Oogenesis', NULL, 'generated', 4, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A single layer of cuboidal (instead of flattened) follicular cells', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The appearance of a zona pellucida between the oocyte and the follicular cells', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'An oocyte arrested in prophase I', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'An undifferentiated theca separated from the follicular cells by the Slavjanski membrane', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the secondary and tertiary (cavitary) follicles:', 'The theca splits into an inner CELLULAR theca interna (which becomes estrogen-secreting) and an outer FIBROUS theca externa.', 'Lesson: Oogenesis', NULL, 'generated', 4, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In the secondary follicle, the follicular cell layers multiply to form the granulosa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The theca interna is fibrous and the theca externa is cellular', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In the tertiary follicle, fluid-filled antral cavities appear within the granulosa', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In the tertiary follicle, the theca interna cells acquire the ability to secrete estrogens', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the mature (Graafian) follicle:', 'The Graafian follicle is about 2.5 cm wide. When meiosis I is completed a few hours before ovulation, the first polar body stays WITHIN the zona pellucida.', 'Lesson: Oogenesis', NULL, 'generated', 5, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It reaches about 2.5 mm in diameter', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its antral cavities fuse into a single antrum folliculi filled with follicular fluid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The innermost layer of the cumulus oophorus, adjacent to the zona pellucida, becomes the corona radiata', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The first polar body is expelled outside the zona pellucida', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the histological section (figure), which statement(s) is (are) correct?', '1 = oocyte, 2 = zona pellucida, 3 = corona radiata, 4 = granulosa, 5 = antrum folliculi. A single large antrum marks the mature follicle; layer 4 is the granulosa (follicular cells), not a theca.', 'Lesson: Oogenesis', 's1/lessons/oogenesis-g1.png', 'generated', 5, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a mature (Graafian) follicle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cavity 5 is filled with follicular fluid and results from the fusion of the antral cavities', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Layer 3 derives from the innermost layer of the cumulus oophorus, next to structure 2', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Layer 4 is the theca interna', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About ovulation:', 'The primary oocyte completes meiosis I a few hours before ovulation, so the expelled cell is the SECONDARY oocyte arrested in metaphase II.', 'Lesson: Oogenesis', NULL, 'generated', 6, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occurs under the influence of an LH and FSH surge and of the pressure of the follicular fluid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The cell expelled from the ovary is the primary oocyte', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The oocyte leaves with the zona pellucida, the corona radiata and part of the cumulus oophorus, and enters the outer third of the Fallopian tube', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It occurs about 36 hours after the LH peak', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'The yellowish colour of the corpus luteum is due to:', 'After the Slavjanski membrane disappears, thecal capillaries grow into the granulosa and the follicular cells become luteinized cells secreting lutein pigment, which gives the yellow colour (luteinization).', 'Lesson: Oogenesis', NULL, 'generated', 6, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lutein pigment secreted by the luteinized follicular cells', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Estrogens secreted by the theca interna', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The thecal capillaries that invade the granulosa', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The remains of the degenerating oocyte', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the fate of the corpus luteum:', 'Without fertilization it is a menstrual (progestational) corpus luteum living about 14 days; only with fertilization does it become gestational and persist about three months.', 'Lesson: Oogenesis', NULL, 'generated', 6, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In the absence of fertilization it becomes a gestational corpus luteum', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'In case of fertilization it persists for about three months, then the placenta takes over steroid production', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its degeneration gives the corpus albicans, which is phagocytosed by macrophages', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The menstrual (progestational) corpus luteum lives about three months', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'In the corpus luteum, which cell–hormone pairs are correct?', 'Granulosa cells become lutein cells that secrete progesterone, while the theca interna keeps producing estrogens.', 'Lesson: Oogenesis', NULL, 'generated', 6, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lutein cells derived from the granulosa → progesterone', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Theca interna → estrogens', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Granulosa lutein cells → estrogens only', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Theca externa → progesterone', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'A 19-year-old competitive runner with low body weight consults for irregular cycles. Based on the lesson:', 'Both excess weight (obesity) and low weight or eating disorders disturb ovulation; vigorous exercise can delay it, and these dysfunctions are generally reversible.', 'Lesson: Oogenesis', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Intense physical activity may delay ovulation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Low body weight can disturb ovulation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Such ovulatory disorders are generally reversible', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Obesity, by contrast, has no effect on ovulation', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the uterine cycle (average 28 days):', 'The ''uterine lace'' (spiral arteries, tortuous glands) belongs to the secretory phase; the proliferative phase is regeneration with gland elongation. 28 days is only a conventional reference.', 'Lesson: Oogenesis', NULL, 'generated', 7, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The endometrium reaches its maximal thickness during the secretory phase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The proliferative phase is marked by the ''uterine lace'' pattern', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The average 28-day duration is identical in all women', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The first day of menstruation marks the beginning of a new cycle', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'In the absence of fertilization, menstruation is triggered by:', 'The progestational corpus luteum regresses, progesterone and estrogen levels fall, and the endometrium detaches.', 'Lesson: Oogenesis', NULL, 'generated', 7, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Regression of the corpus luteum 10–12 days later, with a sharp fall in progesterone and estrogens', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The LH surge', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A rise in estrogen secretion', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The formation of a new corpus luteum', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the diagram of the uterine lining (figure), which statement(s) is (are) correct?', 'I = menstrual phase (days 0–4), II = proliferative phase (days 4–14), III = secretory phase (days 14–28), which follows ovulation and the formation of the corpus luteum.', 'Lesson: Oogenesis', 's1/lessons/oogenesis-g2.png', 'generated', 8, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In phase I, the endometrium is shed, leaving a thin residual layer', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Phase II corresponds to days 14–28', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In phase III, glands become tortuous and glycogen secretion increases', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The corpus luteum shown above phase III contains lutein cells secreting progesterone', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the multiplication phase of oogenesis:', 'Oogonia lie in the CORTICAL zone of the embryonic ovary; they multiply only before birth, giving a non-renewable stock of primary oocytes.', 'Lesson: Oogenesis', NULL, 'generated', 8, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It involves the oogonia, diploid stem cells dividing by mitosis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It occurs during embryonic and fetal life', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Oogonia are located in the medullary zone of the embryonic ovary', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Most oogonia degenerate around the 7th month of intrauterine life', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which chromosome number / DNA content pairs are correct?', 'Meiosis I splits the primary oocyte (2n, 4q) into a secondary oocyte and a first polar body that are both n, 2q. Oogonia are diploid (2n).', 'Lesson: Oogenesis', NULL, 'generated', 9, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primary oocyte after DNA replication: 2n, 4q', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Secondary oocyte: n, 2q', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'First polar body: n, q', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Oogonium: n, 2q', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the growth phase of oogenesis:', 'All four are stated in the lesson: of about 400,000 follicles left at puberty, fewer than 500 ovulate.', 'Lesson: Oogenesis', NULL, 'generated', 9, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The primary oocyte greatly increases in size', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It involves intense synthesis of RNA and proteins needed for fertilization and early development', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Primary oocytes do not complete meiosis I before puberty because of a meiosis-inhibiting factor secreted by follicular cells', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Fewer than 500 oocytes will reach ovulation during a woman''s reproductive life', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the maturation phase of oogenesis:', 'Meiosis II arrests at METAPHASE II and is only completed if a spermatozoon fertilizes the oocyte; otherwise the oocyte is expelled, still in metaphase II, and degenerates.', 'Lesson: Oogenesis', NULL, 'generated', 9, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The first meiotic division is highly unequal, the secondary oocyte keeping most of the cytoplasm', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The second meiotic division arrests in prophase II', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Without fertilization, the oocyte completes meiosis and then degenerates', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'If fertilization occurs, meiosis is completed, giving the ovum (ovotide) and a second polar body', 1);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'A primary oocyte completes oogenesis after fertilization. How many ova (functional female gametes) does it give?', 'Female meiosis is unequal: one primary oocyte gives a single ovum, the other products being polar bodies. Compare spermatogenesis, where one spermatocyte I gives 4 spermatids.', 'Lesson: Oogenesis', NULL, 'generated', 9, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4', 0),
  ((SELECT MAX(id) FROM questions), 'D', '8', 0);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Concerning the diagram of oogenesis (figure), which statement(s) is (are) correct?', '1 = oogonium, 2 = primary oocyte, 3 = secondary oocyte (arrested in METAPHASE II), 4 = first polar body, 5 = ovum, which forms only if a spermatozoon penetrates.', 'Lesson: Oogenesis', 's1/lessons/oogenesis-g3.png', 'generated', 10, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cell 1 multiplies by mitosis during embryonic and fetal life', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cell 2 is arrested in prophase I and is already present at birth', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cell 3 is arrested in metaphase I', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Cell 5 forms even in the absence of fertilization', 0);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'About the hypothalamic–pituitary control of the ovary:', 'Feedback is the other way round: progesterone inhibits LH and estrogens inhibit FSH. GnRH pulses occur two to three times per HOUR.', 'Lesson: Oogenesis', NULL, 'generated', 10, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'FSH rises during the follicular (preovulatory) phase and peaks together with LH at ovulation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The main LH surge occurs about 36 hours before ovulation and induces progesterone secretion', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Progesterone inhibits FSH secretion, while estrogens inhibit LH release', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'GnRH is released at a rate of two to three pulses per day', 0);

-- G25
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'Which hormone promotes follicular growth and estradiol production?', 'FSH promotes follicular growth and estradiol production; LH triggers ovulation and progesterone secretion, and GnRH acts on the pituitary.', 'Lesson: Oogenesis', NULL, 'generated', 11, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'FSH', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'LH', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Progesterone', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'GnRH', 0);

-- G26
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology'), 'In a 25-year-old woman, the oocytes held in the primordial follicles of her ovaries:', 'The stock of primary oocytes (2n) is formed in fetal life and is non-renewable; oogonia no longer divide after birth.', 'Lesson: Oogenesis', NULL, 'generated', 9, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Embryology') AND title = 'Oogenesis'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are primary oocytes arrested in prophase I', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Were formed before her birth', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are continuously renewed by mitoses of oogonia', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Are haploid', 0);
