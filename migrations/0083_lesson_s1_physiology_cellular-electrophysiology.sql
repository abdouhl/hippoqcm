-- Generated from data/lessons/s1-physiology-cellular-electrophysiology.json — lesson "Cellular electrophysiology": 14 exam + 25 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Cellular electrophysiology', 's1/physiology/cellular-electrophysiology.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q4',
    'EMD1 2022-2023 Q12',
    'EMD1 2022-2023 Q13',
    'EMD1 2022-2023 Q14',
    'EMD1 2023-2024 Q3',
    'EMD1 2023-2024 Q4',
    'EMD1 2023-2024 Q5',
    'EMD1 2023-2024 Q6',
    'EMD1 2023-2024 Q10',
    'EMD1 2024-2025 Q6',
    'EMD1 2024-2025 Q12',
    'EMD1 2025-2026 Q6',
    'EMD1 2025-2026 Q7',
    'EMD1 2025-2026 Q8'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About electrophysiology in medicine:', 'A pacemaker delivers impulses to support the rhythm; ablation destroys tissue that generates or conducts abnormal rhythms.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Electroneuromyography studies peripheral nerves and muscles', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Electroencephalography records brain activity; its failure can cause epilepsy', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cardiac ablation destroys tissue that generates or conducts abnormal rhythms', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Electrocardiography records the heart rhythm; its disorders are arrhythmias', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the functional zones of a neuron:', 'Myelin: Schwann cells in the PNS, oligodendrocytes in the CNS. Nodes of Ranvier are rich in NaV channels (saltatory conduction).', 'Lesson: Cellular electrophysiology', NULL, 'generated', 3, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nodes of Ranvier are where the action potential is regenerated', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The axon hillock and initial segment form the trigger zone, rich in NaV channels, where the AP is initiated', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Myelin is made by oligodendrocytes in the peripheral nervous system', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Dendrites produce graded potentials', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A patient has a demyelinating neuropathy. Nerve conduction studies may show:', 'Loss of myelin slows conduction and can block it: reduced velocity, prolonged latencies or a drop in amplitude across the affected segment.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 3, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Faster conduction because the AP has fewer internodes to cross', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Reduced conduction velocity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Conduction block with a drop in response amplitude', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Prolonged latencies', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the types of membrane potential:', 'Graded potentials (EPSP, IPSP, receptor potential) are local and their amplitude varies with the stimulus; the all-or-none signal is the action potential.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 4, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A graded potential has a constant amplitude whatever the stimulus', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A pacemaker potential is a spontaneous depolarization towards threshold, as in the sinoatrial node', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Slow waves are typical of the sinoatrial node', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The resting potential of a typical neuron is about −70 mV', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About resting membrane potential values:', 'All cells have a membrane potential. Excitable cells are usually more negative, but excitability depends on the types of channel, not on the RMP value alone.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 5, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Red blood cell ≈ −90 mV', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A negative resting potential is enough to make a cell excitable', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Skeletal muscle fibre ≈ −85 to −90 mV', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cardiac pacemaker cells have no stable resting potential', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the ion distribution at rest:', 'A concentration difference creates no voltage unless the membrane lets one ion cross more easily than others: the RMP needs gradients + selective permeability.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 5, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A voltage needs both unequal concentrations and selective permeability', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Na⁺, Cl⁻ and free Ca²⁺ are concentrated outside', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Impermeant anions (proteins) are concentrated inside', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'K⁺ is concentrated inside the cell', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Using the Nernst equation at 37 °C, with [Na⁺]out = 145 mM and [Na⁺]in = 15 mM, the Na⁺ equilibrium potential is about:', 'E = 61.5 × log10(145/15) ≈ 61.5 × 0.99 ≈ +61 mV. Positive because Na⁺ (z = +1) is more concentrated outside; +125 mV is ECa, −90 mV is EK.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 6, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '+61 mV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '−90 mV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '+125 mV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−61 mV', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the equilibrium potential of an ion:', 'At equilibrium the gradient still exists and ions still cross in both directions, at equal rates: there is no net movement.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 6, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'At equilibrium, the chemical and electrical forces on the ion are equal and opposite', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'For Ca²⁺, z = +2 halves the factor (≈ 30.8 mV)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At equilibrium, the ion stops crossing the membrane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'For Cl⁻, z = −1 reverses the sign of the equation', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'At Vm = −70 mV, with the channels open:', 'Driving force = Vm − Eion. For Cl⁻ (Eion ≈ −66 mV) it is −4 mV: a weak outward movement, because anions move opposite to the current.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 6, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'K⁺ has a driving force of about −20 mV and enters', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Na⁺ has a driving force of about −131 mV and enters strongly', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cl⁻ enters strongly', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ca²⁺ enters very strongly', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Why is the resting potential about −70 mV?', 'At rest NaV channels are closed (available). The RMP comes from pump-maintained gradients, PK ≫ PNa and trapped intracellular anions (Gibbs–Donnan).', 'Lesson: Cellular electrophysiology', NULL, 'generated', 7, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A small Na⁺ leak pulls it slightly towards ENa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The electrogenic Na⁺/K⁺ pump directly adds a few millivolts of negativity', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Voltage-gated Na⁺ channels are open at rest', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'K⁺ leak conductance dominates at rest, so the RMP lies close to EK', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The Goldman–Hodgkin–Katz (GHK) equation:', 'The Nernst equation gives the equilibrium potential of one ion; the GHK equation gives Vm when several ions are permeant.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 7, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Shows that the most permeant ion pulls Vm towards its own equilibrium potential', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Gives the membrane potential for several permeant ions, weighted by their permeabilities', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Gives the equilibrium potential of a single ion', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'With PK : PNa = 1 : 0.05 and mammalian values, gives about −90 mV', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A patient with rhabdomyolysis develops hyperkalaemia. Which statements are correct?', 'Hyperkalaemia → less negative EK → RMP depolarizes → NaV inactivation → arrhythmias and muscle weakness. Hyperpolarization is the effect of hypokalaemia.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 8, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The resting membrane potential depolarizes', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The membrane hyperpolarizes', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'EK becomes less negative', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Prolonged depolarization inactivates NaV channels and reduces excitability', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the phases of a neuronal action potential:', 'NaV activation is fast; KV (delayed rectifier) activation is delayed. The peak (≈ +30 mV) is limited by NaV inactivation and the delayed K⁺ current.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 9, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Afterhyperpolarization: KV channels stay open and close slowly', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Repolarization: NaV channels are inactivated and KV channels open, K⁺ leaves', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Return to rest: leak channels and the pump maintain the gradients', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Depolarization: NaV channels open, Na⁺ enters and Vm moves towards ENa', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the rising phase of the action potential:', 'The regenerative loop is ended by NaV inactivation and delayed KV opening; the pump only maintains the gradients at rest.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 9, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The loop is stopped by the Na⁺/K⁺ pump', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Depolarization opens more NaV channels, Na⁺ enters and depolarizes further (positive feedback)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The loop is stopped by NaV inactivation and the delayed opening of KV channels', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The AP reflects a change in permeability, first to Na⁺, then to K⁺', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In a voltage-clamp experiment with a step to 0 mV:', 'TTX blocks NaV (early inward INa disappears), TEA blocks KV (late outward IK). Convention: inward current downwards (negative), outward upwards.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 10, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'With TTX, the late outward current remains', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'With TEA, the late outward current is absent', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'By convention, the inward Na⁺ current is drawn upwards', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'With TEA, the early transient inward current disappears', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the voltage-gated Na⁺ channel (NaV):', 'An inactivated NaV cannot reopen until the membrane repolarizes: this is the basis of the absolute refractory period.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 10, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its voltage sensor is the S4 segment of each domain', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'At rest it is closed but available', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It inactivates within about 1 ms', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'An inactivated channel can reopen at once if the stimulus is strong enough', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'NaV versus KV channels:', 'KV (delayed rectifier) has delayed activation and little fast inactivation, giving a slower, sustained outward current.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 10, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The voltage sensor is the S4 segment in both channels', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Both have six transmembrane segments (S1–S6) per domain or subunit', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'KV is made of 4 separate α subunits around a central pore', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'NaV is one α subunit with 4 homologous domains (I–IV)', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A neuron receives a suprathreshold stimulus that is then made stronger:', 'All-or-none: above threshold the AP is stereotyped; stimulus strength is coded by firing frequency, not AP size.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 11, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The action potential becomes larger', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The action potential keeps the same amplitude', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The firing frequency increases', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A subthreshold stimulus would only give a local graded potential that fades', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the refractory periods:', 'Relative refractory period: some NaV still inactivated and K⁺ conductance still high (membrane hyperpolarized). Refractoriness keeps propagation one-way.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 11, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The relative refractory period limits the maximum firing frequency', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'During the relative refractory period, a stronger-than-normal stimulus is needed', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The relative refractory period is due to all NaV channels being open', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'During the absolute refractory period, no stimulus can trigger an AP, however strong', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About tetrodotoxin and local anaesthetics:', 'Lidocaine and TTX block NaV and stop conduction; TEA blocks K⁺ channels.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 11, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Both block voltage-gated Na⁺ channels', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Tetrodotoxin poisoning causes paralysis', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Tetraethylammonium (TEA) blocks Na⁺ channels', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lidocaine blocks voltage-gated K⁺ channels', 0);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'An axon is stimulated and the AP is recorded 20 mm and 50 mm from the stimulus, with latencies of 1.0 ms and 2.5 ms. The conduction velocity is:', 'v = distance difference / latency difference = 30 mm / 1.5 ms = 20 mm/ms = 20 m/s.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 12, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '30 m/s', 0),
  ((SELECT MAX(id) FROM questions), 'B', '50 m/s', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2 m/s', 0),
  ((SELECT MAX(id) FROM questions), 'D', '20 m/s', 1);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the conduction of the action potential:', 'C fibres (slow pain, autonomic) are unmyelinated, ≈ 0.5–2 m/s. Normally the refractory segment behind the AP keeps it moving forward only.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 12, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'C fibres are fast myelinated motor fibres', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Continuous conduction in unmyelinated axons costs more energy', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'In myelinated axons it is saltatory, at about 2–120 m/s', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A stimulus applied in the middle of an axon sends APs in both directions', 1);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which change increases conduction velocity?', 'A larger diameter lowers internal resistance; myelin and higher temperature also speed conduction.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 13, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A larger axon diameter', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A smaller axon diameter', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Loss of myelin', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A lower temperature', 0);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Graded potentials compared with action potentials:', 'Only graded potentials summate (temporal, spatial); APs are always depolarizing and use voltage-gated Na⁺ and K⁺ channels.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 13, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Action potentials depend mainly on ligand-gated channels', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Graded potentials can depolarize or hyperpolarize', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Action potentials summate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Graded potentials have no threshold and no refractory period', 1);

-- G25
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Two EPSPs arrive at the same synapse close together in time, and the result reaches threshold at the initial segment:', 'Temporal summation = successive inputs at the same synapse; spatial = different synapses at the same time. EPSPs add and IPSPs subtract at the initial segment.', 'Lesson: Cellular electrophysiology', NULL, 'generated', 13, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Cellular electrophysiology'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'This is spatial summation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Summation takes place at the trigger zone (initial segment)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'IPSPs arriving at the same time would subtract', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'This is temporal summation', 1);
