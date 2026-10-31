-- Generated from data/lessons/s1-physiology-membrane-transport.json — lesson "Membrane transport": 13 exam + 23 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Membrane transport', 's1/physiology/membrane-transport.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q6',
    'EMD1 2023-2024 Q1',
    'EMD1 2023-2024 Q2',
    'EMD1 2023-2024 Q6',
    'EMD1 2024-2025 Q2',
    'EMD1 2024-2025 Q3',
    'EMD1 2024-2025 Q4',
    'EMD1 2024-2025 Q5',
    'EMD1 2025-2026 Q1',
    'EMD1 2025-2026 Q2',
    'EMD1 2025-2026 Q3',
    'EMD1 2025-2026 Q4',
    'EMD1 2025-2026 Q5'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the plasma membrane:', 'The membrane is a thin (7–10 nm), dynamic, selective barrier — not a passive wall. Cell recognition relies on glycoproteins and glycolipids.', 'Lesson: Membrane transport', NULL, 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is about 70–100 nm thick', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It separates the intracellular environment from the extracellular environment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a passive wall that lets all substances cross freely', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its glycoproteins and glycolipids act as a cellular "ID" that helps tell self from non-self', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A patient with chest pain has a raised blood troponin. Which statements are correct?', 'Membrane integrity is a diagnostic principle: injured cells leak their contents. Troponin = myocardial injury; LDH is the non-specific marker, CK/myoglobin the muscle (rhabdomyolysis) markers.', 'Lesson: Membrane transport', NULL, 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Troponin I/T is the central biomarker of acute myocardial infarction', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cell injury disrupts the membrane and intracellular contents leak into the blood', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Troponin is a non-specific marker of haemolysis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Troponin is the marker of rhabdomyolysis', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About membrane phospholipids:', 'Phosphatidylserine is in the inner leaflet; its exposure on the outer surface is the "eat-me" signal of apoptosis. PC and sphingomyelin are the outer-leaflet phospholipids.', 'Lesson: Membrane transport', NULL, 'generated', 3, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Each has a hydrophobic head and two hydrophilic tails', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Phosphatidylinositol is a precursor of the second messengers IP₃ and DAG', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Phosphatidylserine is mainly in the outer leaflet', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The hydrophobic core is a barrier to ions and polar molecules', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the movements of membrane phospholipids:', 'Lateral diffusion, rotation and flexion are fast; flip-flop is very rare because the polar head would have to cross the hydrophobic core.', 'Lesson: Membrane transport', NULL, 'generated', 4, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flip-flop usually requires enzymes such as flippases and scramblases', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Rotation around the molecule''s own axis is very rare', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Lateral diffusion within a leaflet is fast', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Flip-flop from one leaflet to the other is very frequent', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Cholesterol in the plasma membrane:', 'Cholesterol buffers fluidity and decreases permeability to ions and small polar molecules. Statins inhibit HMG-CoA reductase → ↑ hepatic LDL receptors → ↓ circulating LDL.', 'Lesson: Membrane transport', NULL, 'generated', 4, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Increases the membrane''s permeability to ions', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its synthesis in the liver is reduced by statins, which inhibit HMG-CoA reductase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Limits excessive fluidity at high temperature and prevents solidifying at low temperature', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Forms lipid rafts with sphingolipids', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About membrane proteins and the glycocalyx:', 'Peripheral proteins sit on one surface without crossing the bilayer. Sugar chains are found only on the outer surface.', 'Lesson: Membrane transport', NULL, 'generated', 4, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Blood groups are an example of glycocalyx-based recognition', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Integral proteins are embedded in the bilayer, and many are transmembrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The glycocalyx covers both faces of the membrane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Peripheral proteins cross the whole bilayer', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the three classes of membrane transport:', 'Primary active transport uses ATP directly (pumps); secondary active transport uses the energy of an ion gradient. Vesicular transport needs ATP.', 'Lesson: Membrane transport', NULL, 'generated', 6, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Primary active transport uses ATP directly (pumps)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Passive transport uses no ATP and goes down the gradient', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Vesicular transport requires ATP', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Active transport moves substances against their gradient', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which of the following cross the membrane by simple diffusion through the lipid bilayer?', 'Simple diffusion concerns small, non-polar, lipid-soluble molecules (gases, steroids, vitamins A, D, E, K). Charged ions and large glucose need facilitated diffusion.', 'Lesson: Membrane transport', NULL, 'generated', 6, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Steroid hormones such as cortisol', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glucose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Na⁺ and K⁺ ions', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'O₂ and CO₂', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which changes increase the rate of simple diffusion (Fick''s law)?', 'Rate ∝ surface × concentration difference × permeability / thickness. Permeability decreases with molecular size; thickening (fibrosis, oedema) slows diffusion.', 'Lesson: Membrane transport', NULL, 'generated', 7, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A higher temperature', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A thicker membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A larger molecule', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A larger concentration gradient', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About channels and carriers in facilitated diffusion:', 'Saturation (Vmax when all carriers are busy) is a property of carriers; channels are rarely limiting and can pass millions of ions per second.', 'Lesson: Membrane transport', NULL, 'generated', 8, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Carriers are slower than channels', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Channels form water-filled pores and are very fast', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Channels saturate, reaching a maximal rate (Vmax)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Carriers bind the molecule and change shape to release it on the other side', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which gate type — example pairs are correct?', 'Touch receptors and hair cells are mechanically gated (stretch or pressure). Ligand-gated channels open when a specific molecule binds.', 'Lesson: Membrane transport', NULL, 'generated', 7, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Voltage-gated — Na⁺ channels of the nerve impulse', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Mechanically gated — hair cells of the inner ear', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ligand-gated — nicotinic ACh receptor at the neuromuscular junction', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ligand-gated — touch receptors', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Insulin acts on a muscle cell after a meal. Which statements about glucose entry through GLUT4 are correct?', 'GLUT carriers perform facilitated diffusion: down the gradient, no ATP, saturable and regulated (insulin ↑ GLUT4 in muscle and fat). Pores are a feature of channels.', 'Lesson: Membrane transport', NULL, 'generated', 8, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucose crosses GLUT4 through a water-filled pore', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Insulin increases the number of GLUT4 carriers, so more glucose enters', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Transport by GLUT4 can be saturated', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'GLUT4 moves glucose against its gradient using ATP', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Osmosis:', 'Osmosis is passive: water moves towards the higher solute concentration (less free water), slowly through the bilayer and rapidly through aquaporins.', 'Lesson: Membrane transport', NULL, 'generated', 8, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Moves water towards the side with less solute', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the movement of water from the side with low solute concentration to the side with high solute concentration', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is fast through aquaporins, water channels that block ions and solutes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Requires ATP', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A red blood cell is placed in a hypotonic solution:', 'Hypotonic = less solute outside: water enters, the cell swells and may lyse. Crenation occurs in hypertonic solutions; 0.9 % NaCl is isotonic.', 'Lesson: Membrane transport', NULL, 'generated', 8, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.9 % NaCl is an example of such a solution', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The cell shrinks (crenation)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The cell swells and may burst (haemolysis)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Water enters the cell', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'During one cycle of the Na⁺/K⁺-ATPase:', '3 Na⁺ bind inside → phosphorylation → Na⁺ released outside → 2 K⁺ bind outside → dephosphorylation → K⁺ released inside. 3 out / 2 in = one net charge out (electrogenic).', 'Lesson: Membrane transport', NULL, 'generated', 9, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ATP hydrolysis phosphorylates the pump, which changes shape', 1),
  ((SELECT MAX(id) FROM questions), 'B', '3 Na⁺ bind to the pump on the inside', 1),
  ((SELECT MAX(id) FROM questions), 'C', '2 K⁺ bind to the pump on the inside', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'One net positive charge is moved out of the cell', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Roles of the Na⁺/K⁺ pump include:', 'The Na⁺/K⁺-ATPase is inhibited by digoxin. Gastric acid comes from the H⁺/K⁺-ATPase of parietal cells, blocked by proton pump inhibitors (omeprazole).', 'Lesson: Membrane transport', NULL, 'generated', 9, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Secreting gastric acid; it is blocked by omeprazole', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Maintaining the Na⁺ and K⁺ gradients and the resting potential', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Controlling cell volume', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Creating the Na⁺ gradient used by secondary active transport', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the primary active transporters:', 'The H⁺/K⁺-ATPase is stimulated by histamine, ACh and gastrin and inhibited by somatostatin.', 'Lesson: Membrane transport', NULL, 'generated', 9, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'SERCA pumps Ca²⁺ back into the sarcoplasmic reticulum so muscle can relax', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The Na⁺/K⁺-ATPase is inhibited by digoxin', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The H⁺/K⁺-ATPase of gastric parietal cells is blocked by proton pump inhibitors', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'CFTR, a Cl⁻ channel of the ABC family, is defective in cystic fibrosis', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Secondary active transport (cotransport):', 'Symport = same direction (SGLT, NKCC, Na⁺-amino acids); antiport = opposite directions (NHE, NCX).', 'Lesson: Membrane transport', NULL, 'generated', 10, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The Na⁺/Ca²⁺ exchanger (NCX) is a symport', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The Na⁺-K⁺-2Cl⁻ cotransporter (NKCC) is an antiport', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Usually uses the Na⁺ gradient created by the Na⁺/K⁺ pump', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The transporter itself does not use ATP, but stops working if the Na⁺/K⁺ pump stops', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In an intestinal cell absorbing glucose:', 'One cell uses all three mechanisms: secondary active (SGLT1, apical), passive (GLUT2, basolateral) and primary active (Na⁺/K⁺ pump, basolateral).', 'Lesson: Membrane transport', NULL, 'generated', 10, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The basolateral Na⁺/K⁺-ATPase keeps intracellular Na⁺ low', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The apical SGLT1 carries 2 Na⁺ with 1 glucose into the cell', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose leaves through basolateral GLUT2 by facilitated diffusion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Glucose exit at the basolateral membrane uses ATP directly', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About oral rehydration solution and gliflozins:', 'Water is never pumped: it follows the absorbed Na⁺ and glucose by osmosis. Gliflozins are SGLT2 inhibitors used in type 2 diabetes and heart failure.', 'Lesson: Membrane transport', NULL, 'generated', 10, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gliflozins block SGLT2 and glucose reabsorption in the proximal tubule', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Oral rehydration works because water is actively pumped into intestinal cells', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Gliflozins block GLUT4 in muscle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Oral rehydration solution contains glucose and Na⁺ together because SGLT1 absorbs both and water follows by osmosis', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About endocytosis:', 'Phagocytosis engulfs large solid particles after recognition; uptake of fluid and solutes is pinocytosis, done continuously by almost all cells.', 'Lesson: Membrane transport', NULL, 'generated', 11, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Phagocytosis takes up extracellular fluid and dissolved solutes non-selectively', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Receptor-mediated endocytosis uses clathrin-coated vesicles and is saturable', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Phagocytosis is performed by neutrophils, macrophages and dendritic cells', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pinocytosis is non-selective', 1);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A young patient has very high blood LDL because of a mutation of the LDL receptor:', 'Familial hypercholesterolaemia: the LDL receptor cannot mediate selective uptake (e.g. by hepatocytes), so LDL stays in the blood.', 'Lesson: Membrane transport', NULL, 'generated', 11, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Receptor-mediated endocytosis of LDL fails', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The defect concerns phagocytosis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cholesterol stays in the blood and causes early atherosclerosis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Hepatocytes normally take up LDL by receptor-mediated endocytosis', 1);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Exocytosis:', 'Exocytosis adds membrane to the cell surface (endocytosis removes it). Examples: neurotransmitter release, insulin, digestive enzymes.', 'Lesson: Membrane transport', NULL, 'generated', 12, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Membrane transport'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Regulated release is triggered by a rise in Ca²⁺', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Removes membrane from the cell surface', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Uses SNARE proteins for vesicle fusion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Includes insulin secretion by pancreatic β cells', 1);
