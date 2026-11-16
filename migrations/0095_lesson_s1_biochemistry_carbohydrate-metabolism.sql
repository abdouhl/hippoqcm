-- Generated from data/lessons/s1-biochemistry-carbohydrate-metabolism.json — lesson "Carbohydrate metabolism": 43 exam + 37 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Carbohydrate metabolism', 's1/biochemistry/carbohydrate-metabolism.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q8',
    'EMD1 2022-2023 Q9',
    'EMD1 2022-2023 Q10',
    'EMD1 2022-2023 Q12',
    'EMD1 2022-2023 Q13',
    'EMD1 2022-2023 Q14',
    'EMD1 2022-2023 Q15',
    'EMD1 2022-2023 Q16',
    'EMD1 2022-2023 Q17',
    'EMD1 2022-2023 Q18',
    'EMD1 2022-2023 Q20',
    'EMD1 2022-2023 Q21',
    'EMD1 2022-2023 Q22',
    'EMD1 2023-2024 Q8',
    'EMD1 2023-2024 Q9',
    'EMD1 2023-2024 Q10',
    'EMD1 2023-2024 Q11',
    'EMD1 2023-2024 Q13',
    'EMD1 2023-2024 Q16',
    'EMD1 2023-2024 Q17',
    'EMD1 2023-2024 Q19',
    'EMD1 2023-2024 Q21',
    'EMD1 2023-2024 Q22',
    'EMD1 2023-2024 Q23',
    'EMD1 2024-2025 Q4',
    'EMD1 2024-2025 Q5',
    'EMD1 2024-2025 Q6',
    'EMD1 2024-2025 Q7',
    'EMD1 2024-2025 Q8',
    'EMD1 2024-2025 Q9',
    'EMD1 2024-2025 Q10',
    'EMD1 2024-2025 Q11',
    'EMD1 2024-2025 Q12',
    'EMD1 2024-2025 Q13',
    'EMD1 2024-2025 Q14',
    'EMD1 2025-2026 Q8',
    'EMD1 2025-2026 Q9',
    'EMD1 2025-2026 Q10',
    'EMD1 2025-2026 Q11',
    'EMD1 2025-2026 Q12',
    'EMD1 2025-2026 Q13',
    'EMD1 2025-2026 Q14',
    'EMD1 2025-2026 Q15'
  );
UPDATE questions SET calc = 1, mental = 'Fructose-6-P has already passed the hexokinase step, so only PFK-1 costs 1 ATP; the payoff phase still gives 4 ATP (reactions 7 and 10, ×2). Going to lactate, the NADH is spent on lactate dehydrogenase, so no respiratory-chain ATP: 4 − 1 = 3 ATP.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q13';
UPDATE questions SET calc = 1, mental = 'Pyruvate → acetyl-CoA by PDH gives 1 NADH = 3 ATP; one Krebs turn gives 12 ATP (3 NADH = 9, 1 FADH₂ = 2, 1 GTP = 1). 3 + 12 = 15 ATP. 2 and 8 are glycolysis values, 12 is acetyl-CoA alone.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND origin = 'exam' AND source = 'EMD1 2023-2024 Q11';

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the glycolysis reactions numbered 1 to 5 in the figure:', '1 = hexokinase, 2 = phosphohexose isomerase (G6P ⇌ F6P), 3 = PFK-1 (the major, irreversible regulatory step), 4 = aldolase (→ G3P + DHAP), 5 = triose phosphate isomerase. Triose phosphate isomerase acts on trioses, not on G6P.', 'Lesson: Carbohydrate metabolism', 's1/lessons/carbohydrate-metabolism-g1.png', 'generated', 13, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Reaction 1 is catalyzed by hexokinase (or glucokinase in the liver)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Reaction 2 is catalyzed by triose phosphate isomerase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Reaction 3 is catalyzed by phosphofructokinase-1 and irreversibly commits glucose to glycolysis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reaction 4 is catalyzed by aldolase and cleaves fructose-1,6-bisphosphate into two triose phosphates', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the glycolysis reactions numbered 6 to 10 in the figure:', '6 = glyceraldehyde-3-P dehydrogenase (NADH), 7 = phosphoglycerate kinase (1st ATP), 8 = phosphoglycerate mutase (reversible), 9 = enolase (−H₂O), 10 = pyruvate kinase (2nd ATP). The three irreversible steps are 1, 3 and 10.', 'Lesson: Carbohydrate metabolism', 's1/lessons/carbohydrate-metabolism-g2.png', 'generated', 13, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Reaction 6 is catalyzed by glyceraldehyde-3-phosphate dehydrogenase and reduces NAD⁺', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Reaction 7 is catalyzed by pyruvate kinase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Reaction 9 is catalyzed by enolase and releases water', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reaction 8 is one of the three irreversible steps of glycolysis', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the energy balance of glycolysis (glucose → 2 pyruvate):', 'Two reactions consume 1 ATP each (hexokinase, PFK-1) and two produce 2 ATP each (7 and 10): net 2 ATP. Aerobically, the 2 NADH,H⁺ give 3 ATP each (not 2): 2 + 6 = 8 ATP.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 17, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The net gain is 2 ATP per glucose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The 4 ATP formed come from the reactions catalyzed by phosphoglycerate kinase and pyruvate kinase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Under aerobic conditions the total yield is 8 ATP', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Each of the 2 NADH,H⁺ yields 2 ATP in the respiratory chain', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which glycolytic enzymes catalyze irreversible reactions that gluconeogenesis must bypass?', 'Steps 1, 3 and 10 (hexokinase, PFK-1, pyruvate kinase) are irreversible and are bypassed by glucose-6-phosphatase, fructose-1,6-bisphosphatase and pyruvate carboxylase + PEPCK. Phosphoglycerate kinase is reversible and shared by both pathways.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 55, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hexokinase (glucokinase)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Phosphoglycerate kinase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Phosphofructokinase-1', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pyruvate kinase', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The phosphoryl groups carried by glycolytic intermediates:', 'The phosphate gives a negative charge (trapping the intermediate inside the cell), conserves energy for ATP synthesis and helps enzyme–substrate recognition. It comes from ATP or Pi, not from NADH.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 14, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Give them a net negative charge at pH 7, which prevents them from leaving the cell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Allow them to diffuse freely through the plasma membrane into the blood', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Are supplied by NADH,H⁺', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Act as binding and recognition elements for the enzymes', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the allosteric regulation of phosphofructokinase-1 (PFK-1):', 'PFK-1 activators: AMP, ADP, fructose-2,6-bisphosphate, fructose-6-phosphate; inhibitors: ATP, citrate. Fructose-6-phosphate is its substrate and an activator, not an inhibitor.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 19, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is activated by AMP and fructose-2,6-bisphosphate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is inhibited by ATP and citrate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is inhibited by fructose-6-phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It catalyzes the most rate-limiting step of glycolysis', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the hormonal regulation of glycolysis:', 'Insulin raises the amounts of the three key enzymes (gene transcription), which speeds glycolysis; glucagon does the opposite and preserves glucose for the brain and kidneys. Insulin is not an allosteric effector — pyruvate kinase is allosterically inhibited by ATP.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 18, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'After a meal, insulin increases hepatic glucokinase, PFK-1 and pyruvate kinase by activating the transcription of their genes', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'During fasting, glucagon inhibits glycolysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Insulin acts mainly by allosteric inhibition of pyruvate kinase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Inhibition of hepatic glycolysis by glucagon spares glucose for glucose-dependent tissues such as the brain and kidneys', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'During a 100 m sprint, the quadriceps contract intensely with little oxygen. In these muscle cells:', 'Without oxygen, cytosolic NADH cannot feed the respiratory chain; lactate dehydrogenase reoxidizes it while reducing pyruvate to lactate, and the NAD⁺ returns to step 6. Pyruvate decarboxylase/alcoholic fermentation is found in yeasts, not in human muscle.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 21, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The NADH from glycolysis is used to reduce pyruvate to lactate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The reaction is catalyzed by lactate dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The regenerated NAD⁺ is reused by glyceraldehyde-3-phosphate dehydrogenase, so glycolysis can continue', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pyruvate is converted to ethanol by pyruvate decarboxylase', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About alcoholic fermentation:', 'In yeasts, pyruvate is decarboxylated (releasing CO₂) then reduced by alcohol dehydrogenase, using NADH: glucose → 2 ethanol + 2 CO₂. Lactate is the product of lactic fermentation.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 21, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occurs in yeasts and certain microorganisms', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its end product is lactate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It uses pyruvate decarboxylase then alcohol dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It releases CO₂', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About pyruvate dehydrogenase (PDH):', 'PDH catalyzes the mitochondrial oxidative decarboxylation of pyruvate with five cofactors; it is activated by pyruvate, NAD⁺, CoA-SH, AMP and inhibited by its products NADH, acetyl-CoA and ATP. The reaction is highly exergonic, hence irreversible.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 22, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It converts pyruvate into acetyl-CoA in the mitochondrion', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It requires TPP, lipoic acid, CoA-SH, FAD and NAD⁺ as cofactors', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The reaction it catalyzes is reversible', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is inhibited by NADH, acetyl-CoA and ATP', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Isolated mitochondria completely oxidize 2 molecules of pyruvate to CO₂ and H₂O. Using the lesson''s values (3 ATP/NADH, 2 ATP/FADH₂), how many ATP are produced?', 'Per pyruvate: PDH gives 1 NADH (3 ATP) and the Krebs cycle 12 ATP = 15 ATP; for two pyruvates, 30 ATP. 24 is two acetyl-CoA only; 38 includes glycolysis.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 22, 2, 1, 'Memorise 15 per pyruvate (3 + 12) and double it. Anything ending in the glycolysis portion (38) is excluded because the mitochondria started from pyruvate, not glucose.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '15', 0),
  ((SELECT MAX(id) FROM questions), 'B', '24', 0),
  ((SELECT MAX(id) FROM questions), 'C', '30', 1),
  ((SELECT MAX(id) FROM questions), 'D', '38', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the Krebs cycle:', 'All four are stated on the lesson slide: citrate formation, 8 reactions (succinate dehydrogenase is the membrane-bound one), 3 NADH + 1 FADH₂ per turn, and loss of two carbons as CO₂.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 25, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Acetyl-CoA (2 C) condenses with oxaloacetate (4 C) to form citrate (6 C)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It has eight reactions: seven soluble enzymes and one enzyme anchored in the inner mitochondrial membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Each turn produces 3 NADH,H⁺ and 1 FADH₂', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Two carbons are released as CO₂ per turn, allowing oxaloacetate to be regenerated', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which Krebs cycle enzymes reduce NAD⁺ to NADH,H⁺?', 'The three NADH of the cycle come from isocitrate → α-ketoglutarate, α-ketoglutarate → succinyl-CoA and malate → oxaloacetate. Succinate dehydrogenase uses FAD (→ FADH₂).', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 25, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Isocitrate dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'α-Ketoglutarate dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Succinate dehydrogenase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Malate dehydrogenase', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About succinate dehydrogenase:', 'Succinate dehydrogenase oxidizes succinate to fumarate, reducing FAD to FADH₂. It is the only Krebs enzyme anchored in the inner mitochondrial membrane; the two CO₂ come from isocitrate and α-ketoglutarate dehydrogenases.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 25, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It converts succinate into fumarate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its coenzyme is FAD', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a soluble enzyme of the mitochondrial matrix', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It releases CO₂', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'A tissue oxidizes 3 molecules of acetyl-CoA through the Krebs cycle and the respiratory chain. How many ATP are formed (lesson values)?', 'One turn = 3 NADH (9 ATP) + 1 FADH₂ (2 ATP) + 1 GTP (1 ATP) = 12 ATP; 3 turns = 36 ATP. 45 would be 3 pyruvates (15 each).', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 26, 4, 1, '12 per acetyl-CoA × 3 = 36. Don''t confuse with 15 per pyruvate (which adds the PDH NADH).');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '12', 0),
  ((SELECT MAX(id) FROM questions), 'B', '24', 0),
  ((SELECT MAX(id) FROM questions), 'C', '36', 1),
  ((SELECT MAX(id) FROM questions), 'D', '45', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the regulation of the Krebs cycle:', 'The cycle follows the energy state: ATP, NADH and succinyl-CoA (high energy) inhibit it; ADP and Ca²⁺ activate it. The three regulated enzymes are citrate synthase, isocitrate DH and α-KG DH. The lesson describes no hormonal transcription control for it.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 27, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is inhibited by ATP, NADH and succinyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is activated by ATP and NADH', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Citrate synthase, isocitrate dehydrogenase and α-ketoglutarate dehydrogenase are its main regulated enzymes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is regulated mainly by insulin-induced gene transcription', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The Krebs cycle is said to be amphibolic because:', 'Amphibolic = both catabolic (acetyl-CoA oxidation) and anabolic (precursors for biosynthesis); the lesson calls it the principal crossroads of this type. It is not purely anabolic.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 24, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It oxidizes acetyl-CoA to produce energy', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It supplies intermediates for the synthesis of amino acids, purine bases and heme', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is purely anabolic', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is the main metabolic crossroads between anabolism and catabolism', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the mitochondrial respiratory chain:', 'Complex I is NADH–CoQ oxidoreductase; complex II is succinate–CoQ oxidoreductase. The chain sits in the inner membrane, uses CoQ and cytochrome c as mobile carriers, and is controlled by ADP concentration.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 32, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is located in the inner mitochondrial membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Complex II is NADH–coenzyme Q oxidoreductase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Coenzyme Q and cytochrome c are mobile electron carriers', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its rate increases rapidly when ADP concentration rises', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the shuttles that transfer cytosolic NADH,H⁺ into the mitochondrion:', 'The inner membrane is impermeable to NADH: only its electrons are transferred, either to FAD (glycerol phosphate shuttle → FADH₂ → 2 ATP) or to mitochondrial NADH (malate–aspartate → 3 ATP), hence 36 or 38 ATP per glucose.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 35, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The glycerol phosphate shuttle operates in muscle and brain and yields 2 ATP per cytosolic NADH', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The malate–aspartate shuttle operates in liver, kidneys and heart and yields 3 ATP per cytosolic NADH', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cytosolic NADH itself crosses the inner mitochondrial membrane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Depending on the shuttle, one glucose yields 36 or 38 ATP', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'A glucose molecule is completely oxidized in a brain cell, where cytosolic NADH enters the mitochondrion by the glycerol phosphate shuttle. ATP yield (lesson values)?', 'The total of 38 ATP assumes 3 ATP per glycolytic NADH. With the glycerol phosphate shuttle, each of the 2 cytosolic NADH gives only 2 ATP (via FADH₂): 38 − 2 = 36 ATP.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 35, 2, 1, 'Start from 38 and subtract 1 ATP for each of the 2 glycolytic NADH (3 → 2): 36. 8 is aerobic glycolysis only.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '8', 0),
  ((SELECT MAX(id) FROM questions), 'B', '30', 0),
  ((SELECT MAX(id) FROM questions), 'C', '36', 1),
  ((SELECT MAX(id) FROM questions), 'D', '38', 0);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'In a muscle working without oxygen, glucose-1-phosphate released from glycogen is degraded to lactate. What is the ATP yield per glucose-1-phosphate?', 'Glucose-1-P → glucose-6-P (phosphoglucomutase) costs no ATP, so the hexokinase step is skipped: only PFK-1 consumes 1 ATP, and the payoff phase still yields 4 ATP: 4 − 1 = 3 ATP. The NADH is used by lactate dehydrogenase, so it gives no ATP.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 17, 2, 1, 'Free glucose: −2 + 4 = 2. Entering as glucose-1-P or glucose-6-P saves the hexokinase ATP: 3. Anaerobic → no NADH ATP.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3 ATP', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5 ATP', 0);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the enzymes in the green boxes of the figure:', 'Pyruvate carboxylase (mitochondrial, biotin, 1 ATP) + PEPCK (1 GTP), fructose-1,6-bisphosphatase and glucose-6-phosphatase replace pyruvate kinase, PFK-1 and hexokinase. Pyruvate carboxylase is strictly mitochondrial, and PEPCK uses GTP, not ATP.', 'Lesson: Carbohydrate metabolism', 's1/lessons/carbohydrate-metabolism-g3.png', 'generated', 54, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They bypass the three irreversible reactions of glycolysis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are all cytosolic', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'PEP carboxykinase consumes ATP', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Pyruvate carboxylase requires biotin (vitamin B8)', 1);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About gluconeogenesis in humans:', 'Gluconeogenesis costs 6 ATP equivalents per glucose (4 ATP + 2 GTP) — three times the 2 ATP gained by glycolysis. Pyruvate is carboxylated inside the mitochondrial matrix by pyruvate carboxylase.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 51, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'About 90% of new glucose is made in the liver, 10% in the kidneys and intestinal epithelium', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It does not occur in muscle or brain', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It consumes 2 ATP per glucose formed from 2 pyruvates', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its first reaction, pyruvate → oxaloacetate, takes place in the cytosol', 0);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About gluconeogenic precursors and their entry points:', 'Entry points: pyruvate (lactate, alanine), PEP via Krebs intermediates (glucogenic amino acids, propionate from odd-chain fatty acids), DHAP (glycerol). In humans acetyl-CoA cannot be converted into glucose, so fatty acids are not gluconeogenic.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 53, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glycerol enters at dihydroxyacetone phosphate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Lactate and alanine enter at pyruvate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Even-chain fatty acids enter via acetyl-CoA', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Propionate enters via succinyl-CoA, then proceeds toward phosphoenolpyruvate', 1);

-- G25
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'On the third day of a fast, which cycle supplies the liver with a constant gluconeogenic precursor derived from muscle proteins?', 'During prolonged fasting, muscle protein catabolism (and glycolytic pyruvate) gives alanine, which travels to the liver and is reconverted to pyruvate → glucose: the Felig cycle. The Cori cycle recycles lactate from anaerobic muscle.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 58, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The Cori cycle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The Felig (glucose–alanine) cycle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The Krebs cycle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The pentose phosphate pathway', 0);

-- G26
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the hormonal regulation of gluconeogenesis:', 'Fasting → low glycemia → glucagon, which accelerates gluconeogenesis (inducing PEPCK and F1,6BPase) and inhibits glycolysis. Insulin has the opposite effects after a meal.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 63, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucagon induces the synthesis of PEP carboxykinase and fructose-1,6-bisphosphatase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Insulin slows gluconeogenesis after a meal', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucagon activates glycolysis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Glucagon is secreted when blood glucose falls between meals', 1);

-- G27
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the pentose phosphate pathway:', 'The PPP is cytosolic and ubiquitous (activity varies with the need for NADPH and ribose), generates no energy, and yields NADPH, ribose-5-P and erythrose-4-P (→ tyrosine, tryptophan, phenylalanine).', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 43, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occurs in the cytosol', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It produces no ATP', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It operates only in the liver', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It produces erythrose-4-phosphate, a precursor of aromatic amino acids', 1);

-- G28
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the pathway shown in the figure:', 'The oxidative phase produces 2 NADPH (not NADH) at G6PD and 6-phosphogluconate dehydrogenase, the latter also releasing the only CO₂. The non-oxidative phase is reversible and regulated by substrate availability.', 'Lesson: Carbohydrate metabolism', 's1/lessons/carbohydrate-metabolism-g4.png', 'generated', 46, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'NADH,H⁺ is produced at two steps of its oxidative phase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'One CO₂ is released, by 6-phosphogluconate dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The reactions of its non-oxidative phase are irreversible', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its end products, glyceraldehyde-3-phosphate and fructose-6-phosphate, can enter glycolysis', 1);

-- G29
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'A boy develops acute hemolytic anemia a few hours after eating fava beans. About this condition:', 'Favism: G6PD deficiency → less NADPH → reduced glutathione is not regenerated → peroxides deform the red-cell membrane and oxidize hemoglobin. Oxidizing drugs (aspirin, sulfonamides) trigger the same crisis.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 48, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It results from a glucose-6-phosphate dehydrogenase deficiency, which lowers NADPH production', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Oxidized glutathione (GS–SG) can no longer be efficiently reduced back to GSH', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Peroxides accumulate and oxidize hemoglobin Fe²⁺ to Fe³⁺', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A similar crisis can follow intake of drugs such as aspirin or sulfonamides', 1);

-- G30
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'In the pathway shown, congenital galactosemia is caused by a deficiency of the enzyme that catalyzes:', 'Classic galactosemia is a galactose-1-phosphate uridyltransferase deficiency. Galactokinase catalyzes A, phosphoglucomutase C and UDP-hexose 4-epimerase D.', 'Lesson: Carbohydrate metabolism', 's1/lessons/carbohydrate-metabolism-g5.png', 'generated', 41, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Galactose → galactose-1-phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Galactose-1-phosphate + UDP-glucose → glucose-1-phosphate + UDP-galactose', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose-1-phosphate → glucose-6-phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'UDP-galactose ⇌ UDP-glucose', 0);

-- G31
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About congenital galactosemia:', 'Accumulated galactose is reduced by aldose reductase to galactitol, which opacifies the lens; sorbitol comes from glucose (cataracts in diabetics). A galactose-free diet prevents the disease, because the body can make galactose from glucose.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 41, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cataracts result from galactitol, formed from galactose by aldose reductase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cataracts result from sorbitol formed from galactose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The body cannot synthesize galactose, so it must stay in the diet', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is the most common inherited disorder of carbohydrate metabolism', 1);

-- G32
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Hereditary fructose intolerance, with accumulation of fructose-1-phosphate, hypoglycemia and vomiting, is due to a deficiency of:', 'Aldolase B deficiency blocks fructose-1-phosphate cleavage → hereditary fructose intolerance. Fructokinase deficiency gives essential fructosuria, which is benign and asymptomatic.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 40, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hepatic fructokinase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Aldolase B', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose-6-phosphate dehydrogenase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Hexokinase', 0);

-- G33
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About glycogen synthesis:', 'Liver ≈ 150 g (1/3), muscle ≈ 300 g (2/3). Glycogen synthase is the key enzyme of synthesis, stimulated by insulin; glycogen phosphorylase degrades glycogen under glucagon/epinephrine.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 68, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The liver stores about 150 g of glycogen, one-third of the body''s total', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The branching enzyme transfers a fragment of 7 glucose residues to form an α(1→6) linkage', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its key enzyme is glycogen phosphorylase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is stimulated by glucagon', 0);

-- G34
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About hepatic and muscle glycogen:', 'Only the liver has glucose-6-phosphatase and can export free glucose ("public use"); muscle G6P stays in the cell for glycolysis. Hepatic glycogen lasts ≈ 24 h; glucagon (liver) and epinephrine (muscle) trigger glycogenolysis.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 71, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Muscle lacks glucose-6-phosphatase, so its glycogen is for "private use"', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The hepatic glycogen store can be depleted within about 24 hours', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Epinephrine stimulates muscle glycogenolysis during exercise', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Muscle glycogen directly maintains blood glucose during fasting', 0);

-- G35
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Von Gierke disease (type I glycogen storage disease: severe hypoglycemia, big liver, lactic acidosis) is due to a deficiency of:', 'Type I (Von Gierke) = glucose-6-phosphatase: the liver cannot release glucose. Muscle phosphorylase = McArdle (V), lysosomal α1,4-glucosidase = Pompe (II), branching enzyme = Andersen (IV).', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 73, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucose-6-phosphatase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Muscle glycogen phosphorylase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Lysosomal α1,4-glucosidase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The branching enzyme', 0);

-- G36
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About intestinal absorption of monosaccharides:', 'Apical: SGLT1 (glucose, galactose, Na⁺; secondary active transport driven by the Na⁺/K⁺-ATPase gradient) and GLUT5 (fructose). Basolateral: GLUT2 for all three. GLUTs, not SGLTs, work by facilitated diffusion.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'At the apical membrane, SGLT1 co-transports glucose and galactose with Na⁺', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'GLUT2 mediates fructose entry at the apical membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'At the basolateral membrane, GLUT2 releases glucose, fructose and galactose into the blood', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'SGLT transporters work by passive facilitated diffusion', 0);

-- G37
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the digestion of dietary carbohydrates:', 'Salivary amylase starts starch hydrolysis but is inactivated by the gastric acid, so no carbohydrate digestion occurs in the stomach. Lactase (β-galactosidase) is slower than sucrase; cellulose is undigested fiber.', 'Lesson: Carbohydrate metabolism', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrate metabolism'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Salivary α-amylase randomly cleaves α-1,4-glycosidic bonds of starch', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Amylase digestion continues actively in the stomach', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Lactose digestion is a rate-limiting step because lactase acts slowly', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cellulose is not digested and is part of dietary fiber', 1);
