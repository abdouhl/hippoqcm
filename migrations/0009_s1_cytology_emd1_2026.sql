-- Generated from data/s1-cytology-emd1-2026.json — 40 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You are working on a cell line derived from a malignant colonic tumor. During the observation of your cells using the laboratory light microscope, you notice an intense bright spot at the center of the field of view, with a progressive decrease in light intensity toward the periphery. Which component should be adjusted to correct this finding?', NULL, 'EMD1 2025-2026 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'condenser.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'revolving nosepiece (objective turret).', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'tube connecting the objectives to the eyepieces.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'light source.', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'In this cell line, you intend to analyze the distribution of mitochondria. You choose to use fluorochromes. Which fluorochrome is the most appropriate for this experiment?', NULL, 'EMD1 2025-2026 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'fluorescein.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'green fluorescent protein (GFP).', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'rhodamine.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'DAPI.', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'After fluorescent labeling (rhodamine), you examine the slides using a fluorescence microscope. At which wavelength should the excitation filter be set to visualize mitochondria?', NULL, 'EMD1 2025-2026 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ultraviolet (358 nm).', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'green (540–550 nm).', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'blue (495 nm).', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'red (570–590 nm).', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'What is the emission wavelength of the used fluorochrome (rhodamine)?', NULL, 'EMD1 2025-2026 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ultraviolet (358 nm).', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'blue (495 nm).', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'green (540–550 nm).', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'red-orange (570–590 nm).', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The next step of your project consists of isolating mitochondria by cell fractionation. You begin with the homogenization of your sample. Which conditions must be respected to preserve mitochondria?', NULL, 'EMD1 2025-2026 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'neutral pH.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'isotonic medium.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'protection from light.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'low temperature (4 °C).', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'After homogenization, which protocol should be followed to isolate a large quantity of mitochondria from your sample?', NULL, 'EMD1 2025-2026 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'differential ultracentrifugation alone.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'density gradient ultracentrifugation alone.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'differential ultracentrifugation followed by density gradient ultracentrifugation.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'density gradient ultracentrifugation followed by differential ultracentrifugation.', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'After isolation of mitochondria, you aim to study the precise organization of transporters within the inner mitochondrial membrane. Which technique is the most appropriate for this study?', NULL, 'EMD1 2025-2026 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'bright-field light microscopy.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'transmission electron microscopy (TEM).', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'fluorescence microscopy.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'scanning electron microscopy (SEM).', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'To move forward, a migrating cell forms a lamellipodium. Which cytoskeletal event is directly responsible for this extension?', NULL, 'EMD1 2025-2026 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'the stable polymerization of microtubules.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'the depolymerization of actin filaments at the front of the cell.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'the polymerization of actin, pushing the membrane forward.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'reinforcement by desmin filaments.', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'A drug that prevents tubulin polymerization will result in:', NULL, 'EMD1 2025-2026 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'increased contraction of actin filaments.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'disruption of intracellular transport.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'disruption of mitotic spindle formation during cell division.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'impaired ciliary motility.', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Intermediate filaments are directly involved in:', NULL, 'EMD1 2025-2026 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'desmosomes.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'tight junctions.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'hemidesmosomes.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'maintaining nuclear shape.', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'The centrosome plays a key role in cytoskeleton organization. Among the following statements, which are correct?', NULL, 'EMD1 2025-2026 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'it constitutes the main microtubule-organizing center (MTOC).', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'it orients the growth of microtubules formed from gamma and beta tubulin.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'it directly regulates the polymerization of actin filaments.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'it participates in organizing the mitotic spindle during cell division.', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Adding an actin polymerization inhibitor leads to:', NULL, 'EMD1 2025-2026 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a defect in cytokinesis.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'impaired muscle contraction.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'loss of cell motility.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'disorganization of the cell cortex.', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Correctly match:', NULL, 'EMD1 2025-2026 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'cytokeratins → epithelial cells.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'neurofilaments → axons.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'desmin → muscle cells.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'laminins → nucleus.', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'A cell loses its ability to move. The most directly involved structures are:', NULL, 'EMD1 2025-2026 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'actin microfilaments.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'microtubules of the centrioles.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'intermediate filaments.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'nuclear lamina.', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Eubacteria are best described as:', NULL, 'EMD1 2025-2026 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'multicellular organisms with specialized tissues.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'unicellular microscopic organisms with diverse shapes but a common organization plan.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'viruses that reproduce independently.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'eukaryotic cells lacking a nucleus.', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'A key example of archaeal uniqueness is that their rRNA:', NULL, 'EMD1 2025-2026 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'is identical to bacterial rRNA.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'is identical to eukaryotic rRNA.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'differs from both bacterial and eukaryotic rRNA.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'is absent.', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Archaea are similar to eubacteria in terms of:', NULL, 'EMD1 2025-2026 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'morphology and metabolism.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'having a nucleus.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'having peptidoglycan walls.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'having mitochondria.', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Viral integration into the host genome implies that:', NULL, 'EMD1 2025-2026 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'the virus becomes a bacterium.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'viral DNA replicates at the same pace as host DNA.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'the virus immediately lyses the cell.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'the virus loses all genetic information.', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning exocytosis:', NULL, 'EMD1 2025-2026 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'regulated exocytosis requires an external signal (hormone/neurotransmitter) and occurs in specialized secretory cells.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'constitutive exocytosis transports vesicles from the trans-Golgi network (TGN) to the plasma membrane.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'constitutive exocytosis maintains membrane renewal.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'regulated exocytosis releases vesicle contents after fusion with the plasma membrane.', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'In Na⁺/glucose symport in enterocytes:', NULL, 'EMD1 2025-2026 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2 Na⁺ + 1 glucose enter through SGLT1 at the apical membrane.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'glucose exits through GLUT2 at the basal membrane.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Na⁺/K⁺-ATPase maintains the Na⁺ gradient by extruding Na⁺.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'glucose enters by simple diffusion at the apical surface.', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Simple diffusion across the membrane depends on:', NULL, 'EMD1 2025-2026 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'molecular size.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'partition coefficient (lipid solubility).', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'concentration gradient.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'electrical charge and hydration.', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Membrane asymmetry refers to:', NULL, 'EMD1 2025-2026 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'equal composition on both sides of the membrane.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'different structures/functions of inner vs outer membrane surfaces.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'the absence of receptors.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'a membrane made only of proteins.', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Specializations of the cell periphery:', NULL, 'EMD1 2025-2026 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'cilia and flagella are important for cell motility or movement of surrounding fluids.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'microvilli function mainly to increase surface area for absorption and exchange.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'stereocilia are motile and microtubule-based.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'cilia and flagella are important for membrane glycosylation.', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Caveolae are:', NULL, 'EMD1 2025-2026 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'small flask-shaped invaginations derived from lipid rafts.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'derived from lipid rafts / DIGs.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'rich in cholesterol and glycosphingolipids.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'contain caveolin.', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Receptor-mediated pinocytosis occurs mainly through:', NULL, 'EMD1 2025-2026 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'smooth vesicles without receptors.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'clathrin-coated pits with receptor–ligand complexes.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'mitochondrial cristae.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'tight junctions.', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'GPI-anchored proteins are attached via:', NULL, 'EMD1 2025-2026 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'peptidoglycan chains.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'phosphatidylinositol in the outer leaflet.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'cholesterol rings in the inner leaflet.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'microtubules.', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which mechanism is the most selective?', NULL, 'EMD1 2025-2026 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'smooth (uncoated) pinocytosis.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'receptor-mediated pinocytosis via clathrin-coated pits.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'micropinocytosis.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'simple diffusion.', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Under TEM, the trilaminar appearance is characterized by:', NULL, 'EMD1 2025-2026 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'two dense layers (~2 nm each).', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'a light layer (~3.5 nm) between them.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'the same trilaminar appearance in organelle membranes.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'a structure caused by three lipid bilayers stacked.', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Mature basal lamina components include:', NULL, 'EMD1 2025-2026 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'laminin.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'type IV collagen.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'nidogen/entactin.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'perlecan.', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'GAG hydration causes:', NULL, 'EMD1 2025-2026 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'attraction of cations.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'formation of hydrated gel.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'resistance to compressive forces.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'increased tensile strength mainly.', 0);

-- Q31
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Tissue-specific ECM organization depends on:', NULL, 'EMD1 2025-2026 Q31', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'variable proportions of ECM macromolecules depending on the tissue.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'local synthesis of macromolecules by the cells within the matrix.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'universal identical ECM composition.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'mitochondrial density in ECM.', 0);

-- Q32
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which combinations correctly link ECM component → main mechanical contribution?', NULL, 'EMD1 2025-2026 Q32', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'collagen → tensile strength.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'GAGs → resistance to compressive forces through hydration.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'elastin → elasticity and tear prevention.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'collagen IV → main source of elasticity in blood vessels.', 0);

-- Q33
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Compared with the plasma membrane, ER membrane lipids are characterized by:', NULL, 'EMD1 2025-2026 Q33', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'longer aliphatic chains and higher cholesterol content.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'shorter aliphatic chains and lower cholesterol content → increased fluidity.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'saturated chains and high cholesterol → decreased fluidity.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'identical lipid composition and identical fluidity.', 0);

-- Q34
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Export of misfolded proteins from the ER involves:', NULL, 'EMD1 2025-2026 Q34', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'passage through the translocon pore back to the cytosol.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'assistance of an ER chaperone molecule.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'deglycosylation in the cytosol.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'ubiquitination followed by proteasomal degradation.', 1);

-- Q35
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Soluble ER-resident proteins are retained by a C-terminal:', NULL, 'EMD1 2025-2026 Q35', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'KKXX motif.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'KDEL sequence.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'SRP-binding domain.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Stop-transfer segment.', 0);

-- Q36
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'In the ER lumen, proteins receive oligosaccharides mainly through:', NULL, 'EMD1 2025-2026 Q36', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'O-glycosidic linkages on serine/threonine.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'N-glycosidic (asparagine-linked) bonds.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'attachment only to cytosolic proteins.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'random attachment without enzymes.', 0);

-- Q37
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'If the signal sequence is internal, it:', NULL, 'EMD1 2025-2026 Q37', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'is cleaved and removed like an N-terminal signal peptide.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'acts as a start-transfer signal and remains as a transmembrane α-helix.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'is degraded before insertion.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'prevents glycosylation entirely.', 0);

-- Q38
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'If an mRNA encodes a protein lacking an ER signal peptide:', NULL, 'EMD1 2025-2026 Q38', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'the polyribosome binds to the RER and the protein enters the lumen.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'the polyribosome remains free in the cytosol and the protein stays cytosolic.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'the SRP forces translocation into the ER regardless of the signal peptide.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'the protein becomes an ER-resident protein by default.', 0);

-- Q39
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Free ribosomes mainly synthesize proteins destined for:', NULL, 'EMD1 2025-2026 Q39', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'secretion outside the cell.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'the cytosol or organelles like peroxisomes and mitochondria.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'glycosylation in the Golgi.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'lysosomal digestion.', 0);

-- Q40
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Multi-pass transmembrane proteins are characterized by:', NULL, 'EMD1 2025-2026 Q40', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'crossing the bilayer several times.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'multiple regular α-helices.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'being peripheral proteins.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'having no hydrophobic segments.', 0);
