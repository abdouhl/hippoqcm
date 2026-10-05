-- Generated from data/s1-biochemistry-emd1-2026.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning monosaccharides:', NULL, 'EMD1 2025-2026 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are soluble in water.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They possess at least one asymmetric carbon atom.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A D-monosaccharide is always dextrorotatory.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Physiological glucose is a D-monosaccharide.', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The general formula of a monosaccharide is:', NULL, 'EMD1 2025-2026 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'CₙH₂ₙ₋₂Oₙ', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'CₙH₂ₙ₊₂Oₙ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'CₙH₂ₙOₙ', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'CₙH₂ₙO₂', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning dihydroxyacetone:', NULL, 'EMD1 2025-2026 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a ketotriose.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is optically active.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a reducing sugar.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It can undergo mutarotation.', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning the cyclization of monosaccharides:', NULL, 'EMD1 2025-2026 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It corresponds to an intramolecular reaction.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It leads to the formation of a hemiacetal or hemiketal.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is irreversible in aqueous solution.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It creates a new asymmetric carbon atom.', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'α-D-galactopyranose and β-D-galactopyranose are:', NULL, 'EMD1 2025-2026 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Epimers', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Anomers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Enantiomers', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Diastereoisomers', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning oxidation and reduction reactions of monosaccharides:', NULL, 'EMD1 2025-2026 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Mild oxidation of glucose yields an aldaric acid.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Strong oxidation of glucose yields an aldonic acid.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Reduction of D-glucose yields D-sorbitol.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reduction of D-fructose yields D-sorbitol or D-mannitol.', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning polysaccharides:', NULL, 'EMD1 2025-2026 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'All polysaccharides are holosides.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Starch is composed of amylose and amylopectin.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glycogen is more highly branched than amylopectin.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cellulose is digestible by humans.', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'ATP-consuming reactions in glycolysis are catalyzed by:', NULL, 'EMD1 2025-2026 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hexokinase', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Phosphofructokinase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Phosphoglycerate kinase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Pyruvate kinase', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Glucose-6-phosphate (G-6-P) is a metabolic intermediate of:', NULL, 'EMD1 2025-2026 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glycolysis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glycogen synthesis and degradation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The pentose phosphate pathway', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Gluconeogenesis', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning isocitrate dehydrogenase:', NULL, 'EMD1 2025-2026 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It catalyzes the conversion of isocitrate to α-ketoglutarate.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It produces NADH + H⁺ and CO₂.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a key regulatory enzyme of the Krebs cycle.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is activated by ATP and NADH.', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Under hypoxic conditions (reduced oxygen supply or utilization by tissues):', NULL, 'EMD1 2025-2026 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The respiratory chain is inhibited and the Krebs cycle slows down.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glycolysis is inhibited.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Lactate production increases.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'NAD⁺ is regenerated.', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning gluconeogenesis:', NULL, 'EMD1 2025-2026 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occurs exclusively in the cytosol.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It contributes to the maintenance of blood glucose levels.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It allows glucose synthesis from non-carbohydrate precursors.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It uses all the reactions and enzymes of glycolysis.', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning the pentose phosphate pathway:', NULL, 'EMD1 2025-2026 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It produces NADPH.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It produces ribose-5-phosphate.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It produces ATP.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A deficiency in glucose-6-phosphate dehydrogenase (G6PD) mainly affects red blood cells.', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning galactose metabolism:', NULL, 'EMD1 2025-2026 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It results from lactose hydrolysis.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is phosphorylated by galactokinase.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is converted into glucose-1-phosphate.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It enters glycolysis via fructose-6-phosphate.', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the main role of the Felig cycle in glucose metabolism?', NULL, 'EMD1 2025-2026 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Transport glucose from muscles to the liver.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Enable hepatic gluconeogenesis from alanine.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Enable hepatic gluconeogenesis from lactate.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Supply energy to muscle in the form of ATP.', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'A diglyceride (DG): α-butyryl-β-palmitolein. Given: butyric acid C4:0; palmitoleic acid C16:1Δ⁹; KOH = 56; iodine = 127.

The saponification index of the DG is:', 'M(DG) = 92 (glycerol) + 88 (butyric) + 254 (palmitoleic) − 2×18 = 398 g/mol. SI = 2 × 56 000 / 398 ≈ 281.4.', 'EMD1 2025-2026 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '83.02', 0),
  ((SELECT MAX(id) FROM questions), 'B', '143.16', 0),
  ((SELECT MAX(id) FROM questions), 'C', '281.41', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All answers are incorrect.', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'A diglyceride (DG): α-butyryl-β-palmitolein. Given: butyric acid C4:0; palmitoleic acid C16:1Δ⁹; KOH = 56; iodine = 127.

The iodine index of the DG is:', 'One double bond fixes one I₂ (254 g). II = 254 × 100 / 398 ≈ 63.8.', 'EMD1 2025-2026 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '63.81', 1),
  ((SELECT MAX(id) FROM questions), 'B', '100.10', 0),
  ((SELECT MAX(id) FROM questions), 'C', '136.22', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'All answers are incorrect.', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning chaulmoogric acid (a fatty acid historically used in the treatment of leprosy):', NULL, 'EMD1 2025-2026 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a saturated linear-chain fatty acid.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is a saturated branched-chain fatty acid.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It contains a cyclopentenyl ring at the end of its carbon chain.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It contains three conjugated double bonds.', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the effect of introducing a double bond (unsaturation) on the melting point?', NULL, 'EMD1 2025-2026 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It markedly increases the melting point.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It lowers the melting point.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It makes the fatty acid solid at room temperature.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It has no effect.', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Concerning cerides (waxes):', NULL, 'EMD1 2025-2026 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cerides are complex lipids.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cerides are esters formed between a long-chain fatty alcohol and a fatty acid.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cerides are esters of glycerol and a fatty acid.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Cerides are solid at room temperature.', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The rings of the sterane nucleus in sterols are designated as:', NULL, 'EMD1 2025-2026 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1, 2, 3, 4', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'α, β, γ, δ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A, B, C, D', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'a, b, c, d', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the main role of bile salts during lipid digestion?', NULL, 'EMD1 2025-2026 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hydrolyze triglycerides into glycerol and fatty acids.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Emulsify fats to increase the surface area for lipase action.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Transport chylomicrons in the blood.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Activate lipase.', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the main vehicle for the transport of dietary lipids from the enterocyte to the lymph and then to the bloodstream?', NULL, 'EMD1 2025-2026 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Micelles', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Free fatty acids bound to albumin', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Chylomicrons', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'LDL lipoproteins', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Where does β-oxidation (Lynen spiral) of fatty acids mainly occur?', NULL, 'EMD1 2025-2026 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cytosol', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Mitochondrial matrix', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Endoplasmic reticulum', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Golgi apparatus', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which molecule transports long-chain fatty acids across the inner mitochondrial membrane?', NULL, 'EMD1 2025-2026 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Creatine', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Carnitine', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Coenzyme A', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Albumin', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the effect of a high cytosolic concentration of malonyl-CoA?', NULL, 'EMD1 2025-2026 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It activates triglyceride degradation.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It inhibits the carnitine shuttle, thereby blocking β-oxidation.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It promotes cholesterol efflux from the cell.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It stimulates bile salt production.', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What are the two initial precursors of sphingolipid synthesis?', NULL, 'EMD1 2025-2026 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Carnitine and palmitoyl-CoA', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'L-serine and palmitoyl-CoA', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Choline and stearyl-CoA', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Inositol and stearyl-CoA', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'In cholesterol biosynthesis, HMG-CoA reductase is inhibited by:', NULL, 'EMD1 2025-2026 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucagon', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Insulin', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Thyroid hormones', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A high intracellular cholesterol concentration', 1);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Why is the liver unable to use ketone bodies as an energy source?', NULL, 'EMD1 2025-2026 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The liver lacks mitochondria.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The liver is unable to produce ketone bodies.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The liver lacks the enzyme thiophorase (β-ketoacyl-CoA transferase).', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ketone bodies cannot cross the hepatic mitochondrial membrane.', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'What is the primary role of LDL?', NULL, 'EMD1 2025-2026 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Transport cholesterol from tissues to the liver.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Transport cholesterol from the liver to peripheral tissues.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Hydrolyze triglycerides in muscle.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Absorb fat-soluble vitamins.', 0);
