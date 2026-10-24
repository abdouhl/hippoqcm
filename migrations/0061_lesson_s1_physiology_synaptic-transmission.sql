-- Generated from data/lessons/s1-physiology-synaptic-transmission.json — lesson "Synaptic transmission": 18 exam + 28 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Synaptic transmission', 's1/physiology/synaptic-transmission.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q1',
    'EMD1 2022-2023 Q2',
    'EMD1 2022-2023 Q3',
    'EMD1 2022-2023 Q4',
    'EMD1 2022-2023 Q5',
    'EMD1 2022-2023 Q7',
    'EMD1 2022-2023 Q14',
    'EMD1 2022-2023 Q19',
    'EMD1 2023-2024 Q7',
    'EMD1 2023-2024 Q8',
    'EMD1 2023-2024 Q10',
    'EMD1 2023-2024 Q11',
    'EMD1 2023-2024 Q21',
    'EMD1 2024-2025 Q11',
    'EMD1 2024-2025 Q12',
    'EMD1 2024-2025 Q13',
    'EMD1 2024-2025 Q14',
    'EMD1 2025-2026 Q13'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About electrical and chemical synapses:', 'Chemical synapses are one-way; electrical synapses transmit potential variations directly (ions through gap-junction channels) and are bidirectional. Only chemical synapses use a neurotransmitter.', 'Lesson: Synaptic transmission', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In an electrical synapse, ions pass directly from one cell to the other through the channels of communicating (gap) junctions', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In an electrical synapse, transmission is bidirectional', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'In a chemical synapse, information passes only from the presynaptic to the postsynaptic element', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In an electrical synapse, a neurotransmitter is released into the synaptic cleft', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Among the properties of chemical synapses:', 'Chemical synapses are unidirectional, show fatigue and synaptic delay, have an integrative role (the information can be modified) and do not obey the all-or-nothing law.', 'Lesson: Synaptic transmission', NULL, 'generated', 16);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The postsynaptic neuron only relays the information without modifying it', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They obey the all-or-nothing law', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'There is a synaptic delay, the time needed to release the neurotransmitter and for it to act on the postsynaptic receptor', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Transmission is unidirectional', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'During repeated high-frequency stimulation of a presynaptic neuron, the postsynaptic response progressively decreases. This corresponds to:', 'Fatigue: repeated stimulations lead to a progressive decrease of the postsynaptic response by exhaustion of the neurotransmitter stock. Synaptic delay is a fixed time lag, not a decrement.', 'Lesson: Synaptic transmission', NULL, 'generated', 16);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Synaptic delay', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Synaptic fatigue, by exhaustion of the neurotransmitter stock', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The all-or-nothing law', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The integrative role of the synapse', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In the functioning of a chemical synapse:', 'Sequence: AP → Ca²⁺ entry → exocytosis by fusion → release into the cleft → binding to a specific receptor → rapid inactivation (degradation, recapture, diffusion). It is Ca²⁺, not Na⁺, that triggers release.', 'Lesson: Synaptic transmission', NULL, 'generated', 14);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The neurotransmitter is rapidly inactivated by degradation, recapture or diffusion', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sodium entry is the direct trigger of vesicle exocytosis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The arrival of the action potential at the presynaptic terminal causes calcium entry', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The calcium signal triggers exocytosis by membrane fusion', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Once acetylcholine has acted on the motor end-plate, its action is terminated by:', 'ACh is quickly degraded by acetylcholinesterase into choline and acetic acid; choline is recaptured by the presynaptic terminal via active transporters. Choline acetyltransferase synthesizes ACh, it does not degrade it.', 'Lesson: Synaptic transmission', NULL, 'generated', 35);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Recapture of choline into the presynaptic terminal by active transporters', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Hydrolysis by acetylcholinesterase into choline and acetic acid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Reuptake of intact acetylcholine by the muscle fiber', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Degradation by choline acetyltransferase', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the elements of the synaptic complex:', 'The presynaptic element is always a nerve cell; the postsynaptic one is a neuron (axo-somatic, axo-dendritic, axo-axonic = neuro-neuronal) or an effector (striated, smooth muscle, gland).', 'Lesson: Synaptic transmission', NULL, 'generated', 9);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Axo-axonic synapses are neuro-effector synapses', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The presynaptic element can be a glandular cell', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In a neuro-effector synapse, the postsynaptic element can be a skeletal or cardiac striated muscle cell', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In a neuro-effector synapse, the postsynaptic element can be a smooth muscle or glandular cell', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the classification of synapses:', 'By effect: excitatory = depolarization, inhibitory = hyperpolarization. By mediator: cholinergic (ACh), glutamatergic (glutamate), GABAergic (GABA), dopaminergic, peptidergic. GABA is released by GABAergic synapses, not glutamatergic ones.', 'Lesson: Synaptic transmission', NULL, 'generated', 13);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In an inhibitory synapse, activation of the presynaptic element hyperpolarizes the postsynaptic membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cholinergic, dopaminergic and peptidergic synapses are classified according to the chemical mediator released', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glutamatergic synapses release gamma-aminobutyric acid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'In an excitatory synapse, activation of the presynaptic element depolarizes the postsynaptic membrane', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'For a molecule to be considered a neurotransmitter, it must:', 'All four are criteria listed in the course, together with being released in sufficient quantity to act on the postsynaptic neuron.', 'Lesson: Synaptic transmission', NULL, 'generated', 17);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Be specifically inactivated', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Be synthesized by the neuron', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Reproduce the effect of the endogenous neurotransmitter when applied directly to the target neuron', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Be present in the presynaptic terminal', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which of the following are monoamines?', 'Monoamines: noradrenaline, adrenaline, dopamine, serotonin, histamine. Acetylcholine forms its own group and glutamate is an amino acid.', 'Lesson: Synaptic transmission', NULL, 'generated', 18);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Dopamine', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glutamate', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Acetylcholine', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Histamine', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Belong to the ''other'' (non-classic) neurotransmitters:', 'Non-classic neurotransmitters are mainly peptides, plus NO and ATP/adenosine. Glycine is a classic amino-acid neurotransmitter.', 'Lesson: Synaptic transmission', NULL, 'generated', 18);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nitric oxide (NO)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glycine', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'ATP and adenosine', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Peptides', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the structure of the neuromuscular junction:', 'Each axon branch innervates a single muscle fiber; the cleft is 50–100 nm; the muscle membrane carries nicotinic ACh receptors at the crests of the junctional folds.', 'Lesson: Synaptic transmission', NULL, 'generated', 20);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The postsynaptic receptors are muscarinic acetylcholine receptors', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is the contact between the axon of an α motor neuron and a skeletal striated muscle fiber', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The synaptic cleft is 50 to 100 nm wide', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Each terminal branch of the motor axon innervates several muscle fibers', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In a nerve–muscle preparation treated with curare or tetrodotoxin (TTX), stimulation of the motor nerve:', 'Normally nerve stimulation always triggers a muscle AP; after curarization or TTX block only the EPP remains: a local phenomenon peaking at 2 ms and back to zero in 20 ms.', 'Lesson: Synaptic transmission', NULL, 'generated', 23);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Produces a potential that reaches threshold and propagates along the muscle fiber', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Reveals a local depolarization of the end-plate, the end-plate potential (EPP)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Produces a potential that peaks in about 2 ms and decays exponentially to zero in about 20 ms', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'No longer triggers a propagated muscle action potential', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Ionic mechanism of the end-plate potential (voltage-clamp experiment):', 'During the EPP membrane resistance decreases as permeabilities increase. Na⁺ and K⁺ each tend toward their equilibrium potential, giving an intermediate value around −15 mV.', 'Lesson: Synaptic transmission', NULL, 'generated', 25);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The EPP is due to an entry of Cl⁻', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The resulting potential is an intermediate value around −15 mV', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The EPP is due to a simultaneous increase in Na⁺ and K⁺ conductances', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Membrane resistance increases during the EPP', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Miniature end-plate potentials (MEPPs):', 'MEPPs are small (0.5 mV) spontaneous potentials occurring randomly, not regularly, attributed to the release of quanta of ACh.', 'Lesson: Synaptic transmission', NULL, 'generated', 29);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Have an amplitude of about 0.5 mV', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Result from the release of small amounts (quanta) of acetylcholine', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are recorded without any nerve stimulation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Occur at regular intervals', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Synthesis of acetylcholine:', 'ACh is made in the cytosol of the presynaptic ending from acetyl-CoA (from mitochondrial glucose metabolism) and choline, by choline acetyltransferase; it is then stored in vesicles.', 'Lesson: Synaptic transmission', NULL, 'generated', 30);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Uses acetyl-coenzyme A and choline', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Takes place in the synaptic cleft', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is catalyzed by choline acetyltransferase (CAT)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Takes place in the cytosol of the presynaptic nerve ending', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The ion whose entry into the motor nerve terminal triggers acetylcholine exocytosis is:', 'The presynaptic AP rapidly opens voltage-gated Ca²⁺ channels; Ca²⁺ entry triggers vesicle fusion and exocytosis.', 'Lesson: Synaptic transmission', NULL, 'generated', 32);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ca²⁺', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Na⁺', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'K⁺', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Cl⁻', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Molecular mechanism of exocytosis:', 'Synaptotagmin and synaptobrevin are vesicular; syntaxin and SNAP25 are plasma-membrane SNAREs. Together they dock the vesicle and fuse the membranes.', 'Lesson: Synaptic transmission', NULL, 'generated', 33);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Synaptotagmin, activated by Ca²⁺, is a protein of the plasma membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The SNARE complex allows docking of the vesicles and fusion of the vesicular and plasma membranes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Synaptobrevin is a vesicular protein', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Syntaxin and SNAP25 belong to the plasma membrane', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The muscle nicotinic acetylcholine receptor:', 'The receptor has 5 subunits (2α, β, γ, δ). Binding of two ACh molecules switches it from closed to open, causing a rapid, transient increase in cation (Na⁺, K⁺) permeability.', 'Lesson: Synaptic transmission', NULL, 'generated', 37);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'When open, increases the membrane permeability to Na⁺ and K⁺', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a glycoprotein of 5 subunits forming the walls of a central pore', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Contains two α subunits', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Opens as soon as a single molecule of acetylcholine binds', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A patient receives curare during surgery. Curare:', 'Curare acts post-synaptically as a reversible competitive antagonist (non-depolarizing blocker). Suxamethonium is a depolarizing agonist; release is blocked by other agents (Mg²⁺, botulinum toxin…).', 'Lesson: Synaptic transmission', NULL, 'generated', 41);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Blocks the release of acetylcholine from the nerve ending', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a reversible competitive antagonist of acetylcholine at the motor end-plate', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is an acetylcholine agonist like suxamethonium', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a non-depolarizing blocking agent', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Agents that block the release of acetylcholine at the neuromuscular junction:', 'Release is blocked by Ca²⁺-entry inhibitors (Mg²⁺, aminoglycosides, Ca²⁺-channel blockers) and neurotoxins (botulinum toxin, β-bungarotoxin). Hemicholinium inhibits ACh synthesis.', 'Lesson: Synaptic transmission', NULL, 'generated', 40);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hemicholinium', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Aminoglycoside antibiotics (streptomycin, neomycin)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Botulinum toxin', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Mg²⁺', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which drug–mechanism pairs are correct?', 'Hemicholinium and vesamicol inhibit ACh synthesis; α-bungarotoxin is an irreversible competitive antagonist; decamethonium and suxamethonium are depolarizing agonists.', 'Lesson: Synaptic transmission', NULL, 'generated', 41);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hemicholinium – inhibition of acetylcholine synthesis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'α-bungarotoxin – irreversible competitive antagonist', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Vesamicol – depolarizing blocking agent', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Suxamethonium – acetylcholine agonist (depolarizing blocker)', 1);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A patient has autoantibodies against the presynaptic calcium channels of the neuromuscular junction:', 'Lambert–Eaton (anti-Ca²⁺ channel antibodies) and botulism are presynaptic disorders. Myasthenia gravis is postsynaptic, with antibodies against ACh receptors.', 'Lesson: Synaptic transmission', NULL, 'generated', 42);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a presynaptic disorder', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'This is Lambert–Eaton syndrome', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Botulism is also a presynaptic disorder, the toxin blocking acetylcholine release', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'This is myasthenia gravis', 0);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The excitatory postsynaptic potential (EPSP):', 'The EPSP is local, summable, gradable (amplitude depends on the NT amount) and decremental; it does not obey the all-or-nothing law and has no refractory period.', 'Lesson: Synaptic transmission', NULL, 'generated', 45);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has an amplitude that depends on the amount of neurotransmitter released', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Obeys the all-or-nothing law', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Has no refractory period', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a local depolarization of the postsynaptic membrane', 1);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the ionic mechanisms of postsynaptic potentials:', 'EPSP: simultaneous increase in gNa⁺ and gK⁺. IPSP: hyperpolarization by Cl⁻ entry and/or K⁺ exit. Na⁺ entry would depolarize.', 'Lesson: Synaptic transmission', NULL, 'generated', 48);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The IPSP can result from an exit of K⁺ from the cell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The EPSP results from a simultaneous increase in gNa⁺ and gK⁺', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The IPSP results from an entry of Na⁺ into the cell', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The IPSP can result from an entry of Cl⁻ into the cell', 1);

-- G25
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Binding of GABA to its receptors on a postsynaptic neuron:', 'GABA is inhibitory: the IPSP is a hyperpolarization, mirror image of the EPSP, here due to Cl⁻ entry through transmitter-gated channels.', 'Lesson: Synaptic transmission', NULL, 'generated', 49);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Depolarizes the postsynaptic membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Produces a hyperpolarization of the postsynaptic membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Produces a potential that is the mirror image of the EPSP', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Opens channels through which Cl⁻ enters the cell', 1);

-- G26
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About synaptic integration in the postsynaptic neuron:', 'All are stated in the course: the trigger zone is rich in voltage-dependent Na⁺ channels, so summed EPSPs that exceed threshold there give rise to an AP.', 'Lesson: Synaptic transmission', NULL, 'generated', 51);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'An action potential is triggered when the sum of EPSPs exceeds threshold at the initial segment', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Membrane excitability is maximal at the initial segment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'This is due to the abundance of voltage-dependent Na⁺ channels there', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The initial segment (trigger zone) is where the neuronal action potential is born', 1);

-- G27
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The figure shows potentials recorded at the end-plate of a muscle fiber after motor-nerve stimulation, in the normal state and after Na⁺ channel blockade.', 'Normally nerve stimulation always triggers a muscle AP (Y). With Na⁺ channels blocked only the local EPP remains (X). The dashed line is the trigger threshold (≈ −60 mV); rest is ≈ −75 mV.', 'Lesson: Synaptic transmission', 's1/lessons/synaptic-transmission-g1.png', 'generated', 24);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Curve Y is a propagated muscle action potential', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Curves X are end-plate potentials, local depolarizations', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The dashed line corresponds to the resting potential of the muscle fiber', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Curves X were recorded in the normal state, without any blockade', 0);

-- G28
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In a neuro-neuronal synapse:', 'The EPSP is a postsynaptic depolarization (e.g. glutamate opening Na⁺-permeable channels). Release depends on presynaptic Ca²⁺ entry. Many mediators exist (glutamate, GABA, dopamine…), not only ACh.', 'Lesson: Synaptic transmission', NULL, 'generated', 46);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Synaptic transmission'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glutamate binding to transmitter-gated channels lets Na⁺ in and produces an EPSP', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Neurotransmitter release requires calcium entry into the presynaptic terminal', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The EPSP is a depolarization of the presynaptic membrane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The neurotransmitter is always acetylcholine', 0);
