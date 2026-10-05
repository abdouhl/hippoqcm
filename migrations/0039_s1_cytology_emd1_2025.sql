-- Generated from data/s1-cytology-emd1-2025.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning viruses and archaea (one or more correct answers):', NULL, 'EMD1 2024-2025 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Viruses are non-obligate parasites with their own metabolism', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Archaea are very similar to bacteria morphologically and metabolically', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Viruses have a cytoplasm and a true nucleus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Archaea have rRNAs similar to those of eukaryotes', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About detoxification in the hepatocyte:', NULL, 'EMD1 2024-2025 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cytochrome P450 is an enzyme of the SER membrane whose active site is on the luminal side of the SER', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'P450 action hydroxylates the drug, increasing its water solubility', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The hydroxylated drug is translocated to the cytosol', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'In the SER lumen, the hydroxylated drug undergoes glucuronidation, which increases its solubility', 1);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About protein glycosylation in the rough endoplasmic reticulum:', 'The N-glycosylation consensus sequence contains asparagine (Asn-X-Ser/Thr).', 'EMD1 2024-2025 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The preformed oligosaccharide motif (2 GlcNAc, 9 Man, 3 Glc) is transferred from dolichol-phosphate to an N-glycosylation consensus sequence containing serine or threonine', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The oligosaccharide motifs (2 GlcNAc, 9 Man, 3 Glc) are only modified after the glycoprotein is transferred to the Golgi apparatus', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'N-glycosylation takes place in the RER lumen during translation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'O-glycosylation indicates the extent of protein folding so that proteins only leave the ER once correctly folded', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Ribosomes bound to the ER membrane make membrane proteins destined for the membrane of:', NULL, 'EMD1 2024-2025 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The endoplasmic reticulum', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Peroxisomes', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The plasma membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Lysosomes', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The Golgi apparatus:', NULL, 'EMD1 2024-2025 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sorts molecules before their cellular or extracellular distribution, notably by adding addressing signals', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Takes part, via Golgi vesicles, in renewing the glycocalyx', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Takes part in the post-translational maturation of proteins', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Plays a role in incorporating sulfates into glycoproteins', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning viruses:', NULL, 'EMD1 2024-2025 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Viruses use the ribosomes of the cells they infect to synthesize their proteins', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Bacteriophages are viruses that infect bacteria', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Some viruses are surrounded by an envelope formed when they cross cell membranes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They can only reproduce by infecting a host cell', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the biochemical modifications seen in the Golgi apparatus:', NULL, 'EMD1 2024-2025 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Maturations in the Golgi system are finished before arrival at the TGN, which handles specific addressing of molecules and formation of coated vesicles', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Modifications of the N-linked motif in the Golgi determine the addressing of the protein to a given compartment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Sulfotransferases in the trans-Golgi allow sulfation of some glycoproteins', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'N-glycosylated proteins can undergo deglycosylations followed by additional glycosylations', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning bacteria:', NULL, 'EMD1 2024-2025 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'No bacterium can be beneficial to humans', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Gram-positive bacteria have thick cell walls', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Bacteria may have a capsule of lipid nature', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Bacteria always contain a plasma membrane', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning transport across the plasma membrane:', NULL, 'EMD1 2024-2025 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Passive membrane transport via a permease can be blocked by competitive inhibitors', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Raft endocytosis leads to the formation of caveolae whose membrane is rich in protein domains', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Regulated (controlled) exocytosis is a continuous process that consumes energy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Simple diffusion across the plasma membrane involves specific recognition between an extracellular messenger and a surface receptor', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Coatomers are proteins involved in:', NULL, 'EMD1 2024-2025 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Retrograde transport', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Anterograde transport', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Endocytosis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Exocytosis', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the plasma membrane:', NULL, 'EMD1 2024-2025 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The cell coat plays a role in recognition, cell adhesion and physical protection of the cell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Plasma membrane proteins can cross the membrane several times', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The plasma membrane is a complex dynamic structure in constant motion, passing through different states of structural organization depending on physiological activity', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Phosphatidylserine and phosphatidylethanolamine are found mainly in the outer leaflet', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning transmembrane exchanges:', NULL, 'EMD1 2024-2025 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Simple diffusion occurs without energy expenditure thanks to a passive permease', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Unlike lipids, which are mobile, proteins have no mobility within the membrane', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Facilitated diffusions are symports', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Aquaporins are multi-pass integral proteins that allow water to cross the membrane', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The plasma membrane is called a "fluid mosaic" because:', NULL, 'EMD1 2024-2025 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is rigid and fixed', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is made of a fluid lipid bilayer with mobile proteins', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It consists only of proteins', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It allows no movement of its components', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning protein synthesis:', NULL, 'EMD1 2024-2025 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Protein synthesis always starts at the RER', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Protein synthesis requires tRNAs that match a given amino acid to each anticodon of the mRNA', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Translation ends when the ribosome reaches the stop codon of the mRNA', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The RER picks up certain specific proteins from the cytosol as soon as they are synthesized', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Archaea:', NULL, 'EMD1 2024-2025 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are found everywhere in the environment, including the human body', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are used to produce heat-resistant enzymes', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Have rRNAs different from those of eubacteria and eukaryotes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Are more similar to bacteria than to eukaryotes at the molecular level', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning eukaryotic ribosomes:', NULL, 'EMD1 2024-2025 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are not bounded by a membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They are complexes of rRNA and ribosomal proteins', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They catalyze DNA replication', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'They can be free in the cytosol or bound to the ER membrane and to the outer membrane of the nuclear envelope', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning membrane functions:', NULL, 'EMD1 2024-2025 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In exocytosis, the cell takes in macromolecules by forming new vesicles at the plasma membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Macromolecules and particles cross the plasma membrane by passive phenomena', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Receptor-mediated endocytosis lets the cell take up specific substances via clathrin-coated pits', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In pinocytosis, a portion of the plasma membrane invaginates to internalize a fraction of the intracellular medium', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'During rRNA maturation and ribosome formation there is:', NULL, 'EMD1 2024-2025 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Synthesis of a 45S pre-mRNA molecule', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Incorporation of 18S rRNA into the large ribosomal subunits', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Synthesis of a 5S rRNA molecule outside the nucleolus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Association of ribosomal proteins with mRNAs before these molecules leave the nucleus', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Protein translocation into the ER involves the SRP complex; this complex is:', NULL, 'EMD1 2024-2025 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A ribonucleoprotein complex', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A translocation channel, also called the translocon', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A protease cleaving the signal sequence', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A signal sequence allowing translocation into the ER', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Among the conformational and chemical modifications of a protein in the RER, there is:', NULL, 'EMD1 2024-2025 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Folding by BiP proteins', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sulfation by sulfotransferases', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Degradation in the proteasome', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'N-glycosylation and O-glycosylation by glycosyltransferases', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About protein folding in the RER:', NULL, 'EMD1 2024-2025 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Folding gives the three-dimensional conformation needed for their function', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Folding depends on the KDEL sequence, which helps and controls folding', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'After synthesis in the RER, misfolded proteins are sent by vesicles to lysosomes for degradation', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Protein misfolding in the RER causes protein synthesis to stop and the cell to undergo apoptosis', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Fate of proteins:', NULL, 'EMD1 2024-2025 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Misfolded proteins in the ER lumen must be translocated to the cytosol and possibly deglycosylated before proteolysis in a proteasome', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The proteasome is a cytosolic system for degrading ubiquitinated proteins', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ubiquitin is a protein that tags other proteins destined for degradation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Proteins synthesized in the ER, whether membrane or soluble, can undergo maturations', 1);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning retrograde vesicular transport:', 'Official key: D. (Note: retrograde CGN → ER vesicles are normally COP I; KDEL is the signal of soluble ER-resident proteins, KKXX that of transmembrane ones.)', 'EMD1 2024-2025 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It occurs either from the Golgi to the cell membrane or from the Golgi to the mitochondrion', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'This transport notably returns non-resident proteins of the RER', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Transmembrane proteins resident in the RER have a KDEL signal allowing their return to their compartment', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The CGN emits COP II vesicles that fuse with the RER', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the Golgi apparatus:', NULL, 'EMD1 2024-2025 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'O-glycosylation occurs on serine and threonine residues of the protein', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In the medial and trans saccules of the Golgi, glycosyltransferases add new sugars', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is involved in modifying, sorting and dispatching proteins and lipids', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Post-Golgi compartments of the endomembrane system include lysosomes, peroxisomes and secretory vesicles', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The Golgi apparatus is a site of:', NULL, 'EMD1 2024-2025 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Maturation and chemical tagging of proteins', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Polyubiquitination of misfolded proteins', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Modification of the N-linked oligosaccharides of glycoproteins', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Proteolysis of proteins that misfolded in the RER', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You are doing a five-year basic research project on the migration of breast cancer cells, a key phenomenon in metastasis. You prepare a cell line from a malignant breast tumor. What protocol gives this line?', 'Tumor cells are already immortal; sorting isolates the tumor cells.', 'EMD1 2024-2025 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Biopsy + primary culture', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Biopsy + primary culture + flow cytometry sorting', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Biopsy + primary culture + flow cytometry sorting + immortalization by lentiviral transfection', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Biopsy + primary culture + immortalization by lentiviral transfection', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'On the cell line obtained, you want to assess the expression of integrin α1β2, a membrane protein involved in cell migration. You have a simple primary antibody and a fluorochrome-coupled secondary antibody. Which technique will you use?', NULL, 'EMD1 2024-2025 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cell fractionation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Direct fluorescent immunolabeling', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Indirect fluorescent immunolabeling', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pulse-chase technique', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'How can you analyze the results of the technique used to assess integrin α1β2 expression?', NULL, 'EMD1 2024-2025 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'With the confocal fluorescence microscope', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'With the fluorescence microscope', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'With the inverted phase-contrast microscope', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'With flow cytometry', 1);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The next step is to study the migration kinetics of your cell line by measuring cell speed on different matrices. Which laboratory tool should you use?', NULL, 'EMD1 2024-2025 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flow cytometry', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Scanning electron microscopy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Transmission electron microscopy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Light microscopy', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'In your cell line you want to study the ultrastructure of raft domains involved in cell migration. You do a cell fractionation to isolate the plasma membrane. Which protocol yields a large quantity of plasma membrane from your cell line?', NULL, 'EMD1 2024-2025 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Homogenization followed by differential ultracentrifugation (DUC)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Homogenization followed by gradient ultracentrifugation (GUC)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Fluorescent immunolabeling followed by homogenization and gradient ultracentrifugation (GUC)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Homogenization followed by differential ultracentrifugation (DUC) then gradient ultracentrifugation (GUC)', 1);
