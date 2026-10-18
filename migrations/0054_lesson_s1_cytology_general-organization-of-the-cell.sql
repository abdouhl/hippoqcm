-- Generated from data/lessons/s1-cytology-general-organization-of-the-cell.json — lesson "General organization of the cell": 12 exam + 21 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'General organization of the cell', 's1/cytology/general-organization-of-the-cell.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q2',
    'EMD1 2022-2023 Q5',
    'EMD1 2023-2024 Q8',
    'EMD1 2023-2024 Q23',
    'EMD1 2023-2024 Q37',
    'EMD1 2024-2025 Q1',
    'EMD1 2024-2025 Q4',
    'EMD1 2024-2025 Q6',
    'EMD1 2025-2026 Q15',
    'EMD1 2025-2026 Q17',
    'EMD1 2025-2026 Q22',
    'EMD1 2025-2026 Q39'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'According to the current classification, the living world is divided into three major domains. These are:', 'The three domains are Eukaryotes, Eubacteria and Archaea. Viruses are not cells (no cytoplasm, no nucleus, no metabolism) and are treated separately.', 'Lesson: General organization of the cell', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Viruses', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Eukaryotes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Archaea', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Eubacteria', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the nuclear envelope of the eukaryotic cell:', 'The outer membrane faces the cytoplasm; the inner one is lined by the lamina on the chromatin side. Nuclear pores allow endogenous and exogenous substances to transit in both directions.', 'Lesson: General organization of the cell', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It consists of two membranes separated by a perinuclear space', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its inner membrane is in contact with the cytoplasm', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its inner membrane is separated from the chromatin by the lamina', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its pores allow substances to pass only from the nucleus to the cytoplasm', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the plasma membrane of the eukaryotic cell:', 'All four are stated in the course. The difference between the two surfaces is called membrane asymmetry; the main role of the membrane is to maintain the integrity of the cell.', 'Lesson: General organization of the cell', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a lipid bilayer associated with transmembrane and peripheral proteins', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its outer and inner surfaces differ in structure and function', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It contains receptors', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It may present microvilli and intercellular junctions', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which of the following belong to the endomembrane system as described in the course?', 'The endomembrane system includes the ER, the Golgi apparatus and lysosomes, which communicate via vesicles budding from their membranes. Mitochondria are described separately, with their own double membrane.', 'Lesson: General organization of the cell', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Endoplasmic reticulum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Mitochondria', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Golgi apparatus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Lysosomes', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Under the electron microscope, one region of a cell''s endoplasmic reticulum carries ribosomes while another is devoid of them. Concerning these two regions:', 'Ribosome-bearing ER is the RER (secreted proteins and most membrane proteins); ribosome-free ER is the SER (lipid synthesis). Mitochondrial proteins are made by free ribosomes, not by the SER.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ribosome-free region synthesizes proteins destined for mitochondria', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The ribosome-bearing region participates in the synthesis of proteins destined for secretion', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The ribosome-free region is involved in lipid synthesis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The ribosome-free region synthesizes most membrane proteins', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which of the following proteins are synthesized by ribosomes of the rough endoplasmic reticulum rather than by free ribosomes?', 'The RER makes proteins destined for secretion and most membrane proteins. Free ribosomes make proteins for the cytosol and for organelles such as peroxisomes and mitochondria.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A mitochondrial protein', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A hormone secreted outside the cell', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A cytosolic enzyme', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A plasma membrane protein', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the Golgi apparatus:', 'All four statements come directly from the course''s description of the Golgi apparatus.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It modifies, sorts, packages and distributes the products synthesized by the ER', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It consists of a stack of flattened sacs (dictyosomes) associated with vesicles', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is involved in glycosylation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It is the main distributor of newly synthesized membranes', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'A cell is treated with a drug that inhibits all its hydrolases. Which organelle''s function is most directly impaired?', 'Lysosomes are membrane-bound organelles containing hydrolases able to degrade most endogenous and exogenous molecules. The Golgi handles glycosylation and sorting, the SER lipid synthesis.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Golgi apparatus', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Smooth endoplasmic reticulum', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Mitochondria', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lysosomes', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About mitochondria:', 'The outer membrane is highly permeable and the inner one less permeable; its invaginations (cristae) carry the respiratory chain and ATP synthesis. The matrix holds mitochondrial DNA and protein-synthesis components, not the respiratory chain.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The inner membrane is more permeable than the outer membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The respiratory chain is located in the matrix, next to mitochondrial DNA', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They are bounded by a double membrane whose outer membrane is highly permeable', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The cristae contain the respiratory chain and the ATP-synthesizing machinery', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the general organization of the bacterial cell (Eubacteria):', 'The resistant cell wall is mainly peptidoglycan. The chromosome (nucleoid) is a single closed-loop filament in the center of the cell, not separated from the cytoplasm, which is rich in proteins and contains ribosomes.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The nucleoid is separated from the cytoplasm by an envelope', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The cell wall is mainly composed of peptidoglycan', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The cytoplasm is poor in proteins and devoid of ribosomes', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The chromosome consists of several linear filaments located at the periphery of the cell', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which of the following structures may be present in some bacteria but are not constant?', 'Capsule, inclusions, pili, flagella and plasmids are listed as structures eubacteria may possess. Every bacterium is bounded by a plasma membrane.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A polysaccharidic capsule', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A plasma membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Plasmids', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pili and flagella', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About archaea:', 'Archaea have a size range similar to eubacteria (0.1–15 µm) and a single circular chromosome. They divide by binary fission and often move with proteinaceous flagella.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They possess several linear chromosomes, like eukaryotes', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Formerly called archaebacteria, they are unicellular microorganisms', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They are much larger than eubacteria, measuring 10–100 µm', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They divide by binary fission and often possess proteinaceous flagella', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'At the molecular level, archaea:', 'Archaea resemble eubacteria in morphology and metabolism, but molecularly (especially information-processing proteins) they are far closer to eukaryotes.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are much closer to eukaryotes than to eubacteria', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Share with eukaryotes some proteins that are absent from eubacteria', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Have DNA replication, repair and transcription proteins that resemble eukaryotic proteins', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Have information-processing proteins that are mostly similar to bacterial ones', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'A unicellular organism is isolated from an acidic hot spring. Its envelope contains no peptidoglycan but a protein layer covering the plasma membrane, and its membrane phospholipids are isoprenoid ethers. This organism is most likely:', 'No peptidoglycan, a protein envelope and isoprenoid ether lipids are unique to archaea. Eubacteria have peptidoglycan walls and, like eukaryotes, fatty acid ester phospholipids.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A eubacterium', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A eukaryote', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An archaeon', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A virus', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the envelope and membrane lipids of archaea:', 'Archaeal phospholipids are isoprenoid ethers, unlike the fatty acid esters of eubacteria and eukaryotes, and their envelope is a protein layer without peptidoglycan.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Their phospholipids are isoprenoid ethers derived from a long-chain alcohol', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Their phospholipids are fatty acid esters, as in eubacteria', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Their envelope contains peptidoglycan, as in most eubacteria', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Their envelope is generally a protein layer covering the plasma membrane', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the habitats of archaea:', 'Archaea are famous for extreme environments, but the course stresses that many live in ordinary habitats, including soils, oceans and mammalian intestines and lungs.', 'Lesson: General organization of the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Some thrive in anaerobic, highly saline or very hot conditions', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They colonize deep-sea hydrothermal vents, saline waters and acidic hot springs', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Some live in the intestines and lungs of mammals', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Many live in common habitats such as soils, lakes and oceans', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About viruses:', 'A virus consists of a nucleic acid — DNA or RNA, not both — surrounded by a protective protein capsid. It has no cytoplasm, no nucleus and must infect a host cell to multiply.', 'Lesson: General organization of the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are obligate parasites that cannot reproduce outside a host cell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They lack cytoplasm and a true nucleus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Each virion contains both DNA and RNA', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Their genome is surrounded by a protein capsid', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Correctly match each virus with the nature of its genome:', 'Hepatitis B is the course''s DNA virus example; HIV and SARS-CoV-2 are RNA viruses. Figure 03 shows tobacco mosaic virus with an RNA genome.', 'Lesson: General organization of the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hepatitis B virus → DNA', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'SARS-CoV-2 → DNA', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'HIV → RNA', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Tobacco mosaic virus → RNA', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the multiplication cycle of a virus:', 'A virus has no metabolism of its own and cannot produce its proteins independently; it uses the host''s machinery, then new particles are assembled and released.', 'Lesson: General organization of the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The virus uses its own metabolism to produce energy', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The virus hijacks the host cell''s machinery to replicate its genome and synthesize its proteins', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Once inside the cell, the virus produces its proteins independently', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'New viral particles are assembled, then the virions are released from the host cell', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'In a culture, infected cells keep producing virions for several days without being destroyed, and the released virions are surrounded by a membrane. Concerning this mode of release:', 'In budding, enveloped viruses leave by taking a piece of plasma membrane as their envelope, and the cell may keep producing viruses for some time. In lysis, the cell is destroyed.', 'Lesson: General organization of the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It corresponds to cell lysis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It corresponds to budding', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The viral envelope comes from a portion of the host cell''s plasma membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The host cell is necessarily destroyed immediately after release', 0);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the organization of the viral capsid (Figure 03):', 'Figure 03 shows three capsid types: helical (tobacco mosaic virus, RNA), polyhedral (adenovirus, DNA) and complex (bacteriophage, head with DNA plus tail sheath and fibers).', 'Lesson: General organization of the cell', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'General organization of the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Tobacco mosaic virus has a helical capsid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The adenovirus genome is RNA', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Adenovirus has a polyhedral capsid made of capsomeres', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The bacteriophage has a complex structure with a head containing DNA and a tail', 1);
