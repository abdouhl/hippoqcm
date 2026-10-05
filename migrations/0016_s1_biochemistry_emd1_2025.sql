-- Generated from data/s1-biochemistry-emd1-2025.json — 26 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'D-glucose and L-glucose are isomers that are:', NULL, 'EMD1 2024-2025 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Epimers', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Anomers', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Enantiomers', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Functional isomers', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Among the following disaccharides, which are made only of two glucoses?', NULL, 'EMD1 2024-2025 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sucrose', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Lactose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Maltose and cellobiose', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Trehalose and lactose', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Trehalose, present in some insects and fungi, is unique among disaccharides because:', NULL, 'EMD1 2024-2025 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It contains a free anomeric carbon', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is hydrolyzed by the enzyme maltase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is made of two glucoses linked α(1→1)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It has a β(1→2) bond between the two glucoses', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which enzyme catalyzes the first reaction of glycolysis?', 'This question was numbered as a duplicate "3" in the exam and has no line in the official key; hexokinase phosphorylates glucose to glucose-6-phosphate.', 'EMD1 2024-2025 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Phosphofructokinase-1 (PFK-1)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Hexokinase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pyruvate kinase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Enolase', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'To promote glycolysis, what is the main positive regulator of phosphofructokinase-1 (PFK-1)?', NULL, 'EMD1 2024-2025 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ATP', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'NADH,H+', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Acetyl-CoA', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Fructose-2,6-bisphosphate', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which metabolic pathway regenerates NAD+ under anaerobic conditions?', NULL, 'EMD1 2024-2025 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Krebs cycle', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Fermentation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pentose phosphate pathway', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Beta-oxidation', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What are the main functions of the Krebs cycle?', NULL, 'EMD1 2024-2025 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Production of reduced coenzymes for the respiratory chain', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Production of energy as GTP/ATP', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose synthesis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Supplying intermediates for anabolic pathways', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Among the following reactions, which generate NADH in the Krebs cycle?', NULL, 'EMD1 2024-2025 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Conversion of isocitrate to α-ketoglutarate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Conversion of succinyl-CoA to succinate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Conversion of α-ketoglutarate to succinyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Conversion of malate to oxaloacetate', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which Krebs cycle reactions release CO₂?', NULL, 'EMD1 2024-2025 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Conversion of oxaloacetate to citrate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Conversion of isocitrate to α-ketoglutarate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Conversion of α-ketoglutarate to succinyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Conversion of succinate to fumarate', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What are the consequences of a Krebs cycle dysfunction?', NULL, 'EMD1 2024-2025 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Decreased production of NADH,H+ and FADH₂', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Accumulation of oxaloacetate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Reduced ATP production', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Increased oxidative metabolism', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which gluconeogenesis enzyme is absent in muscle?', NULL, 'EMD1 2024-2025 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Pyruvate carboxylase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Phosphoenolpyruvate carboxykinase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Fructose-1,6-bisphosphatase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Glucose-6-phosphatase', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which precursors are NOT used in gluconeogenesis?', NULL, 'EMD1 2024-2025 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glycerol', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Lactate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Acetyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Malonyl-CoA', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the main role of the Cori cycle in glucose metabolism?', NULL, 'EMD1 2024-2025 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Transport glucose from muscles to the liver', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Recycle lactate produced in muscle into glucose in the liver', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Convert pyruvate into acetyl-CoA', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Store excess glucose as glycogen', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which molecules come from the non-oxidative phase of the pentose phosphate pathway (PPP) and can re-enter glycolysis?', NULL, 'EMD1 2024-2025 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Fructose-6-phosphate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Fructose-1,6-bisphosphate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Xylulose-5-phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Glyceraldehyde-3-phosphate', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Consider a triglyceride (TG): α-arachidonyl-β-linolenyl-acyl(X)-glycerol (Questions 14, 15, 16). Given: TG molar mass = 904; arachidonic acid C20:4; linolenic acid C18:3.
What is the saturated fatty acid (acyl X) esterifying the α′ position of glycerol?', 'M(X) = 904 − 92 + 3×18 − 304 − 278 = 284 g/mol → stearic acid (C18:0).', 'EMD1 2024-2025 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Palmitic acid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Stearic acid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Arachidic acid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), '(Same TG: α-arachidonyl-β-linolenyl-stearyl-glycerol, M = 904.) The saponification index of the TG is: (Given KOH = 56)', 'SI = 3 × 56 000 / 904 ≈ 185.84.', 'EMD1 2024-2025 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '61.94', 0),
  ((SELECT MAX(id) FROM questions), 'B', '123.89', 0),
  ((SELECT MAX(id) FROM questions), 'C', '185.84', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), '(Same TG, M = 904, with C20:4 and C18:3.) The iodine index of the TG is: (Given I = 127)', '7 double bonds: II = 7 × 254 × 100 / 904 ≈ 196.68.', 'EMD1 2024-2025 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '84.29', 0),
  ((SELECT MAX(id) FROM questions), 'B', '112.38', 0),
  ((SELECT MAX(id) FROM questions), 'C', '196.68', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the main role of lipids in the body?', NULL, 'EMD1 2024-2025 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Provide energy', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Store genetic information', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Catalyze chemical reactions', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Be involved in oxygen transport in the body', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning essential fatty acids:', NULL, 'EMD1 2024-2025 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They play a crucial role in protein synthesis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Their deficiency can cause cardiovascular disorders only', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Their deficiency can cause disorders of cell-exchange permeability and coagulation disorders', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Red meat is a good food source of essential fatty acids', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning prostaglandins:', NULL, 'EMD1 2024-2025 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The main role of prostaglandins in the body is to provide energy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Prostaglandins play a role in hormonal regulation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Prostaglandins are produced from cholesterol', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Prostaglandins are often involved in lipid digestion', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What type of reaction is involved in the formation of triglycerides?', NULL, 'EMD1 2024-2025 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Oxidation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Hydrolysis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Esterification', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the role of fatty acids in the structure of glycerophospholipids?', NULL, 'EMD1 2024-2025 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They provide energy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They contribute to membrane fluidity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They are responsible for cell signaling', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They have no role', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which process is mainly responsible for the degradation of fatty acids?', NULL, 'EMD1 2024-2025 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glycolysis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'β-oxidation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Lipogenesis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lipolysis', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the role of carnitine in fatty acid metabolism?', NULL, 'EMD1 2024-2025 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It transports fatty acids into the mitochondria', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It catalyzes the addition reaction of saturated fatty acids', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It synthesizes fatty acids', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It degrades fatty acids in the cytoplasm', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning the regulation of fatty acid degradation:', NULL, 'EMD1 2024-2025 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'NADH activates 3-hydroxyacyl-CoA dehydrogenase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'NADH inhibits 3-hydroxyacyl-CoA dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Acetyl-CoA activates thiolase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A high cytosolic malonyl-CoA concentration inhibits acyl-carnitine transferase 1 (CAT1)', 1);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning fatty acid biosynthesis:', NULL, 'EMD1 2024-2025 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'This synthesis requires an energy source', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is entirely cytosolic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its rate is maximal when carbohydrates are low', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The precursor of this synthesis is acetyl-CoA', 1);
