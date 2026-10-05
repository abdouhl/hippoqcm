-- Generated from data/s1-biochemistry-emd1-2024.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the linear oses (a) and (b) shown in the figure: (Questions 1 and 2)', NULL, 'EMD1 2023-2024 Q1', 's1/biochemistry-2024-q1.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are epimers', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They are enantiomers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Both oses belong to the D series', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Equimolar amounts of these oses form an optically inactive racemic mixture', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the linear oses (a) and (b) shown in the figure:', NULL, 'EMD1 2023-2024 Q2', 's1/biochemistry-2024-q1.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They produce different alcohols by reduction', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They produce the same aldaric acids by strong oxidation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The alcohols and aldaric acids produced are optically inactive', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'L-Rhamnose derives from ose (b)', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Ribose, by Kiliani–Fischer synthesis, produces 2 oses which are:', NULL, 'EMD1 2023-2024 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Aldohexoses', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ketohexoses', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Optical isomers', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'C2 epimers', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Disaccharide (A) shown in the figure is: (Questions 4 and 5)', NULL, 'EMD1 2023-2024 Q4', 's1/biochemistry-2024-q4.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Maltose', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Isomaltose', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Sucrose', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Cellobiose', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About disaccharide (A) shown in the figure:', NULL, 'EMD1 2023-2024 Q5', 's1/biochemistry-2024-q4.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is produced by hydrolysis of starch and glycogen', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is produced by hydrolysis of cellulose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'There are 4 asymmetric carbons per ose', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'After methylation, it becomes non-reducing', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The following reactions are positive on glucose-6-phosphate (G6P, figure) except one. Which one?', NULL, 'EMD1 2023-2024 Q6', 's1/biochemistry-2024-q6.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Methylation by methanol', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Mild oxidation by dilute HNO₃', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Isomerization using the enzyme glucose-6-P isomerase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Dephosphorylation using the enzyme hexokinase', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About carbohydrate polymers:', NULL, 'EMD1 2023-2024 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Starch is a plant polymer', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Starch is made of glucose or glucosamine residues linked by α(1→4) bonds', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'After a meal, glycogen is synthesized via glycogenogenesis (glycogenesis)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The muscle glycogen store is 300 g (2/3 of the total store)', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The following enzymes catalyze the reversible reactions shared by glycolysis and gluconeogenesis except one. Which one?', NULL, 'EMD1 2023-2024 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Phosphofructokinase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glucose-6-P isomerase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Phosphoglycerate kinase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Enolase', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Pyruvate dehydrogenase catalyzes the conversion of:', NULL, 'EMD1 2023-2024 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Pyruvate to phosphoenolpyruvate (PEP)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Pyruvate to acetyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pyruvate to lactate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Pyruvate to ethanol', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the Krebs cycle:', NULL, 'EMD1 2023-2024 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It operates under aerobic metabolism', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It takes place in the cytoplasm', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Citrate, the first intermediate of the cycle, is tricarboxylic', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It produces 12 ATP per acetyl-CoA oxidized', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The energy yield of the complete oxidation of one pyruvate molecule under aerobic conditions is:', NULL, 'EMD1 2023-2024 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'B', '8 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'C', '12 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'D', '15 ATP', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The synthesis of the following molecules uses acetyl-CoA as a precursor, except one. Which one?', NULL, 'EMD1 2023-2024 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Carnitine', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Mevalonate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Fatty acids', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ketone bodies', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning the metabolic pathway shown in the figure (glucose → 2 pyruvate → 2 lactate, with X ATP):', NULL, 'EMD1 2023-2024 Q13', 's1/biochemistry-2024-q13.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is an anaerobic pathway', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a lactic fermentation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is an alcoholic fermentation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'X ATP = 2 ATP', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About NADPH,H+ (reducing power):', NULL, 'EMD1 2023-2024 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is mainly produced by the pentose phosphate pathway', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is produced by the citrate–pyruvate shuttle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is used in cholesterol synthesis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is used in sphingosine synthesis', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The conversion of pyruvate to oxaloacetate is catalyzed by pyruvate carboxylase. Indicate the possible metabolic pathway(s) using this reaction:', NULL, 'EMD1 2023-2024 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gluconeogenesis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Pentose phosphate pathway', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Malate–aspartate shuttle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Citrate–pyruvate shuttle', 1);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the pentose phosphate pathway (PPP):', NULL, 'EMD1 2023-2024 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is an exclusively hepatic pathway', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its precursor is glucose-6-P', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose-6-phosphate dehydrogenase (G6PD) is the key enzyme of this pathway', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The oxidative phase of this pathway uses two decarboxylation reactions', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About glycogenogenesis (glycogen synthesis):', NULL, 'EMD1 2023-2024 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glycogen synthesis is cytosolic', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The main enzyme is glycogen synthase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The precursor is glucose-6-P', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Synthesis requires energy in the form of ATP and UTP (uridine triphosphate)', 1);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the reaction shown in the figure (succinyl-CoA ⇌ succinate, with ADP + Pi / ATP + CoASH):', NULL, 'EMD1 2023-2024 Q18', 's1/biochemistry-2024-q18.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a Krebs cycle reaction', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is catalyzed by succinate dehydrogenase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Succinyl-CoA is the product of an oxidative decarboxylation of α-ketoglutarate', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The ketolysis pathway can use the ATP produced by this reaction', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What does the dehydrogenation of succinate give?', NULL, 'EMD1 2023-2024 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Fumarate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Malate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Oxaloacetate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Citrate', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Propionate, a gluconeogenesis precursor, can be converted into succinyl-CoA. What is the energy yield if propionate is degraded to oxaloacetate (OAA)?', NULL, 'EMD1 2023-2024 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5 ATP', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Glucose-6-phosphatase is a key enzyme that catalyzes the conversion of:', NULL, 'EMD1 2023-2024 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucose to glucose-6-phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Glucose-6-phosphate to glucose', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose-6-phosphate to fructose-6-phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Fructose-6-phosphate to glucose-6-phosphate', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The following enzymes play an important role in carbohydrate metabolism. Check those that are mitochondrial:', NULL, 'EMD1 2023-2024 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hexokinase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Succinate dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pyruvate dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Glucose-6-phosphatase', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Among the roles of the pentose phosphate pathway (PPP) in the body:', NULL, 'EMD1 2023-2024 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ATP production', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'NADH,H+ production', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'NADPH,H+ production', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ribose-5-phosphate production', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About molecule (X) shown in the figure (a phosphatidylserine): (Questions 24, 25 and 26)', NULL, 'EMD1 2023-2024 Q24', 's1/biochemistry-2024-q24.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'This molecule is amphoteric and amphipathic', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'This molecule is neutral at physiological pH', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'This molecule is acidic at physiological pH', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is a storage lipid', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The action of phospholipase C on molecule (X) releases phosphoserine; the remainder is a diglyceride (α-palmito-β-olein) with molar mass = 594. Its saponification index is: (Given: palmitic acid C16:0, oleic acid C18:1 Δ9, KOH = 56)', 'Diglyceride: 2 ester bonds. SI = 2 × 56 000 / 594 ≈ 188.55.', 'EMD1 2023-2024 Q25', 's1/biochemistry-2024-q24.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '94.27', 0),
  ((SELECT MAX(id) FROM questions), 'B', '188.55', 1),
  ((SELECT MAX(id) FROM questions), 'C', '282.82', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), '(Same diglyceride α-palmito-β-olein, M = 594.) Its iodine index is: (Given I = 127)', 'One double bond (oleic acid): II = 254 × 100 / 594 ≈ 42.76.', 'EMD1 2023-2024 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '42.76', 1),
  ((SELECT MAX(id) FROM questions), 'B', '85.52', 0),
  ((SELECT MAX(id) FROM questions), 'C', '128.28', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The energy balance of β-oxidation of lauric acid (C12:0) includes:', '5 turns → 6 acetyl-CoA (72 ATP) + 5 NADH (15) + 5 FADH₂ (10) = 97 − 2 (activation) = 95 ATP.', 'EMD1 2023-2024 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '6 acetyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'B', '5 NADH,H+', 1),
  ((SELECT MAX(id) FROM questions), 'C', '5 FADH₂', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A net yield of 95 ATP', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The compound shown in the figure is an important molecule of the central nervous system. It can be classified as: (Questions 28 and 29)', NULL, 'EMD1 2023-2024 Q28', 's1/biochemistry-2024-q28.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A heteroside', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A glycerophospholipid', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A sphingolipid', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A cerebroside', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), '(Same compound as the previous question.) Which enzymes are capable of hydrolyzing this compound?', NULL, 'EMD1 2023-2024 Q29', 's1/biochemistry-2024-q28.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'α-Glucosidase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'β-Glucosidase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'β-Galactosidase', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ceramidase', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Ketogenesis uses acetyl-CoA coming from the degradation of:', NULL, 'EMD1 2023-2024 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucose', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Fatty acids', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Malonyl-CoA', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Amino acids', 1);
