-- Generated from data/s1-cytology-emd1-2024.json — 40 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning membrane functions:', 'No official answer key for this exam — answers worked out from the course.', 'EMD1 2023-2024 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Macromolecules and particles cross the plasma membrane by exocytosis and/or endocytosis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Facilitated transport works along the molecular gradient', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Symports couple passive and active transport in opposite directions', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'During endocytosis, macromolecules and/or particles enter the cell via vesicles formed by invagination of the plasma membrane', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Microfilaments:', 'No official key — the nuclear lamina is made of intermediate filaments (lamins).', 'EMD1 2023-2024 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Form the contractile ring during cytokinesis, as bundles associated with myosin II', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Can be linked to integrins involved in cell–extracellular matrix adhesion', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'G-actin polymerizes into 5–8 nm microfilaments lining notably the inner face of the plasma membrane and the nuclear envelope', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A class of microfilaments is anchored to the outer face of the nuclear envelope and helps form and support it', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Laboratory techniques that do NOT cause cell death are:', 'No official key.', 'EMD1 2023-2024 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Fluorescent immunolabeling of surface proteins', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Transfection', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Freezing at −192 °C in liquid nitrogen in the presence of DMSO', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Differential ultracentrifugation', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Plasma membrane proteins can provide:', 'No official key.', 'EMD1 2023-2024 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Selective permeability to solutes', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A link to the cytoskeleton', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Diffusion of macromolecules and particles', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A link to the extracellular matrix', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The amino acid sequence of a protein:', 'No official key.', 'EMD1 2023-2024 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is determined by the nucleotide sequence of its messenger RNA', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Strongly influences the shape of its molecule', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is determined by the nucleotide sequence of its coding gene', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Constitutes the primary structure of its molecule', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Actin filaments have NO role in:', 'No official key — ciliary beating relies on microtubules (axoneme) and dynein.', 'EMD1 2023-2024 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Muscle contraction', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cell movement', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cell division', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ciliary movement', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the principles of cell theory:', 'No official key.', 'EMD1 2023-2024 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Every cell arises from the division of a pre-existing cell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'All living organisms are made of at least one cell', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The cell is the unit of structure and function of life', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Every organism is composed of one or more cells', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Viruses:', 'No official key.', 'EMD1 2023-2024 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Can grow and multiply autonomously', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Use the ribosomes of the cells they infect to synthesize their proteins', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Contain a genome', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All have a protein capsid', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The extracellular matrix:', 'No official key.', 'EMD1 2023-2024 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Comprises all the molecules and macromolecules of the extracellular space', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Includes the proteins of the cytoskeleton', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Contains fibrous proteins involved in cell adhesion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Has a uniform composition in all tissues of the same individual', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning bacteria:', 'No official key — the capsule is usually polysaccharide.', 'EMD1 2023-2024 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'No bacterium can be beneficial to humans', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Gram-positive bacteria have thick cell walls', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Bacteria may have a capsule of lipid nature', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Bacteria always contain a plasma membrane', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Membrane transport:', 'No official key — same direction = symport.', 'EMD1 2023-2024 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Facilitated transport works along the molecular gradient', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Simultaneous cotransport of two different solutes in the same direction is an antiport', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Simple diffusion is a mode of active transport facilitated by proteins', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Active transport has the same properties as facilitated diffusion', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Transfection is a technique used in cell culture to:', 'No official key — transfection (e.g. of oncogenes) immortalizes normal cells to create cell lines; tumor cells are already immortal.', 'EMD1 2023-2024 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Contaminate cells', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Inhibit apoptosis', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Obtain cell lines', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Immortalize tumor cells', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning successive fluorescent immunolabelings on a slide to detect several proteins of interest in the same tumor cell line sample:', 'No official key.', 'EMD1 2023-2024 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The number of fluorochromes equals the number of target proteins', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The fluorescence microscope reveals all the fluorochromes simultaneously', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Only surface proteins can be labeled', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Only direct immunolabeling can be done for all targets', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Microsomes obtained after cell fractionation can come from:', 'No official key — microsomes are vesicles of fragmented membranes (ER, Golgi, plasma membrane).', 'EMD1 2023-2024 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Storage vesicles', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The rough endoplasmic reticulum exclusively', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The plasma membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The Golgi apparatus', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning cell study methods:', 'No official key.', 'EMD1 2023-2024 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cell culture is a cell separation technique', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'To obtain subcellular fractions, cells can be lysed by osmotic shock or ultrasound', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Gradient ultracentrifugation is used to separate cell components on the basis of their buoyant density', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Light microscopy illuminates the sample with electrons', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Microtubules:', 'No official key.', 'EMD1 2023-2024 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are polymers of α and β tubulin and their polymerization is GTP-dependent', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are polar structures with a fast-growing (+) end and a (−) end usually embedded in the centrosome', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Help build the extracellular matrix', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Are involved in forming the mitotic spindle', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the extracellular matrix:', 'No official key.', 'EMD1 2023-2024 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The macromolecules making up the extracellular matrix are produced locally by cells in the matrix', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The organization of the extracellular matrix is specific to each tissue', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Laminins are a family of cell-adhesion proteins', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Fibronectins have binding sites for collagens and integrins', 1);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning endocytosis:', 'No official key — B describes exocytosis; caveolae are rich in cholesterol/sphingolipids.', 'EMD1 2023-2024 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Raft endocytosis leads to the formation of caveolae whose membrane is rich in protein domains', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'In endocytosis, intracellular vesicles migrate to the plasma membrane, fuse with it and release their contents outside the cell', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Endocytosis allows ingestion of pathogenic particles and their destruction', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Receptor-mediated endocytosis lets the cell take up specific substances via clathrin-coated pits', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning transport across the plasma membrane:', 'No official key. (Options B and C are partly cut off on the scan.)', 'EMD1 2023-2024 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Transcellular membrane flows involve both endocytosis and exocytosis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In endocytosis, the cell takes in macromolecules by forming new vesicles at the plasma membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'In pinocytosis, a portion of the plasma membrane invaginates to internalize a fraction of the extracellular medium', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Exocytosis consumes energy', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The plasma membrane:', 'No official key.', 'EMD1 2023-2024 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a glycolipid structure', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Forms a selectively permeable boundary between cells and their environment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Has an invariable chemical composition regardless of cell type', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Contains proteins whose nature varies with cell type', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Plasma membrane proteins:', 'No official key.', 'EMD1 2023-2024 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'All perform the same functions', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Are mobile', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'May cross the membrane several times (multi-pass)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are exclusively involved in active transport across the membrane', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the plasma membrane:', 'No official key — rafts are lipid microdomains; PS and PE are mainly in the inner leaflet.', 'EMD1 2023-2024 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The cell coat helps give the plasma membrane its asymmetry', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Lipid rafts are protein microdomains that are either barely fluid or very fluid', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The plasma membrane is a complex dynamic structure in constant motion, passing through different states of structural organization depending on physiological activity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Phosphatidylserine and phosphatidylethanolamine are found mainly in the outer leaflet', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Archaea:', 'No official key — archaea are unicellular and molecularly closer to eukaryotes.', 'EMD1 2023-2024 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are multicellular microorganisms very similar to bacteria morphologically and metabolically', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Have rRNAs different from those of eubacteria and eukaryotes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are more similar to bacteria than to eukaryotes at the molecular level', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Come in various shapes and can occupy extreme biotopes', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning transmembrane exchanges:', 'No official key.', 'EMD1 2023-2024 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The diffusion rate of a lipophilic solute is proportional to its hydrophobicity', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Unlike lipids, which are mobile, proteins have no mobility within the membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Transmembrane proteins of the plasma membrane are amphiphilic', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Aquaporins are multi-pass integral proteins that allow water to cross the membrane', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning glycosaminoglycans and proteoglycans:', 'No official key — GAGs are long polymers of repeating disaccharides; hyaluronic acid is a free GAG.', 'EMD1 2023-2024 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glycosaminoglycans are dimers of repetitively associated disaccharides', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Proteoglycans consist of a protein core linked to glycosaminoglycans', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glycosaminoglycans can be associated with proteins to form proteoglycans', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Hyaluronic acid is a proteoglycan', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Integrins:', 'No official key — integrins signal in both directions (outside-in and inside-out).', 'EMD1 2023-2024 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Have an activity that depends on their binding to the cytoskeleton', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Activate intracellular signaling pathways when they are themselves activated by binding to the extracellular matrix', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Are membrane receptors that bind the extracellular matrix', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Can transmit signals from the cell to the extracellular matrix', 1);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the basal lamina:', 'No official key — the basal lamina contains type IV collagen.', 'EMD1 2023-2024 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In epithelial tissues, cells are organized in sheets and rest on the basal lamina', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The basal lamina is a fibrous network made of glycoproteins and proteoglycans', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Laminin-1 is a trimeric glycoprotein characteristic of the basal lamina', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The basal lamina contains type VI collagen', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning viruses:', 'No official key — poliovirus is an RNA virus.', 'EMD1 2023-2024 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Bacteriophages are viruses that infect bacteria', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Some viruses are surrounded by an envelope formed when they cross cell membranes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A virus is a nucleic acid molecule in a protein sheath with its own metabolism', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Poliomyelitis is an example of a disease caused by a DNA virus', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Intermediate filaments:', 'No official key — 13 protofilaments describes microtubules.', 'EMD1 2023-2024 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are formed by the assembly of eight protofilaments, themselves formed by successive addition of tetramers, and their stability can be regulated by phosphorylation/dephosphorylation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are involved in transport processes, in the cytosol as in the nucleus', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'During self-assembly, two protein dimers associate in antiparallel fashion to form a tetrameric subunit', 1),
  ((SELECT MAX(id) FROM questions), 'D', '13 protofilaments form the 10 nm intermediate filament', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The cytoskeleton:', 'No official key — kinesins and MAPs are associated with microtubules.', 'EMD1 2023-2024 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Kinesins move various cell constituents toward the plus (+) end of microfilaments', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Dyneins and kinesins are motor proteins associated with microtubules', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Myosin II is a dimer of motor proteins associated with thin actin microfilaments', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'MAP proteins are proteins associated with actin microfilaments', 0);

-- Q31
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the genetic code:', 'No official key — the code is unambiguous, non-overlapping and degenerate.', 'EMD1 2023-2024 Q31', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A codon is a sequence of three nucleotides', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Several amino acids can be called by the same codon', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Two consecutive codons can share a nucleotide', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Several different codons can call the same amino acid', 1);

-- Q32
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning eukaryotic ribosomes:', 'No official key.', 'EMD1 2023-2024 Q32', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are not bounded by a membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are complexes of rRNA and ribosomal proteins', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They catalyze DNA replication', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They can be free in the cytosol or bound to the ER membrane and to the outer membrane of the nuclear envelope', 1);

-- Q33
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'During rRNA maturation and ribosome formation there is:', 'No official key — A and D wrongly say mRNA (it is pre-rRNA / rRNA); 18S goes to the small subunit.', 'EMD1 2023-2024 Q33', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Synthesis of a 45S pre-mRNA molecule', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Incorporation of 18S rRNA into the large ribosomal subunits', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Synthesis of a 5S rRNA molecule outside the nucleolus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Association of ribosomal proteins with mRNAs before these molecules leave the nucleus', 0);

-- Q34
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'During translation:', 'No official key.', 'EMD1 2023-2024 Q34', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The AUG codon marks the end of translation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A codon is a sequence of three amino acids', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A codon corresponds to a single amino acid', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'An amino acid corresponds to one or several different codons', 1);

-- Q35
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Flow cytometry:', 'No official key.', 'EMD1 2023-2024 Q35', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is the reference method for sorting cells from a suspension', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Allows multiparametric analysis of many cells one by one, which explains its applications in hematology and oncology', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Allows simultaneous measurement of several physical characteristics of a cell', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a cell culture technique', 0);

-- Q36
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Elongation:', 'No official key — the ribosome moves 5′→3′; the peptidyl-tRNA is in the P site; aminoacyl-tRNA enters with EF-Tu/eEF1.', 'EMD1 2023-2024 Q36', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'During this process, the ribosome moves toward the 5′ end', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The tRNA carrying the new amino acid enters the A site', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The tRNA carrying the growing amino-acid chain is in the E site', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The tRNA carrying the new amino acid enters the ribosome alone', 0);

-- Q37
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Ribosomes bound to the ER membrane make membrane proteins destined for the membrane of:', 'No official key — peroxisomal proteins are made on free ribosomes.', 'EMD1 2023-2024 Q37', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The endoplasmic reticulum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Peroxisomes', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The plasma membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Lysosomes', 1);

-- Q38
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The fluorescence microscope is based on:', 'No official key.', 'EMD1 2023-2024 Q38', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Detection of electrons emitted by the observed sample', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Deflection of a flow of uncharged particles, photons', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Molecules that absorb light at a certain wavelength and emit light at a longer wavelength', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Deflection of a flow of electrons', 0);

-- Q39
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning microscopy:', 'No official key.', 'EMD1 2023-2024 Q39', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Light microscopy illuminates the sample with electrons', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A transmission electron microscope can observe natural samples without preparation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Fluorescence is used in electron microscopy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Light microscopy may require chemical staining of the samples', 1);

-- Q40
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The synthesis of a protein:', 'No official key.', 'EMD1 2023-2024 Q40', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Requires the presence of the rough endoplasmic reticulum', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Requires tRNAs that match a given amino acid to each anticodon of the mRNA', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Always starts at the RER', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Assembles amino acids in the N-terminal → C-terminal direction', 1);
