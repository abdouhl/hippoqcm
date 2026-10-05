-- Generated from data/s1-physiology-emd1-2026.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Passive transport:', NULL, 'EMD1 2025-2026 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Requires ATP consumption', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Always occurs against the concentration gradient', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Depends on the electrochemical gradient', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'May occur by simple diffusion or facilitated diffusion', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Facilitated diffusion:', NULL, 'EMD1 2025-2026 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Uses specific membrane proteins', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is saturable', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Requires metabolic energy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Follows the concentration gradient', 1);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Primary active transport:', NULL, 'EMD1 2025-2026 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Directly requires ATP', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Occurs without membrane proteins', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Allows transport against the electrochemical gradient', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is always electrically neutral', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The Na⁺/K⁺-ATPase pump:', NULL, 'EMD1 2025-2026 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Expels 3 Na⁺ ions out of the cell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Brings 2 K⁺ ions into the cell', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is an electrogenic pump', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Functions without ATP consumption', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Secondary active transport:', NULL, 'EMD1 2025-2026 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Directly uses ATP', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Depends on the ionic gradient created by primary active transport', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'May occur as symport or antiport', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Does not require membrane proteins', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The resting membrane potential:', NULL, 'EMD1 2025-2026 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is usually negative inside the cell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Mainly depends on potassium permeability', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is identical in all cell types', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is maintained by ionic gradients', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The Nernst equation is used to calculate:', NULL, 'EMD1 2025-2026 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Membrane potential', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Equilibrium potential of a single ion', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Membrane permeability', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Intracellular concentration gradient', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The action potential:', NULL, 'EMD1 2025-2026 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Follows the all-or-none law', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is mainly due to rapid sodium influx', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Depends on stimulus duration', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Propagates without decrement', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Receptors:', NULL, 'EMD1 2025-2026 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are only expressed on the cell surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Allow intercellular communication', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Bind ligands such as steroid hormones and neurotransmitters', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Have a very weak interaction with their ligand', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Intracellular second messengers:', NULL, 'EMD1 2025-2026 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are composed of large molecules', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'cAMP is one of these second messengers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Transmit information to the cytosol', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Play a role in signal amplification', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Hydrophilic ligands:', NULL, 'EMD1 2025-2026 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Freely cross the plasma membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Bind preferentially to nuclear receptors', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Act via membrane receptors', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Include peptide hormones and neurotransmitters', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Among the ligands of intracellular receptors:', NULL, 'EMD1 2025-2026 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Steroid hormones', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Thyroid hormones', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Adrenaline', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Vitamin D', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Chemical synaptic transmission:', NULL, 'EMD1 2025-2026 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is unidirectional', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is faster than electrical transmission', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Requires a neurotransmitter', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Occurs only between neurons', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Regarding the internal environment, which of the following statements are correct?', NULL, 'EMD1 2025-2026 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is the intracellular fluid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is the extracellular fluid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is essentially composed of lymph', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The kidneys contribute to the homeostasis of the internal environment more than any other organ', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The ionic composition of the internal environment is characterized by:', NULL, 'EMD1 2025-2026 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Na⁺, Cl⁻ and HCO₃⁻ are the main components', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Potassium salts (K⁺) are the main components', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Plasma and interstitial fluid do not have the same ionic composition', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The osmolarity of the internal environment is essentially determined by sodium', 1);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The dilution method using a marker is the reference method for measuring fluid volumes. This marker must be:', NULL, 'EMD1 2025-2026 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Non toxic', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Not diffusing outside the space to be measured', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Minimally altering tissue function and metabolism', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Slowly eliminated and/or metabolized', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Among these compartments, which ones can be directly measured using the dilution method?', NULL, 'EMD1 2025-2026 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Plasma volume', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Intracellular volume', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Total body water', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Interstitial fluid volume', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Exchanges between plasma and interstitial fluid:', NULL, 'EMD1 2025-2026 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Occur through the capillaries', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Take place according to the Starling mechanism', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Oncotic pressure alone represents the major driving force of these exchanges', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'These exchanges, which occur along the length of the capillaries, are variable', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The functional unit of skeletal striated muscle is:', NULL, 'EMD1 2025-2026 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The myofibril', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The sarcomere', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The myocyte', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The actin filament', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The thin filaments of the sarcomere are mainly composed of:', NULL, 'EMD1 2025-2026 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Myosin', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Actin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Troponin', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Tropomyosin', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'During muscle contraction:', NULL, 'EMD1 2025-2026 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sarcomeres shorten', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Actin filaments shorten', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Actin filaments slide over myosin', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Filament length remains constant', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Calcium (Ca²⁺) is involved in muscle contraction by:', NULL, 'EMD1 2025-2026 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Binding to troponin', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Allowing the movement of tropomyosin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Inhibiting actin–myosin interaction', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Triggering the formation of actin–myosin cross-bridges', 1);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The phosphocreatine pathway:', NULL, 'EMD1 2025-2026 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Provides ATP very rapidly', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is used during short, intense efforts', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Produces lactic acid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is an anaerobic alactic pathway with limited capacity', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Type I muscle fibers:', NULL, 'EMD1 2025-2026 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are slow-twitch', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are rich in myoglobin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Fatigue rapidly', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Mainly use aerobic metabolism', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Energy expenditure over 24 hours includes:', NULL, 'EMD1 2025-2026 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Basal metabolic rate.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Diet-induced thermogenesis.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Energy expenditure related to physical activity.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Energy expenditure related to thermoregulation.', 1);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Basal metabolic rate:', NULL, 'EMD1 2025-2026 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Corresponds to energy expenditure at rest.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Corresponds to energy expenditure during sleep.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is higher in women than in men.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is measured in a thermoneutral environment.', 1);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Food calorimetry is:', NULL, 'EMD1 2025-2026 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A direct calorimetry method.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The measurement of oxygen consumption in a given individual.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The combustion of carbohydrates and lipids in the presence of oxygen in a calorimetric bomb.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The energy value of food released into the body.', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'To treat a patient suffering from obesity, the energy balance must be:', NULL, 'EMD1 2025-2026 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Zero', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Negative', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Positive', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Indifferent', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which of these fatty acids are conditionally essential?', NULL, 'EMD1 2025-2026 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Omega 3', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Omega 6', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Omega 9', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'EPA and DHA', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In the colon, dietary fibre is digested by:', NULL, 'EMD1 2025-2026 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Colon cells', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Proteolytic enzymes', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Glycolytic enzymes', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The gut microbiota (colon bacteria)', 1);
