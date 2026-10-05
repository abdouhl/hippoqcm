-- Generated from data/s1-physiology-emd1-2025.json — 28 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning feedback mechanisms in homeostasis, negative feedback:', NULL, 'EMD1 2024-2025 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the rarest mechanism in the human body', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Brings a variable back to its optimal value after a deviation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Amplifies initial changes to accelerate a response', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Has no role in homeostasis', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Idiopathic pulmonary fibrosis (IPF) is a disease that thickens the alveolar walls. What is the consequence for oxygen diffusion?', NULL, 'EMD1 2024-2025 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'O₂ diffusion will be increased', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'O₂ diffusion will be decreased', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'CO₂ diffusion will also be increased', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'No effect on gas diffusion', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The GLUT-2 transporter carries glucose between blood and cells in both directions, depending on the concentration gradient. What happens in hyperglycemia (raised blood glucose) after a meal?', NULL, 'EMD1 2024-2025 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'GLUT-2 favors glucose entry into cells', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'GLUT-2 completely prevents glucose entry into cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'GLUT-2 actively transports glucose against its gradient using ATP', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'GLUT-2 decreases glucose entry into cells', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A patient mistakenly receives an infusion of hypertonic solution instead of an isotonic one. What immediate effect will this have on their red blood cells?', NULL, 'EMD1 2024-2025 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They will swell and burst because of massive water entry', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They will dehydrate and shrink because water leaves', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They will remain unchanged because osmosis only applies to large molecules', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They will absorb the hypertonic solution without changing volume', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The sodium–glucose cotransporter (SGLT-1) is an example of secondary active transport allowing glucose absorption in the small intestine. What is the principle of this transport?', NULL, 'EMD1 2024-2025 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucose is transported against its gradient using direct ATP energy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Glucose follows its concentration gradient without needing energy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose is transported with sodium (Na⁺) in the same direction by a symport, using the energy of the sodium gradient', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Glucose is exchanged with sodium in opposite directions (antiport)', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Voltage-gated Na⁺ channels play a key role in the action potential, passing through three states: open, closed and inactivated. What is their relationship with the falling phase of the action potential?', NULL, 'EMD1 2024-2025 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Na⁺ channels stay open to maintain depolarization', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Na⁺ channels enter the inactivation phase, preventing further Na⁺ entry', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Na⁺ channels reopen to prolong the action potential', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Na⁺ channels may be closed and open after a new stimulation', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which neurotransmitter is released by postganglionic neurons of the parasympathetic system, and on which receptors does it act?', NULL, 'EMD1 2024-2025 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Noradrenaline (NE) acts on alpha and beta receptors', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Acetylcholine (ACh) acts on muscarinic receptors', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Noradrenaline (NE) acts on nicotinic receptors', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Acetylcholine (ACh) acts on adrenergic receptors', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'G-protein-coupled membrane receptors:', 'It is the α subunit (bound to GTP) that separates and activates the effector.', 'EMD1 2024-2025 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are receptors linked to a G protein composed of three subunits α, β and γ', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is the enzymatic activity of the receptor that activates the G protein', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Once the ligand binds its specific receptor, the receptor changes its 3D conformation and activates the G protein', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The activated G protein separates from its γ-GTP subunit, which then activates an effector', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Receptors:', NULL, 'EMD1 2024-2025 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are only expressed at the cell surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Have a very weak interaction with their ligand', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Bind ligands such as steroid hormones and neurotransmitters', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Allow intercellular communication', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Intracellular second messengers:', NULL, 'EMD1 2024-2025 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Play a role in signal amplification', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'cAMP is one of these second messengers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Transmit information toward the cytosol', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are made of large molecules', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About chemical synapses:', NULL, 'EMD1 2024-2025 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Synaptic transmission is unidirectional', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The neurotransmitter diffuses from the presynaptic to the postsynaptic element through gap junctions', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'There is a synaptic delay', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The pre- and postsynaptic membranes are continuous', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Postsynaptic potentials recorded at neuro-neuronal synapses are phenomena that are:', NULL, 'EMD1 2024-2025 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'All-or-none', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Propagated, always reflecting postsynaptic hyperpolarization', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Reflecting conductance changes at the presynaptic level', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Gradable and summable', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The routes of neurotransmitter elimination are:', NULL, 'EMD1 2024-2025 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Reuptake by postsynaptic elements', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Diffusion in the synaptic space', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Reuptake by presynaptic elements', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Enzymatic degradation', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The end-plate potential:', NULL, 'EMD1 2024-2025 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a phenomenon localized at the presynaptic membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Reflects a local depolarization of the postsynaptic membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is due to activation of muscarinic-type cholinergic receptors', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Statements A, B and C are correct', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the filaments of myofibrils:', 'TnT binds tropomyosin and TnI binds actin.', 'EMD1 2024-2025 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'TnT binds to actin', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'TnI binds to myosin', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Tropomyosin masks the active sites of actin', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Myosin binds to TnC', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'During muscle contraction:', NULL, 'EMD1 2024-2025 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The A bands shorten', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The H zones disappear', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The Z discs are pulled toward the M line', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The light zones remain constant', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Calcium binding to troponin causes:', NULL, 'EMD1 2024-2025 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The opening of sodium channels', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A change in the position of tropomyosin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A conformational change of the T tubule', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The uncovering of the actin binding sites for myosin', 1);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Among these statements, tick the FALSE one:', 'Myosin heads pull the thin (actin) filaments toward the center.', 'EMD1 2024-2025 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Myosin heads pull the thick filaments toward the center of the sarcomere', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'ATP hydrolysis allows the myosin heads to pivot', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Propagation of the AP along the T tubules releases calcium', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Calcium reuptake into the sarcoplasmic reticulum requires energy', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning energy metabolism:', NULL, 'EMD1 2024-2025 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Oxidative phosphorylation does not require oxygen', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Anaerobic glycolysis is a rapid source of energy', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Aerobic respiration occurs during light but prolonged muscular activity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Anaerobic glycolysis yields 36 ATP molecules', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning fluid compartments:', NULL, 'EMD1 2024-2025 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The main cation of ECF is potassium (K⁺)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The main cation of ICF is calcium (Ca²⁺)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Intracellular fluid contains more proteins than extracellular fluid', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The major cation of ECF is sodium (Na⁺)', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning Starling''s law:', NULL, 'EMD1 2024-2025 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hydrostatic pressure stays stable', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Oncotic pressure is variable', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It concerns exchanges between plasma and cytoplasm', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It concerns exchanges between plasma and interstitial fluid', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Plasma oncotic pressure is generated:', NULL, 'EMD1 2024-2025 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'By the sodium of the extracellular fluid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'By plasma proteins', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At the level of the interstitial fluid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'By extracellular chloride', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which energy expenditures are associated with thermoregulation?', NULL, 'EMD1 2024-2025 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Physical activity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Thermolysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Postprandial thermogenesis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Thermogenesis', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'What are the main factors determining energy expenditure apart from basal metabolism?', 'Official key: AD.', 'EMD1 2024-2025 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Physical activity', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cardiac activity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Thermoregulation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The specific dynamic action of foods (SDA)', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'What is the principle of indirect calorimetry?', NULL, 'EMD1 2024-2025 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Measuring the amount of oxygen inspired and expired', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Determining the energy contained in foods by their O₂ consumption and CO₂ production', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Analyzing body temperature after food intake', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Measuring energy expenditure solely by heart rate', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'When managing obesity, the energy balance must be:', NULL, 'EMD1 2024-2025 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Zero', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Positive', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Negative', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All these statements are false', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning dietary lipids, tick the FALSE answer:', NULL, 'EMD1 2024-2025 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Omega-3 and omega-6 fatty acids (FA) are essential for humans', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Trans fatty acids are industrial fatty acids', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Red meats are rich in oleic fatty acid', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Omega-6 in excess are pro-inflammatory', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Macronutrients are represented by all these nutrients except one. Which one?', NULL, 'EMD1 2024-2025 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Carbohydrates', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Lipids', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Proteins', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Vitamins', 1);
