-- Generated from data/s1-cytology-emd1-2023.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning extracellular matrix pathologies (one or more correct answers):', 'No official answer key for this exam — answers worked out from the course. Fibrosis is an increase of the extracellular matrix.', 'EMD1 2022-2023 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In scurvy, vascular anomalies are linked to anomalies in the synthesis of type III collagen', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Fibrosis is characterized by an increase, in a tissue, of the constituents of the mitochondrial matrix', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Some genetic diseases can affect collagen synthesis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Scurvy is due to a deficiency of vitamin C, which is a cofactor of collagen synthesis', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning archaea and viruses:', 'No official key for this exam; answer aligned with the official 2024-2025 key for the same statements (archaeal rRNAs differ from those of eukaryotes).', 'EMD1 2022-2023 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Archaea have rRNAs similar to those of eukaryotes', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Archaea are very similar to bacteria morphologically and metabolically', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Viruses have a cytoplasm and a true nucleus', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Viruses are obligate parasites with no metabolism of their own', 1);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the termination step of protein synthesis:', 'No official key — release factors are involved and the subunits dissociate.', 'EMD1 2022-2023 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Initiation factors are involved', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The tRNA–peptide ester bond is cleaved by peptidyltransferase, which acts as a hydrolase', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The complete protein chain is released and the two ribosomal subunits release the mRNA without dissociating', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Peptidyltransferase has no role in termination and only acts in forming peptide bonds', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning transport across the plasma membrane:', 'No official key — symports move both solutes in the same direction; caveolae are rich in cholesterol/sphingolipids (rafts).', 'EMD1 2022-2023 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Receptor-induced pinocytosis is a specific, selective form of endocytosis not involving membrane receptors', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Raft endocytosis leads to the formation of caveolae whose membrane is rich in protein domains', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Facilitated transport works along the molecular gradient', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Symports couple passive and active transport in opposite directions', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The structure of bacteria always contains:', 'No official key.', 'EMD1 2022-2023 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Pili', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A capsule', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An envelope containing viral proteins', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A plasma membrane', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About protein glycosylation in the rough endoplasmic reticulum:', 'No official key — trimming starts in the ER; the folding quality control uses the N-glycan (calnexin cycle).', 'EMD1 2022-2023 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The preformed oligosaccharide motif (2 N-acetylglucosamines, 9 mannoses and 3 glucoses) is transferred from dolichol-phosphate to an N-glycosylation consensus sequence containing asparagine', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The oligosaccharide motifs are only modified after the glycoprotein is transferred to the Golgi apparatus', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'N-glycosylation takes place in the RER lumen during translation', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'O-glycosylation indicates the extent of protein folding so that proteins only leave the ER once correctly folded', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Hyaluronic acid:', 'No official key — hyaluronic acid is a free GAG, not bound to a core protein.', 'EMD1 2022-2023 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a proteoglycan', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is a glycosaminoglycan', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is necessarily associated with a protein core to form a proteoglycan', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Attracts water, a property essential for resistance to compressive forces', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning viruses:', 'No official key.', 'EMD1 2022-2023 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Viruses of eukaryotes can be RNA or DNA viruses', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They can be classified by the type of capsid symmetry, helical or cubic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They have no metabolism of their own nor intrinsic capacity to produce the proteins encoded by their genome', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Coronaviruses are RNA viruses whose name comes from their shape, with spikes forming a kind of crown', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The molecular mechanisms involved in contact inhibition can be studied on a line of:', 'No official key — cancer cells lose contact inhibition; lymphocytes are not adherent.', 'EMD1 2022-2023 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lymphocytes at confluence', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Adherent cells at confluence', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Adherent cancer cells at confluence', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Adherent cells at semi-confluence', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The basal lamina:', 'No official key — keratins are intracellular intermediate filaments.', 'EMD1 2022-2023 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Among its frequent constituents are collagen IV, nidogen and keratins', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is part of the extracellular matrix', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is made of parallel collagen fibers forming a dense bundle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is a fibrous network made of glycoproteins and proteoglycans', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Integrins:', 'No official key.', 'EMD1 2022-2023 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Can transduce signals from the extracellular matrix to the cell', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Are transmembrane receptors', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Consist of an α subunit and a β subunit', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Bind to extracellular matrix molecules', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the principles of cell theory:', 'No official key.', 'EMD1 2022-2023 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Every living organism is composed of one or more cells', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'All living beings must be composed of simple elementary structures that do not repeat', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Every cell comes from the division of another pre-existing cell', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The cell is the unit of structure and function of life', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Ribosomes bound to the ER membrane make membrane proteins destined:', 'No official key — most peroxisomal and mitochondrial proteins are made on free ribosomes.', 'EMD1 2022-2023 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'For the outer face of the plasma membrane (external peripheral proteins)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'For the membrane of the Golgi apparatus', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'For other cell membranes: peroxisomes, lysosomes and mitochondria', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'For the plasma membrane', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning cytoskeletal elements:', 'No official key — desmin is an intermediate filament; zonula adherens uses actin.', 'EMD1 2022-2023 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Desmin depolymerization starts from the microtubule organizing center', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Tubulin is part of the zonula adherens', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Dynein provides centripetal transport and kinesin centrifugal transport', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In cell fractionation, the first pellet obtained after differential ultracentrifugation contributes to the study of cytoskeletal elements', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About detoxification:', 'No official key.', 'EMD1 2022-2023 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Detoxification is an important function of the SER', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The active site of cytochrome P450 is on the cytosolic side of the SER', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'P450 action hydroxylates the drug, increasing its water solubility', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In the SER lumen, the hydroxylated drug undergoes glucuronidation, which increases its solubility', 1);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning protein synthesis:', 'No official key — synthesis starts on free ribosomes; mRNA carries codons, not anticodons.', 'EMD1 2022-2023 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Protein synthesis always starts at the RER', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Translation ends when the ribosome reaches the stop codon of the mRNA', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The elongation step involves elongation factors', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Protein synthesis requires tRNAs that match a given amino acid to each anticodon of the mRNA', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The study of microtubule dynamics during cell division requires the use of:', 'No official key — dynamics require live imaging with fluorescence.', 'EMD1 2022-2023 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Fluorochromes', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Flow cytometry', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Transmission electron microscopy', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Confocal fluorescence microscopy', 1);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Membrane transporters:', 'No official key.', 'EMD1 2022-2023 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are composed of hydrophilic lipids', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Can change configuration while transporting molecules', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Modify the molecule they transport', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Always carry out transport down the chemical gradient', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which laboratory techniques keep cells alive?', 'No official key.', 'EMD1 2022-2023 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Flow cytometry', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cell fractionation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Fluorescent immunolabeling', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Immortalization by viral transfection', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Plasma membrane lipids:', 'No official key — glycolipids exist; flip-flop is slow.', 'EMD1 2022-2023 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Are never linked to sugar chains, unlike proteins', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'All have a hydrophilic domain and a hydrophobic domain', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Phosphatidylserine and phosphatidylethanolamine are found mainly in the inner leaflet', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Can move slowly from one leaflet of the bilayer to the other', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The combination (Taxol + fluorescent immunolabeling) makes it possible to visualize:', 'No official key — Taxol stabilizes microtubules.', 'EMD1 2022-2023 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The framework of microvilli', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The microtubules of cell division', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The intermediate filaments present in stem cells', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The mitotic contractile ring', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the functions of the endoplasmic reticulum:', 'No official key — sulfation occurs in the Golgi.', 'EMD1 2022-2023 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The RER synthesizes proteins destined for the constitutive and regulated secretory pathway', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The SER is involved in sulfation', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The RER is the site of some glycosylation processes', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The SER is the site of biosynthesis of lipids destined for the cell membrane', 1);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning actin microfilaments:', 'No official key.', 'EMD1 2022-2023 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'G-actin-ATP is found only in the cytosol', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Nucleation of F-actin occurs anywhere in the cytosol', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The basic unit and the basic protein are the same', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Depolymerization occurs at the microtubule organizing center', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About protein folding in the RER:', 'No official key — misfolded proteins are retro-translocated to the proteasome (ERAD).', 'EMD1 2022-2023 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'After synthesis in the RER, misfolded proteins are sent by vesicles to lysosomes for degradation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Folding depends on chaperone proteins that help and control folding', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'When proteins misfold in the RER, the cell goes into apoptosis', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Folding gives the three-dimensional conformation needed for their function', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About cytoskeletal elements:', 'No official key.', 'EMD1 2022-2023 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Microtubule tubulin undergoes N-glycosylation in the RER, essential for its polymerization', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Intermediate filaments are not involved in cell division', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'They all have the same diameter', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Some can take part in the intracellular movement of organelles', 1);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning RNAs and translation:', 'No official key.', 'EMD1 2022-2023 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A tRNA with a specific codon can carry different amino acids', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'tRNAs are small double-stranded RNA molecules', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An mRNA can be translated by several ribosomes at once, producing several identical proteins from the same messenger', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'tRNAs contain a three-nucleotide sequence, the anticodon, whose bases are complementary to the mRNA codon', 1);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the plasma membrane:', 'No official key.', 'EMD1 2022-2023 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The cell coat helps maintain plasma membrane asymmetry', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The hydrophilic regions of transmembrane proteins are all exposed on the cytosolic side', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Peripheral membrane proteins are amphipathic', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The lipid composition of the two leaflets is different, reflecting the identical functions of the two faces', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Events in the maturation of ribosomal RNAs and formation of eukaryotic ribosomes include:', 'No official key — 18S goes to the small subunit; 5S rRNA is transcribed outside the nucleolus.', 'EMD1 2022-2023 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Synthesis of a 45S pre-rRNA molecule', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Incorporation of 18S rRNA into the large ribosomal subunits', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Association of ribosomal proteins with rRNAs before these molecules leave the nucleus', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Synthesis of a 5S rRNA molecule in the nucleolus', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Facilitated passive membrane transport:', 'No official key.', 'EMD1 2022-2023 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Allows diffusion against the concentration gradient of the transported molecule', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is saturable', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is involved exclusively in the diffusion of lipid-soluble molecules', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Requires energy from ATP hydrolysis', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the extracellular matrix:', 'No official key — elastin provides elasticity; adhesion is via fibronectin/laminin.', 'EMD1 2022-2023 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The macromolecules making up the extracellular matrix are produced locally by cells in the matrix', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Elastin ensures adhesion of cells to the extracellular matrix', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Hyaluronic acid is a glycosaminoglycan that exists in the free state in the extracellular matrix', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'All glycosaminoglycans of the extracellular matrix are bound to proteins forming proteoglycans', 0);
