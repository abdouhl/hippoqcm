-- Generated from data/lessons/s1-physiology-ligand-receptor-interactions.json — lesson "Ligand-receptor interactions": 13 exam + 24 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Ligand-receptor interactions', 's1/physiology/ligand-receptor-interactions.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q8',
    'EMD1 2022-2023 Q9',
    'EMD1 2022-2023 Q10',
    'EMD1 2022-2023 Q11',
    'EMD1 2023-2024 Q9',
    'EMD1 2023-2024 Q12',
    'EMD1 2024-2025 Q8',
    'EMD1 2024-2025 Q9',
    'EMD1 2024-2025 Q10',
    'EMD1 2025-2026 Q9',
    'EMD1 2025-2026 Q10',
    'EMD1 2025-2026 Q11',
    'EMD1 2025-2026 Q12'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Direct intercellular communication (physical contact between cells) can occur through:', 'Direct communication uses gap junctions, nanotubules, surface markers and adhesions. Hormones carried in the blood are indirect (endocrine) communication.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gap junctions, transmembrane proteins forming ionic channels', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Nanotubules, which can even transfer organelles such as mitochondria', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Hormones carried by the circulation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Surface markers, especially in the immune system', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A cell secretes a local chemical mediator that acts on neighbouring cells, its action being limited in time and space. This mode of signaling is:', 'Paracrine signaling acts on cells in the immediate vicinity (local chemical mediators). Autocrine would act on the secreting cell itself; endocrine acts at a distance through the blood.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Endocrine', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Paracrine', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Autocrine', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Direct communication through gap junctions', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning the four signaling modes numbered in the figure:', '1 = autocrine, 2 = paracrine (a signaling cell releasing a local mediator to neighbouring target cells), 3 = synaptic/neurocrine, 4 = endocrine (hormone in the bloodstream).', 'Lesson: Ligand-receptor interactions', 's1/lessons/ligand-receptor-interactions-g1.png', 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 is autocrine: the cell responds to the signal molecule it produces itself', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2 is endocrine', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3 is neurocrine (synaptic): the signal acts on postsynaptic receptors of a cell in its immediate vicinity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In 4, the signal molecule is a hormone transported by the circulation to act on distant target cells', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the phases of intercellular communication:', 'Reception is detection/recognition of the ligand and binding to its receptor; converting the signal into a response is transduction. Responses are changes in membrane permeability, enzymatic activity or transcription.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 7);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'There are three phases: reception, transduction and cellular response', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The reception phase is the conversion of the signal into a particular cellular response', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The transduction phase most often requires a cascade of interactions between intermediary molecules', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The cellular response may consist of changes in transcriptional activity', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Lipid-soluble ligands:', 'Lipid-soluble ligands (steroid hormones from cholesterol, thyroid hormones from tyrosine) cross the membrane to reach intracellular receptors. Peptide hormones and growth factors are hydrophilic and use membrane receptors.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 9);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Diffuse across the plasma membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Bind intracellular receptors, which can be cytosolic or nuclear', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Include thyroid hormones, derived from the amino acid tyrosine', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Include peptide hormones and growth factors', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In the figure, ligand 2 could be:', 'Ligand 2 crosses the membrane to an intracellular receptor, so it is lipid-soluble: steroid hormones such as aldosterone and testosterone. Growth factors and serotonin are hydrophilic and bind surface receptors (ligand 1).', 'Lesson: Ligand-receptor interactions', 's1/lessons/ligand-receptor-interactions-g2.png', 'generated', 9);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Aldosterone', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A growth factor', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Testosterone', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Serotonin', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'An experimental target cell has had all of its plasma-membrane receptors blocked. Which ligands can still act on it?', 'Cortisol and estrogen are lipid-soluble steroid hormones acting on intracellular receptors. Acetylcholine and noradrenaline are hydrophilic neurotransmitters that need membrane receptors.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 11);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cortisol', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Acetylcholine', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Estrogen', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Noradrenaline', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Channel receptors (ionotropic receptors):', 'Ligand binding changes the conformation of the channel protein, which becomes permeable to certain ions. The example is the nicotinic receptor; the muscarinic receptor is a G protein-coupled receptor.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 13);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Mainly concern excitable cells such as neurons and muscle cells', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are transmembrane channel proteins that carry ligand-binding sites', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Become permeable to certain ions when ligand binding changes their conformation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are illustrated by the muscarinic acetylcholine receptor', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Acetylcholine:', 'The lesson gives the nicotinic receptor as the example of channel receptor and the muscarinic receptor (with the adrenaline receptor) as examples of GPCRs.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 17);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Acts on the nicotinic receptor, which is a channel receptor', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Acts on the muscarinic receptor, which is a G protein-coupled receptor', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Acts on the nicotinic receptor, which is a G protein-coupled receptor', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Acts on the muscarinic receptor, which is a tyrosine kinase receptor', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which subunit of the G protein carries the GDP/GTP binding site?', 'The G protein has three subunits (α, β, γ); only the α subunit has the GDP/GTP binding site. αs stimulates, αi inhibits.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 16);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'α', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'β', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'γ', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The βγ dimer', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'After a ligand binds its G protein-coupled receptor:', 'It is GDP that leaves the α subunit and GTP that replaces it. The signal ends when α''s intrinsic GTPase hydrolyses GTP and α-GDP rejoins βγ.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 16);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'GTP leaves the α subunit and is replaced by GDP', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The α subunit, activated by GTP, detaches from the βγ dimer', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The α-GTP and βγ complexes can each activate a different effector', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The intrinsic GTPase of α hydrolyses GTP to GDP, and α-GDP reassociates with βγ', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About G protein-coupled receptors (GPCRs):', 'The insulin receptor is an enzyme (tyrosine kinase) receptor. αs activates a primary effector (an enzyme) that forms second messengers, which activate protein kinases.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 17);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'More than 50% of current therapeutic agents target them', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The adrenaline receptor is an example', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The insulin receptor is an example', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The activated αs subunit activates a primary effector enzyme that forms second messengers', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'In this diagram, X and Y are masked:', 'X = adenylate cyclase (AC), stimulated by Gs and inhibited by Gi. Y = PKA activation by cAMP; PKC is activated by DAG in the phospholipase C pathway.', 'Lesson: Ligand-receptor interactions', 's1/lessons/ligand-receptor-interactions-g3.png', 'generated', 18);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'X is adenylate cyclase, which converts ATP into cAMP', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'X is stimulated by the left G protein and inhibited by the right one', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Y is protein kinase C', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Both G proteins are shown at rest, with the α subunit bound to GDP', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A ligand binds a receptor coupled to an inhibitory G protein (αi). The result is:', 'With the αi-GTP complex the result is inhibition of second-messenger (cAMP) formation; αs-GTP is the one that activates adenylate cyclase.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 23);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Stimulation of adenylate cyclase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Inhibition of the formation of cAMP', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Activation of phospholipase C', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Opening of the Ca²⁺ channel of the smooth endoplasmic reticulum', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Cyclic GMP (cGMP):', 'cGMP is made from GTP by guanylate cyclase and degraded into GMP by a phosphodiesterase. ATP → cAMP is adenylate cyclase; phospholipase C produces IP3 and DAG.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 24);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is produced from ATP by adenylate cyclase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is degraded into cAMP', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is produced from GTP by guanylate cyclase', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is produced by phospholipase C from membrane phosphatidylinositol', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Phospholipase C, activated via a G protein, directly produces:', 'Phospholipase C splits membrane phosphatidylinositol into two second messengers: inositol triphosphate (IP3) and diacylglycerol (DAG).', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 24);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'cAMP', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'IP3 and DAG', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'cGMP', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Calmodulin', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Inositol triphosphate (IP3):', 'IP3 leaves the membrane and opens its Ca²⁺-channel receptor on the smooth ER, releasing Ca²⁺. It is DAG that activates PKC.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 24);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Binds its receptor on the membrane of the smooth endoplasmic reticulum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Has a receptor that is a Ca²⁺ channel', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Directly activates protein kinase C', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Causes Ca²⁺ release into the cytoplasm', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Calmodulin:', 'Ca²⁺ released by IP3 binds and activates calmodulin, which activates many enzymes including Ca²⁺/calmodulin-dependent kinases. DAG activates PKC; the ER channel is the IP3 receptor.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 24);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is activated by binding Ca²⁺ ions', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Can then activate Ca²⁺/calmodulin-dependent protein kinases', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is activated directly by DAG', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is the Ca²⁺ channel of the smooth endoplasmic reticulum', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning the pathway in the figure (structures 1, 2 and 3 are masked):', 'PIP2 is split by phospholipase C (1) into IP3, which releases Ca²⁺ from the ER (2), and DAG, which activates the Ca²⁺-dependent protein kinase C (3) — not PKA, which belongs to the cAMP pathway.', 'Lesson: Ligand-receptor interactions', 's1/lessons/ligand-receptor-interactions-g5.png', 'generated', 25);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 is phospholipase C, activated by the α-GTP subunit of the G protein', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2 is the endoplasmic reticulum, which releases Ca²⁺ in response to IP3', 1),
  ((SELECT MAX(id) FROM questions), 'C', '3 is protein kinase A, activated by cAMP', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3 is activated by DAG together with Ca²⁺', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning the receptor shown in the figure (its intracellular domain is masked):', 'This is a tyrosine kinase (enzyme) receptor, example insulin: its activation phosphorylates proteins using ATP. Its binding site is extracellular, so the ligand does not cross the membrane.', 'Lesson: Ligand-receptor interactions', 's1/lessons/ligand-receptor-interactions-g4.png', 'generated', 21);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a G protein-coupled receptor', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is an enzyme receptor; insulin acts through this type of receptor', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its ligand must cross the plasma membrane to bind it', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its activation uses ATP to phosphorylate proteins that relay the signal', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About tyrosine kinase receptors:', 'All four statements describe the transduction mechanism of enzyme receptors given in the lesson (example: insulin).', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 20);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are individual polypeptides (monomers) with an extracellular ligand-binding site', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ligand binding brings two receptor polypeptides together into a dimer', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Dimerization activates the tyrosine kinase of each polypeptide, which is phosphorylated by hydrolysis of ATP', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The phosphorylated tyrosine kinases are recognized by intracellular proteins, each of which primes a pathway', 1);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'For a steroid hormone acting on its target cell:', 'Lipid-soluble ligands cross the membrane, bind a specific cytosolic receptor, and the complex directly activates genes in the nucleus. No membrane receptor is needed.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 22);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ligand-receptor complex enters the nucleus and attaches to specific genes', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Transcription of a gene into mRNA is stimulated', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The mRNA is translated into a specific protein by cytoplasmic ribosomes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Binding to a membrane receptor is required first', 0);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'According to the lesson, which of the following are second messengers?', 'cAMP, cGMP, IP3 and DAG are second messengers (small molecules made in the cell in response to the first messenger). Calmodulin is a protein activated by Ca²⁺.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 23);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'cAMP', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Calmodulin', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'cGMP', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'DAG', 1);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Concerning signal amplification in the cAMP system:', 'Each step multiplies the signal: one receptor → many cAMP → PKA → phosphorylated enzymes → ~100 products each. The number of molecules increases, it does not decrease.', 'Lesson: Ligand-receptor interactions', NULL, 'generated', 26);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Ligand-receptor interactions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'One first messenger bound to its receptor leads to the formation of many cAMP molecules', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Each protein kinase A phosphorylates several enzymes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Each activated enzyme generates about 100 final products', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The number of molecules involved decreases at each step of the cascade', 0);
