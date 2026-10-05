-- Generated from data/s1-physiology-emd1-2024.json — 40 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A substance can only be transported against its electrochemical gradient by:', 'No official answer key for this exam — answers worked out from the course.', 'EMD1 2023-2024 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primary active transport', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Facilitated diffusion', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Simple diffusion through the lipid bilayer', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Passage through ion channels', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which of the following is NOT an example of primary active transport?', 'No official key — Na⁺–glucose cotransport is secondary active.', 'EMD1 2023-2024 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Na⁺–glucose exchange', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ca²⁺ ATPases', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'K⁺–H⁺ ATPase', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The Na⁺/K⁺ ATPase pump', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning the ionic origin of the resting potential, which answer is FALSE?', 'No official key — voltage-gated Na⁺ channels are closed at rest.', 'EMD1 2023-2024 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The Na⁺/K⁺ ATPase pumps', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Voltage-gated sodium channels', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The Gibbs–Donnan equilibrium', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The selective permeability of the membrane', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'What is the meaning of the all-or-none law for the action potential?', 'No official key.', 'EMD1 2023-2024 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The action potential is triggered for any stimulus intensity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The action potential stays the same at suprathreshold activation levels', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The action potential changes amplitude depending on the stimulus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The action potential can be partially triggered', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'What are the characteristics of graded potentials?', 'No official key.', 'EMD1 2023-2024 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They occur in any region of the cell', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Their amplitude is independent of stimulus intensity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They are summable', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They have an activation threshold', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'What characterizes voltage-gated ion channels?', 'No official key.', 'EMD1 2023-2024 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are always open', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They are activated by changes in membrane voltage', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They are selective for a single type of ion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They are mainly involved in protein synthesis', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About chemical synapses:', 'No official key.', 'EMD1 2023-2024 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The neurotransmitter diffuses from the presynaptic to the postsynaptic element through gap junctions', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Synaptic transmission is unidirectional', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'There is a synaptic delay', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The pre- and postsynaptic membranes are continuous', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The routes of neurotransmitter elimination are:', 'No official key.', 'EMD1 2023-2024 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Enzymatic degradation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Diffusion in the synaptic space', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Reuptake by presynaptic elements', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reuptake by postsynaptic elements', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Receptors:', 'No official key — receptors can be intracellular and bind with high affinity.', 'EMD1 2023-2024 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are only expressed at the cell surface', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Allow intercellular communication', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Bind ligands such as steroid hormones and neurotransmitters', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Have a very weak interaction with their ligand', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Postsynaptic potentials recorded at neuro-neuronal synapses are phenomena that are:', 'No official key.', 'EMD1 2023-2024 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'All-or-none', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Propagated, always reflecting postsynaptic hyperpolarization', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Gradable and summable', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reflecting changes in ion conductance at the presynaptic level', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In a neuro-neuronal synapse:', 'No official key.', 'EMD1 2023-2024 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The neurotransmitter is not always acetylcholine', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sodium entry into the presynaptic terminal causes neurotransmitter release', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The neurotransmitter can cause depolarization of the postsynaptic element', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The neurotransmitter can cause hyperpolarization of the postsynaptic element', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Intracellular second messengers:', 'No official key — second messengers are small molecules.', 'EMD1 2023-2024 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Transmit information toward the cytosol', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Play a role in signal amplification', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are made of large molecules', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'cAMP is one of these second messengers', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In the liver, adrenergic stimulation causes:', 'No official key.', 'EMD1 2023-2024 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gluconeogenesis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glycogenesis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Lipolysis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Glycogenolysis', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Muscarinic receptors:', 'No official key — organophosphates inhibit acetylcholinesterase, indirectly stimulating muscarinic receptors.', 'EMD1 2023-2024 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are dopaminergic', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Are located in autonomic ganglia', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Are stimulated by organophosphates', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are inhibited by atropine', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The sympathetic system at the sweat glands:', 'No official key — the sympathetic innervation of sweat glands is cholinergic.', 'EMD1 2023-2024 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Preganglionic fibers are short', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Preganglionic fibers are cholinergic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Postganglionic fibers are cholinergic', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Postganglionic fibers are adrenergic', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Presynaptic α2 receptors of the sympathetic system:', 'No official key.', 'EMD1 2023-2024 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'When stimulated, they cause vasoconstriction', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They are stimulated by excess noradrenaline', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They are inhibited by acetylcholine', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'When stimulated, they cause negative feedback on noradrenaline secretion', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In skeletal striated muscle:', 'No official key.', 'EMD1 2023-2024 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Thick filaments are mainly made of myosin molecules', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The sarcomere is the contractile functional unit', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Each muscle fiber receives several nerve terminals from one motor neuron', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The heads of actin contain the binding sites for myosin', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Myosin is:', 'No official key.', 'EMD1 2023-2024 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Made of 2 heavy chains and one light chain', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Made of 2 heavy chains and 4 light chains', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its head contains 2 binding sites', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its head contains an ATP hydrolysis site', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The thin filament: actin is', 'No official key.', 'EMD1 2023-2024 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Made of 2 light chains and 2 heavy chains', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Made of G-actin, troponin and tropomyosin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Made of F-actin and tropomyosin', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Contraction is the sliding of thin filaments between thick filaments', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'During contraction:', 'No official key.', 'EMD1 2023-2024 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ATP is needed for contraction but not for muscle relaxation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'ATP resynthesis occurs only through oxygen-consuming mechanisms', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The resting length is the length of the muscle in the body at rest', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The heat produced during shortening is proportional to the force', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'At the neuromuscular junction:', 'No official key.', 'EMD1 2023-2024 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Acetylcholine release is triggered by the arrival of the motor neuron action potential', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The duration of action of acetylcholine is not limited', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The end-plate potential is a local potential, gradable by spatial and temporal summation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Transmission can be blocked by curare', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning skeletal muscle metabolism, the energy used comes from:', 'No official key.', 'EMD1 2023-2024 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Direct phosphorylation of ATP by creatine phosphate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Anaerobic glycolysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Oxidative phosphorylation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Breakdown of carbohydrates and lipids', 1);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the internal environment (milieu intérieur):', 'No official key — it is regulated within limits (dynamic equilibrium), not strictly constant.', 'EMD1 2023-2024 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is the interstitial fluid in which the body''s cells bathe and live', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It represents 1/3 of total body water volume', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its role is to supply the substances needed for cell function and remove waste toward excretory organs', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is an environment that is always constant and balanced', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning the body''s fluid compartments:', 'No official key.', 'EMD1 2023-2024 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Interstitial fluid represents 80% of the internal environment', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Intracellular fluid represents 2/3 of total body water volume', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Transcellular fluids are the main component of the internal environment', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Plasma and interstitial fluid have nearly identical ionic composition and osmolarity', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In the Gibbs–Donnan law, all conditions are correct except one:', 'No official key — it is the product of the diffusible ions that is equal on both sides.', 'EMD1 2023-2024 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Electroneutrality must be respected on each side of the compartments', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The product of non-diffusible ions is identical on each side of the compartments', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The sum of diffusible ions is higher in the compartment containing the non-diffusible ion', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The protein concentration of plasma is higher than that of the interstitial fluid', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The properties of the tracer in the dilution method — it must be:', 'No official key.', 'EMD1 2023-2024 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Non-toxic', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Able to diffuse outside the space to be measured', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Not modify tissue function and metabolism', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Strongly eliminated and/or metabolized', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The mechanisms of interstitial edema are:', 'No official key.', 'EMD1 2023-2024 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Increased capillary hydrostatic pressure through precapillary vasodilation or increased post-capillary pressure', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Decreased plasma oncotic pressure from hypoproteinemia', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Increased capillary membrane permeability following inflammation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'When reabsorption exceeds filtration', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Apart from renal regulation, a positive water balance causes:', 'No official key.', 'EMD1 2023-2024 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Extracellular hyperosmolarity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Extracellular hypo-osmolarity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Intracellular dehydration', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Intracellular overhydration', 1);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The daily protein requirement:', 'No official key.', 'EMD1 2023-2024 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Can be considered covered for a balanced nitrogen balance', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Corresponds to about 1 g/kg/day', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Depends on the biological value of dietary proteins', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is proportional to weight', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Direct calorimetry measures:', 'No official key.', 'EMD1 2023-2024 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The heat of combustion of foods', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The thermal coefficient of oxygen', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The specific dynamic action of foods', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The caloric equivalent of oxygen', 0);

-- Q31
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Basal metabolism:', 'No official key — it is measured at rest, not for a worker.', 'EMD1 2023-2024 Q31', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Increases in hyperthyroidism', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the energy expenditure of a worker per day and per square meter of body surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Has a value close to 40 kcal/m²/h', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Exclusively represents the energy cost of renal function', 0);

-- Q32
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Postprandial extra heat:', 'No official key.', 'EMD1 2023-2024 Q32', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is independent of the nature of the food ingested', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Increases when food is given intravenously', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Represents an energy expenditure during the transformations of food before cellular use', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is greater when the diet is very rich in protein', 1);

-- Q33
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'An adult subject, 170 cm and 70 kg, consumed 1.5 liters of oxygen in 6 minutes during measurement of basal metabolism. We can conclude that:', 'No official key — 15 L O₂/h × 4.85 kcal/L × 24 h ≈ 1746 kcal/day; /70 kg ≈ 24.9 kcal. Measured at thermal neutrality (≈ 20 °C clothed).', 'EMD1 2023-2024 Q33', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Their basal expenditure is about 1746 kcal/day', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Their basal expenditure per kg of body weight is close to 24.9 kcal', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Their basal metabolism is calculated at an ambient temperature of 30 °C', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Their basal metabolism is calculated fasting', 1);

-- Q34
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning basal energy expenditure:', 'No official key.', 'EMD1 2023-2024 Q34', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is intended for muscular activity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is intended for renal consumption', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is intended for irreducible vital functions', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is the amount of energy used during sleep', 0);

-- Q35
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which physiological process helps dissipate body heat when it is hot?', 'No official key.', 'EMD1 2023-2024 Q35', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Vasoconstriction', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Sweating', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Shivering', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Thermolysis', 1);

-- Q36
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'When body temperature drops, what can be activated to generate heat?', 'No official key — vasoconstriction conserves heat but does not generate it.', 'EMD1 2023-2024 Q36', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Vasodilation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Sweating', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Vasoconstriction', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Thermogenesis', 1);

-- Q37
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The total daily energy intake (TDEI) corresponds to:', 'No official key.', 'EMD1 2023-2024 Q37', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The energy supplied by energy-yielding macronutrients', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The energy supplied by energy-yielding micronutrients', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The energy supplied by minerals and water', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The energy supplied by carbohydrates, lipids and proteins', 1);

-- Q38
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In clinical practice, to calculate an individual''s total energy expenditure (TEE), one must:', 'No official key.', 'EMD1 2023-2024 Q38', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Calculate resting energy expenditure (REE) by direct calorimetry', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Calculate resting energy expenditure (REE) with validated formulas', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Specify the individual''s physical activity level (PAL)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Use the formula TEE = REE × PAL', 1);

-- Q39
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A negative energy balance corresponds to:', 'No official key.', 'EMD1 2023-2024 Q39', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Energy intake higher than energy expenditure', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Energy intake lower than energy expenditure', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Energy intake equal to energy expenditure', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Weight loss', 1);

-- Q40
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Among these proteins, which provide all the essential amino acids?', 'No official key — soy is a complete plant protein; other pulses are low in methionine.', 'EMD1 2023-2024 Q40', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Red meats', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Eggs', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Pulses (dried legumes)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Soy', 1);
