-- Generated from data/lessons/s1-cytology-methods-of-studying-the-cell.json — lesson "Methods of studying the cell": 15 exam + 22 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Methods of studying the cell', 's1/cytology/methods-of-studying-the-cell.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q17',
    'EMD1 2023-2024 Q14',
    'EMD1 2023-2024 Q15',
    'EMD1 2023-2024 Q38',
    'EMD1 2023-2024 Q39',
    'EMD1 2024-2025 Q27',
    'EMD1 2024-2025 Q28',
    'EMD1 2024-2025 Q29',
    'EMD1 2024-2025 Q30',
    'EMD1 2025-2026 Q2',
    'EMD1 2025-2026 Q3',
    'EMD1 2025-2026 Q4',
    'EMD1 2025-2026 Q5',
    'EMD1 2025-2026 Q6',
    'EMD1 2025-2026 Q7'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The numbered parts of the light microscope shown in the figure belong to its optical system. Correctly match:', 'The optical system is the light source, condenser with diaphragm, objectives and eyepieces: 1 = eyepiece, 2 = objective lenses, 3 = condenser, 4 = lamp (light source). The revolving nosepiece and focus knobs belong to the mechanical system.', 'Lesson: Methods of studying the cell', 's1/lessons/methods-of-studying-the-cell-g1.png', 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 → eyepiece (ocular lens)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2 → revolving nosepiece', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3 → condenser', 1),
  ((SELECT MAX(id) FROM questions), 'D', '4 → coarse focus knob', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the fundamental parameters of microscopes:', 'Resolving power is inversely proportional to resolution (the smaller the resolvable distance, the better the resolving power), and it is resolving power — not magnification — that conditions image clarity.', 'Lesson: Methods of studying the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Resolution is the minimum distance at which two points can still be distinguished as separate', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Resolving power is directly proportional to resolution', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The resolution of the human eye is about 200 μm', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Magnification is the critical parameter conditioning image clarity', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'A student observes a stained smear with a light microscope fitted with a ×40 objective and a ×10 eyepiece:', 'Total magnification is the product (not the sum) of objective and ocular magnifications: 40 × 10 = ×400. Light microscopy resolves ~0.2 μm with a maximum useful magnification of ~×1000.', 'Lesson: Methods of studying the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The total magnification is ×400', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The total magnification is ×50', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The resolution of this microscope is about 0.2 μm', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The maximum useful magnification of a light microscope is about ×1000', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which resolutions are correctly matched?', 'Each step gains a factor of ~1000: eye 200 μm, light microscope 0.2 μm, electron microscope 0.2 nm. 0.2 μm is the light-microscope value.', 'Lesson: Methods of studying the cell', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Human eye → about 200 μm', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Light microscope → about 0.2 μm', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Electron microscope → 0.2 nm (2 Å)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Electron microscope → about 0.2 μm', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About image formation in the light microscope:', 'Electromagnetic lenses focus the electron beam of electron microscopes; the light microscope uses glass lenses. Preparation (fixation, sectioning, staining) preserves architecture and enhances contrast.', 'Lesson: Methods of studying the cell', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The image is formed by photons transmitted through a system of superimposed glass lenses', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The lenses are electromagnetic', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Light passes through the specimen and is refracted by the objectives and eyepieces', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Specimens usually need fixation, sectioning and staining to enhance contrast', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You label a cytoplasmic protein with FITC (fluorescein). Under the fluorescence microscope, the excitation and emission are:', 'FITC/GFP: blue excitation, green emission (protein labeling). UV→blue is DAPI and green→red-orange is rhodamine; emission can never be at a shorter wavelength than excitation (blue → UV is impossible).', 'Lesson: Methods of studying the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'UV excitation, blue emission', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Blue excitation, green emission', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Green excitation, red-orange emission', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Blue excitation, UV emission', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'In the same culture, you want to visualize both the nuclear DNA and the mitochondria with fluorochromes:', 'DAPI: UV excitation, blue emission, DNA binding. Rhodamine (green excitation, red-orange emission) labels mitochondria — red-orange is rhodamine''s emission, not DAPI''s.', 'Lesson: Methods of studying the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'DAPI binds DNA', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'DAPI is excited by UV light and emits blue light', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Rhodamine is used for mitochondrial labeling', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'DAPI emits red-orange light', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the principle of fluorescence microscopy:', 'The fluorescence microscope uses a white light source split into its spectrum, not electrons. It exists precisely because transparent, colorless components are invisible to ordinary light microscopy.', 'Lesson: Methods of studying the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A fluorochrome re-emits light at a longer wavelength than the one it absorbs', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The excitation filter selects the incident wavelength that excites the fluorochrome', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It illuminates the sample with an electron beam', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ordinary light microscopy can distinguish transparent, colorless organelles without labeling', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'To localize a membrane protein, you only have a primary antibody that is already coupled to a fluorochrome:', 'Fluorochrome on the primary antibody = direct immunofluorescence; on a secondary antibody = indirect. Either way, antibody–fluorochrome conjugates give specific detection and localization.', 'Lesson: Methods of studying the cell', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'You will perform direct immunofluorescence', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'You will perform indirect immunofluorescence', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A fluorochrome-coupled secondary antibody is required', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The technique allows specific detection and localization of the protein', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'After immunofluorescent labeling, your cells are in suspension (not adherent). They should be analyzed by:', 'Suspension cells are analyzed by flow cytometry; adherent cells by fluorescence microscopy.', 'Lesson: Methods of studying the cell', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flow cytometry', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Fluorescence microscopy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Scanning electron microscopy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The pulse-chase technique', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the confocal fluorescence microscope:', 'The confocal microscope is the improved version of the fluorescence microscope: laser point-by-point scanning plus computer reconstruction produces a sharper image, possibly in 3D.', 'Lesson: Methods of studying the cell', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its light source is a LASER', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It scans the specimen point by point', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Computer superimposition of acquisitions can render the image in 3D', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It gives a less sharp image than a conventional fluorescence microscope', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the operating principle of electron microscopes:', 'Electron beams are focused by electromagnetic lenses, and the critical limitation of electron microscopy is that living specimens cannot be observed.', 'Lesson: Methods of studying the cell', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The electron beam is emitted under vacuum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The beam is focused by glass lenses', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The electrons are accelerated by high voltage', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Living specimens can be observed', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You want to study the three-dimensional surface topography of the microvilli of an intestinal epithelium. The most appropriate tool is:', 'The SEM reveals surfaces and 3D morphology. The TEM gives internal ultrastructure of ultra-thin sections, not surface topography.', 'Lesson: Methods of studying the cell', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Transmission electron microscope', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Scanning electron microscope', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Light microscope', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Fluorescence microscope', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the scanning electron microscope (SEM):', 'In the SEM, reflected electrons form a 3D surface image; the coating optimizes reflection. Transmission through ultra-thin specimens is the TEM principle.', 'Lesson: Methods of studying the cell', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The electron beam scans the specimen surface without penetrating it', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Samples are coated with a conductive material (gold or carbon)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The image is formed by electrons transmitted through the specimen', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It requires ultra-thin sections', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You need to examine the structure of a virus at the ultrastructural level with a transmission electron microscope (TEM):', 'The TEM provides ultrastructure (viral structure is one of its applications) by transmitting electrons through ultra-thin specimens; images form on fluorescent screens. The SEM shows surfaces.', 'Lesson: Methods of studying the cell', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The electron beam penetrates through an ultra-thin specimen', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The SEM, not the TEM, is the tool that provides ultrastructure', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The TEM magnification is in the order of ×50,000', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The image forms on a fluorescent screen', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which of the following are chemical methods of homogenization?', 'Chemical: osmotic shock and detergents. Sonication and pressure are physical methods; grinding is mechanical; enzymatic digestion is biochemical.', 'Lesson: Methods of studying the cell', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Osmotic shock', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Detergents', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Sonication', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Grinding', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About microsomes:', 'Microsomes are an artifact of homogenization, not native organelles. DUC order: nuclei → mitochondria/lysosomes/peroxisomes → microsomes → ribosomes; in a gradient, microsomes are among the intermediate-density components.', 'Lesson: Methods of studying the cell', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They form when fragments of the ER, Golgi apparatus and cell membrane spontaneously reseal into small vesicles', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are organelles naturally present in the living cell', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In differential ultracentrifugation they sediment after mitochondria and before ribosomes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In density gradient ultracentrifugation they settle in the intermediate-density zone', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'During differential ultracentrifugation of a homogenate, the first pellet (lowest speed) mainly contains:', 'Organelles sediment in the order nuclei, then mitochondria with lysosomes and peroxisomes, then microsomes, then ribosomes (last, at the highest speed).', 'Lesson: Methods of studying the cell', NULL, 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nuclei', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ribosomes', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Microsomes', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Mitochondria', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About differential ultracentrifugation (DUC):', 'DUC is simple and handles large volumes but gives incomplete purification. High purity in a single run with small volumes describes density gradient ultracentrifugation.', 'Lesson: Methods of studying the cell', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Components are separated mainly by size, and also by density', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Centrifugations are performed at progressively increasing speeds', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It gives high-purity fractions in a single centrifugation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is limited to small sample volumes', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'A homogenate is layered on a pre-formed sucrose density gradient and centrifuged:', 'Density gradient ultracentrifugation separates by buoyant density: lipid droplets/lipoproteins at the top, membranes and most organelles in the middle, nuclei and ribosomes at the bottom (high density).', 'Lesson: Methods of studying the cell', NULL, 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Each component migrates to the level matching its own density', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Lipid droplets and lipoproteins are found at the top (low density)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ribosomes are found at the top with the lipid droplets', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The method gives excellent separation but is limited to small sample volumes', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'To follow a secretory protein, pancreatic cells are incubated for a few minutes with ³H-leucine, then transferred to a medium containing a large excess of unlabeled leucine; samples are taken at regular intervals:', 'Pulse = brief exposure to the hot precursor; chase = large excess of cold precursor; regular sampling + autoradiography (light or electron microscope) reveals where the label travels — e.g. protein synthesis and trafficking.', 'Lesson: Methods of studying the cell', NULL, 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The short exposure to the radioactive (''hot'') precursor is the pulse', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The transfer to excess non-radioactive (''cold'') precursor is the chase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The compartments containing radioactive molecules are detected by autoradiography', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Sampling at spaced intervals tracks the transformation of the hot precursor into labeled molecules', 1);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About radioactive isotopes and the pulse-chase technique:', 'The pulse phase exposes living cells to the hot precursor, which must enter the cell and be incorporated into metabolic reactions — this is impossible in fixed cells.', 'Lesson: Methods of studying the cell', NULL, 'generated', 6);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Methods of studying the cell'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'An isotope differs from the natural element by its nuclear mass', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'An unstable isotope disintegrates, releasing electrons or radiation', 1),
  ((SELECT MAX(id) FROM questions), 'C', '³²P and ¹²⁵I are radioactive isotopes used to track metabolic pathways', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pulse-chase is performed on fixed (dead) cells', 0);
