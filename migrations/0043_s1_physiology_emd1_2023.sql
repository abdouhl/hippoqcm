-- Generated from data/s1-physiology-emd1-2023.json — 40 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About chemical synapses:', 'No official answer key for this exam — answers worked out from the course.', 'EMD1 2022-2023 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The neurotransmitter diffuses from the presynaptic to the postsynaptic element through gap junctions', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Synaptic transmission is unidirectional', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'There is a synaptic delay', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The pre- and postsynaptic membranes are continuous', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The routes of neurotransmitter elimination are:', 'No official key — reuptake is presynaptic (and glial).', 'EMD1 2022-2023 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Enzymatic degradation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Diffusion in the synaptic space', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Reuptake by presynaptic elements', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reuptake by postsynaptic elements', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In an electrical synapse, synaptic transmission is carried by:', 'No official key.', 'EMD1 2022-2023 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Acetylcholine', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Ionic current', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glycine', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'None of these', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Postsynaptic potentials recorded at neuro-neuronal synapses are phenomena that are:', 'No official key.', 'EMD1 2022-2023 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'All-or-none', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Propagated, always reflecting postsynaptic hyperpolarization', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Gradable and summable', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reflecting conductance changes at the presynaptic level', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In a neuro-neuronal synapse:', 'No official key — calcium entry triggers release.', 'EMD1 2022-2023 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The neurotransmitter is not always acetylcholine', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sodium entry into the presynaptic terminal causes neurotransmitter release', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The neurotransmitter can cause depolarization of the postsynaptic element', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The neurotransmitter can cause hyperpolarization of the postsynaptic element', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Assisted (mediated) membrane transport:', 'No official key.', 'EMD1 2022-2023 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Consists of simple diffusion', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is carried out by proteins', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is defined as primary active when it depends on ATP hydrolysis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Follows the electrochemical gradient if it is passive', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The end-plate potential (EPP) physiologically reflects:', 'No official key.', 'EMD1 2022-2023 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'An electrotonic depolarization of the presynaptic membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A local depolarization of the postsynaptic membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A non-propagated hyperpolarization', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'An interaction between acetylcholine and nicotine', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which signaling pathway allows ligands to act at a distance?', 'No official key.', 'EMD1 2022-2023 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Paracrine', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Autocrine', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Endocrine', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Gap junctions', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Cell-surface receptors can be:', 'No official key.', 'EMD1 2022-2023 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nuclear receptors', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'G-protein-coupled receptors', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Enzymatic receptors', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Channel receptors', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In the cAMP pathway, the G protein stimulates:', 'No official key.', 'EMD1 2022-2023 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Phospholipase C', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The endoplasmic reticulum', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Calmodulin', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Adenylyl cyclase', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'When a ligand binds a G-protein-coupled receptor, the G protein can:', 'No official key — kinases are activated by second messengers, not directly by the G protein.', 'EMD1 2022-2023 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Activate protein kinases', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Trigger the formation of second messengers', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Trigger inhibition of second-messenger formation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Trigger the opening of an ion channel', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The resting membrane potential is mainly determined by:', 'No official key.', 'EMD1 2022-2023 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The K⁺ gradient', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The Cl⁻ gradient', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The Ca²⁺ gradient', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The Na⁺ gradient', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Conduction of the action potential in myelinated fibers:', 'No official key.', 'EMD1 2022-2023 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is slower than in unmyelinated fibers', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Occurs step by step (continuously)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is saltatory', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is faster than in unmyelinated fibers', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which substance blocks sodium channels?', 'No official key — TEA blocks K⁺ channels.', 'EMD1 2022-2023 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Tetraethylammonium (TEA)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Tetrodotoxin (TTX)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Curare', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'GABA', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In skeletal striated muscle:', 'No official key — each fiber receives a single terminal.', 'EMD1 2022-2023 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Thick filaments are mainly made of myosin molecules', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The sarcomere is the contractile functional unit', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Each muscle fiber receives several nerve terminals from one motor neuron', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The heads of actin contain the binding sites for myosin', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Myosin is:', 'No official key — the head binds actin and ATP.', 'EMD1 2022-2023 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Made of 2 heavy chains and one light chain', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Made of 2 heavy chains and 4 light chains', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its head contains 2 binding sites', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its head contains an ATP hydrolysis site', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The thin filament: actin is', 'No official key.', 'EMD1 2022-2023 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Made of 2 light chains and 2 heavy chains', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Made of G-actin, troponin and tropomyosin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Made of F-actin and tropomyosin', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Contraction is the sliding of thin filaments between thick filaments', 1);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'During contraction:', 'No official key.', 'EMD1 2022-2023 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ATP is needed for contraction but not for muscle relaxation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'ATP resynthesis occurs only through oxygen-consuming mechanisms', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The resting length is the length of the muscle in the body at rest', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The heat produced during shortening is proportional to the force', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'At the neuromuscular junction:', 'No official key.', 'EMD1 2022-2023 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Acetylcholine release is triggered by the arrival of the motor neuron action potential', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The duration of action of acetylcholine is not limited', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The end-plate potential is a local potential, gradable by spatial and temporal summation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Transmission can be blocked by curare', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning skeletal muscle metabolism, the energy used comes from:', 'No official key.', 'EMD1 2022-2023 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Direct phosphorylation of ATP by creatine phosphate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Anaerobic glycolysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Oxidative phosphorylation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Breakdown of carbohydrates and lipids', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Chemical energy is stored in the form of:', 'No official key — the store is creatine phosphate, not creatinine.', 'EMD1 2022-2023 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Adenosine diphosphate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Adenosine triphosphate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Creatinine phosphate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Triglyceride', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The regulatory center of the autonomic nervous system:', 'No official key — hypothalamus/brainstem.', 'EMD1 2022-2023 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is peripheral', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is central', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Does not exist; it is autonomous', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is peripheral and central', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Dry mouth is due to:', 'No official key.', 'EMD1 2022-2023 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cholinergic stimulation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cholinergic inhibition', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Dopaminergic inhibition', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Adrenergic stimulation', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Muscarinic receptors are found in:', 'No official key.', 'EMD1 2022-2023 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Autonomic ganglia', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The gastrointestinal tract', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Bronchiolar smooth muscle', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Skeletal muscles', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The adrenal medulla:', 'No official key — it is a modified sympathetic ganglion.', 'EMD1 2022-2023 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a gland with a catabolic effect', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a parasympathetic ganglion', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Allows adrenaline discharge under stress', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Releases small amounts of noradrenaline and adrenaline at rest', 1);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The internal environment (milieu intérieur) is:', 'No official key — ECF is 1/3 of total body water.', 'EMD1 2022-2023 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The extracellular fluid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The intracellular fluid', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Interstitial fluid makes up most of the internal environment', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It represents 2/3 of total body water volume', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'All these fluids make up the internal environment except:', 'No official key.', 'EMD1 2022-2023 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Interstitial fluid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cytosol', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Aqueous humor of the eye', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lymph', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Plasma osmolarity is:', 'No official key.', 'EMD1 2022-2023 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Identical to that of interstitial fluid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Identical to that of intracellular fluid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Kalemia is its main determinant', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Natremia is its main determinant', 1);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning the tracer dilution method:', 'No official key — the tracer must diffuse only into the compartment measured and be little eliminated.', 'EMD1 2022-2023 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The tracer must diffuse into all fluid compartments', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Tritium (³H) is the tracer used to measure total body water volume', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the reference method for measuring body fluid volumes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The tracer must be strongly eliminated and/or metabolized', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The mechanisms of interstitial edema can be:', 'No official key.', 'EMD1 2022-2023 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Increased capillary hydrostatic pressure', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Decreased capillary hydrostatic pressure', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Hypoproteinemia', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Inflammation', 1);

-- Q31
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The Gibbs–Donnan law governs ion concentrations and distribution in the body''s compartments:', 'No official key.', 'EMD1 2022-2023 Q31', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[Na⁺] of extracellular fluid is higher than [Na⁺] of intracellular fluid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Plasma protein concentration is lower than that of the interstitial fluid', 0),
  ((SELECT MAX(id) FROM questions), 'C', '[K⁺] of intracellular fluid is higher than [K⁺] of extracellular fluid', 1),
  ((SELECT MAX(id) FROM questions), 'D', '[Cl⁻] of extracellular fluid is lower than [Cl⁻] of intracellular fluid', 0);

-- Q32
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning water balance anomalies, the consequences of a positive water balance are:', 'No official key.', 'EMD1 2022-2023 Q32', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Extracellular hyperosmolality', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Intracellular overhydration', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Intracellular dehydration', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Extracellular hypo-osmolality', 1);

-- Q33
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The thermal neutrality zone:', 'No official key — it is an ambient temperature range, not a body temperature.', 'EMD1 2022-2023 Q33', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Varies from one species to another', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the temperature corresponding to basal metabolism', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Varies with the individual''s posture', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is the body temperature at which no thermoregulatory response is engaged', 0);

-- Q34
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Food calorimetry:', 'No official key.', 'EMD1 2022-2023 Q34', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a direct calorimetry technique', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Relies on measuring gas exchange', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Allowed definition of the caloric equivalent of the different substrates', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Has an imprecision factor: the digestive factor', 1);

-- Q35
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Extra heat (specific dynamic action) is greatest for:', 'No official key.', 'EMD1 2022-2023 Q35', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lipids', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Fibers', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Amino acids', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Proteins', 1);

-- Q36
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The Berthelot bomb calorimeter measures:', 'No official key.', 'EMD1 2022-2023 Q36', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The theoretical caloric value of organic matter', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The real caloric value of organic matter', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The caloric value after partial combustion of organic matter', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The caloric value after total combustion of organic matter', 1);

-- Q37
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The food ration is defined as:', 'No official key.', 'EMD1 2022-2023 Q37', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The amount of food needed to cover an individual''s weekly needs in matter and energy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The amount of food needed to cover the daily needs of a group of individuals in matter and energy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The amount of food needed to cover an individual''s daily needs in vitamins and ATP', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The amount of food needed to cover an individual''s daily needs in matter and energy', 1);

-- Q38
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The energetic food ration is provided by:', 'No official key.', 'EMD1 2022-2023 Q38', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sucrose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Starch', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Folic acid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Sodium', 0);

-- Q39
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'What is the caloric content of 1 g of lipids?', 'No official key.', 'EMD1 2022-2023 Q39', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '9 kcal', 1),
  ((SELECT MAX(id) FROM questions), 'B', '6 kcal', 0),
  ((SELECT MAX(id) FROM questions), 'C', '7 kcal', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4 kcal', 0);

-- Q40
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The energy intake from carbohydrates represents:', 'No official key.', 'EMD1 2022-2023 Q40', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10–15% of daily energy intake', 0),
  ((SELECT MAX(id) FROM questions), 'B', '40–45% of daily energy intake', 0),
  ((SELECT MAX(id) FROM questions), 'C', '50–55% of daily energy intake', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'More than 60% of daily energy intake', 0);
