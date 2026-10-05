-- Generated from data/s1-biochemistry-emd1-2023.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About monosaccharides (oses):', NULL, 'EMD1 2022-2023 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Natural simple oses belong as much to the L series as to the D series', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'D-fructose and D-glucose do not have the same number of alcohol functions', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'D-glucose and D-fructose both rotate polarized light to the right', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(n−2) carbons of glucose are asymmetric', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The oses shown in the figure (D-fructose and L-fructose) are:', NULL, 'EMD1 2022-2023 Q2', 's1/biochemistry-2023-q2.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Functional isomers', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Enantiomers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Diastereoisomers', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Epimers', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The disaccharide shown in the figure is: (Questions 3 and 4)', NULL, 'EMD1 2022-2023 Q3', 's1/biochemistry-2023-q3.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Maltose', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Isomaltose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cellobiose', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Trehalose', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), '(Same disaccharide as the previous question.) Mild oxidation of this disaccharide by dilute nitric acid produces:', NULL, 'EMD1 2022-2023 Q4', 's1/biochemistry-2023-q3.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'One D-gluconic acid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Two D-gluconic acids', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'One D-glucuronic acid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Two D-glucuronic acids', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Given the following systematic names, which one fits the disaccharide lactose?', NULL, 'EMD1 2022-2023 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'α-D-Glucopyranosyl (1→4) D-galactopyranose', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'β-D-Glucopyranosyl (1→4) D-galactopyranose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'α-D-Galactopyranosyl (1→4) D-glucopyranose', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'β-D-Galactopyranosyl (1→4) D-glucopyranose', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About carbohydrates:', NULL, 'EMD1 2022-2023 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Raffinose is an example of an oligosaccharide', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Chitin is a nitrogenous polysaccharide resulting from the polymerization of N-acetylglucosamine', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A nucleoside is a heteroside', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Glycogen and starch are both made of amylose and amylopectin', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Cellulose, one of the important carbohydrates, is:', NULL, 'EMD1 2022-2023 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A branched polymer of D-glucose residues linked by α(1→4) bonds', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A linear polymer of D-glucose residues linked by β(1→4) bonds', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A storage form of carbohydrates in plants', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Not hydrolyzable by human digestive enzymes', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About glycolysis:', NULL, 'EMD1 2022-2023 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glycolysis takes place in the cytoplasm', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Through this pathway, one glucose gives 2 pyruvates', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'During glycolysis, ATP is only consumed', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Some enzymes present in glycolysis are also present in gluconeogenesis', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Given the reactions in the figure, catalyzed by enzymes E1, E2, E3 and E4 (X is the central metabolite). Indicate the correct statement(s):', 'X is pyruvate. E2 (pyruvate → acetyl-CoA) is the pyruvate dehydrogenase complex, not pyruvate decarboxylase.', 'EMD1 2022-2023 Q9', 's1/biochemistry-2023-q9.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'E1 is pyruvate kinase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'E2 is pyruvate decarboxylase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'E3 is pyruvate carboxylase', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'E4 is lactate dehydrogenase', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which glycolysis enzymes are allosterically regulated?', NULL, 'EMD1 2022-2023 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hexokinase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glucose-6-phosphate isomerase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Phosphofructokinase', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Phosphoglycerate kinase', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What are the characteristics of a key enzyme?', NULL, 'EMD1 2022-2023 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Allostery', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Catalyzes the slowest reaction', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Can be inhibited by the end product of the metabolic pathway', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Activation by phosphorylation or dephosphorylation under hormonal control', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About NAD+:', NULL, 'EMD1 2022-2023 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In anaerobiosis, reduction of pyruvate to lactate or ethanol reoxidizes NADH,H+ to NAD+', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In anaerobiosis, the regenerated NAD+ is reused by reaction 6 of glycolysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'In anaerobiosis, the regenerated NAD+ allows glycolysis to continue in the absence of oxygen', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In aerobiosis, NAD+ is regenerated by the respiratory chain', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the energy yield if fructose-6-phosphate is degraded to lactate?', NULL, 'EMD1 2022-2023 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3 ATP', 1),
  ((SELECT MAX(id) FROM questions), 'C', '5 ATP', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Among the following enzymes, which one is involved in the Krebs cycle?', NULL, 'EMD1 2022-2023 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucokinase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Pyruvate dehydrogenase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Carnitine acyltransferase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Malate dehydrogenase', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Given the Krebs cycle reaction in the figure (X → succinyl-CoA, with NAD → NADH,H+ and cosubstrate Y / product Z), what is substrate X? (Questions 15, 16 and 17)', NULL, 'EMD1 2022-2023 Q15', 's1/biochemistry-2023-q15.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'X = Isocitrate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'X = α-Ketoglutarate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'X = Succinate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), '(Same Krebs cycle reaction.) Indicate the correct proposition for each molecule (Y, Z):', NULL, 'EMD1 2022-2023 Q16', 's1/biochemistry-2023-q15.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Y = ADP', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Y = CoASH', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Z = ATP', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Z = CO₂', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), '(Same Krebs cycle reaction.) What is the name of the enzyme catalyzing this reaction?', NULL, 'EMD1 2022-2023 Q17', 's1/biochemistry-2023-q15.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Isocitrate dehydrogenase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'α-Ketoglutarate dehydrogenase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Succinyl-CoA synthetase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Succinate dehydrogenase', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Regulation of the Krebs cycle depends on:', NULL, 'EMD1 2022-2023 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The concentration of acetyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The accumulation of energy products: NADH and ATP (energy level of the cell)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The respiratory chain, which must have a sufficient O₂ supply', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Acetyl-CoA is a metabolic intermediate used in:', NULL, 'EMD1 2022-2023 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Anaerobic glycolysis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The Krebs cycle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Gluconeogenesis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ketogenesis', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'During gluconeogenesis, the conversion of glucose-6-phosphate to glucose is catalyzed by:', NULL, 'EMD1 2022-2023 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucokinase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Hexokinase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose-6-phosphatase', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Among the following metabolites, which are converted into glucose via gluconeogenesis?', NULL, 'EMD1 2022-2023 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Pyruvate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Lactate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Amino acids', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Malonyl-CoA', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The following metabolites are produced by the pentose phosphate pathway except one. Which one?', 'Arabinose-5-phosphate is not a pentose phosphate pathway product. (The official key lists ABD, i.e. the metabolites that ARE produced.)', 'EMD1 2022-2023 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ribose-5-phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Xylulose-5-phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Arabinose-5-phosphate', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Fructose-6-phosphate', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning the digestion of dietary lipids, which statement(s) is (are) correct?', NULL, 'EMD1 2022-2023 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is favored by their emulsification by bile salts', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It involves pancreatic lipase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It involves disaccharidases of the enterocyte brush border', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Only triglycerides are resynthesized in the cytoplasm of enterocytes', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Consider the lipid shown in the figure (a triglyceride esterified by formic acid, R′ and R″):', NULL, 'EMD1 2022-2023 Q24', 's1/biochemistry-2023-q24.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a complex lipid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a storage lipid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is an optically inactive lipid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is a completely hydrophobic lipid', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Consider the triglyceride:
CH₂–O–CO–(CH₂)₇–CH=CH–CH₂–CH=CH–CH₂–CH=CH–CH₂–CH₃
CH–O–CO–(CH₂)₇–CH=CH–CH₂–CH=CH–(CH₂)₄–CH₃
CH₂–O–CO–(CH₂)₇–CH=CH–(CH₂)₅–CH₃
Its saponification index is: (Given KOH = 56)', 'Chains: C18:3 + C18:2 + C16:1. M = 92 + 278 + 280 + 254 − 3×18 = 850 g/mol. SI = 3 × 56 000 / 850 ≈ 197.65.', 'EMD1 2022-2023 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '65.88', 0),
  ((SELECT MAX(id) FROM questions), 'B', '131.76', 0),
  ((SELECT MAX(id) FROM questions), 'C', '197.65', 1),
  ((SELECT MAX(id) FROM questions), 'D', '263.53', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), '(Same triglyceride as the previous question: C18:3, C18:2, C16:1.) Its iodine index is: (Given I = 127)', '6 double bonds: II = 6 × 254 × 100 / 850 ≈ 179.29.', 'EMD1 2022-2023 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '89.65', 0),
  ((SELECT MAX(id) FROM questions), 'B', '119.52', 0),
  ((SELECT MAX(id) FROM questions), 'C', '149.41', 0),
  ((SELECT MAX(id) FROM questions), 'D', '179.29', 1);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The energy balance of β-oxidation of the fatty acid C16:1 Δ9 includes:', '7 turns → 8 acetyl-CoA, 7 NADH, but only 6 FADH₂ (the existing double bond skips one acyl-CoA dehydrogenase step).', 'EMD1 2022-2023 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '8 acetyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'B', '7 NADH,H+', 1),
  ((SELECT MAX(id) FROM questions), 'C', '7 FADH₂', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A net yield of 106 ATP', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About 3-hydroxy-3-methylglutaryl-CoA (HMG-CoA):', NULL, 'EMD1 2022-2023 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'HMG-CoA is the precursor of cholesterol synthesis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'HMG-CoA is the precursor of ketone body synthesis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'HMG-CoA is synthesized from three acetyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All the propositions are false', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'During fasting or diabetes, the following organs use ketone bodies as energy substrates except one. Which one?', NULL, 'EMD1 2022-2023 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The brain', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Skeletal muscle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cardiac muscle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The liver', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning the role of lipoproteins:', NULL, 'EMD1 2022-2023 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Chylomicrons transport exogenous triglycerides', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'VLDL transport endogenous triglycerides', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'LDL transport cholesterol from the liver to peripheral tissues', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'HDL act as a shuttle between peripheral tissues and the liver and between the other lipoproteins', 1);
