-- Generated from data/s1-chemistry-emd1-2022.json — 26 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The masses of the proton, neutron and electron are respectively 1.6723842×10⁻²⁴ g, 1.6746887×10⁻²⁴ g and 9.109534×10⁻²⁸ g.
Define the atomic mass unit (amu):', 'No official answer key for this exam — answers worked out.', 'EMD1 2021-2022 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is one twelfth of the mass of an atom of the carbon(-12) isotope', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is one twelfth of the mass of an atom of the oxygen isotope', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a molar concentration', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is one mole of atoms', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give the value of the atomic mass unit in g:', 'No official key — 1 amu = 1/N g ≈ 1.66×10⁻²⁴ g.', 'EMD1 2021-2022 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.09×10⁻²⁴ g', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.66030217×10⁻²⁴ g', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.1907×10⁻²⁴ g', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.66030217×10⁻²⁷ g', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate, in amu, the mass of the proton (mp = 1.6723842×10⁻²⁴ g):', 'No official key.', 'EMD1 2021-2022 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.619003 amu', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.07277 amu', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.007277 amu', 1),
  ((SELECT MAX(id) FROM questions), 'D', '1.003218 amu', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Using Einstein''s relation (mass–energy equivalence), calculate the energy content of one amu in MeV. (1 eV = 1.6×10⁻¹⁹ J)', 'No official key — 1.66×10⁻²⁷ kg × (3×10⁸)² / 1.6×10⁻¹³ ≈ 934 MeV.', 'EMD1 2021-2022 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '907 MeV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '834 MeV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '934 MeV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '957 MeV', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Gallium Ga (Z = 31) has two stable isotopes ⁶⁹Ga and ⁷¹Ga. The atomic molar mass of gallium is 69.72 g/mol. Approximate natural abundance of ⁶⁹Ga:', 'No official key — 69x + 71(1 − x) = 69.72 → x = 0.64.', 'EMD1 2021-2022 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '60%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '54%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '62%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '64%', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Gallium, M = 69.72 g/mol.) Approximate natural abundance of ⁷¹Ga:', 'No official key.', 'EMD1 2021-2022 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '26%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '36%', 1),
  ((SELECT MAX(id) FROM questions), 'C', '33%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '30%', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A hydrogen atom in its ground state absorbs a photon of wavelength λ₁ then emits a photon of wavelength λ₂. On which level is the electron for λ₁ = 97.28 nm?', 'No official key.', 'EMD1 2021-2022 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ni = 4', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'ni = 1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'ni = 5', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'ni = 2', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen atom excited to n = 4.) On which level is the electron after emitting λ₂ = 1879 nm?', 'No official key.', 'EMD1 2021-2022 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'nj = 4', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'nj = 6', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'nj = 2', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'nj = 3', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The first ionization energy of the helium atom is 24.6 eV. What is the energy of the ground level?', 'No official key.', 'EMD1 2021-2022 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−23.09 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−20.12 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '+24.6 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−24.6 eV', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A helium atom is in an excited state; one of its electrons is at the energy level −21.4 eV (ground level −24.6 eV). What is the wavelength of the radiation emitted when this electron falls back to the ground level?', 'No official key — ΔE = 3.2 eV → λ = 1240/3.2 ≈ 388 nm.', 'EMD1 2021-2022 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'λ = 288 nm', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'λ = 308 nm', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'λ = 388 nm', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'λ = 380 nm', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the number of valence electrons of vanadium V (Z = 23)?', 'No official key — 4s² 3d³.', 'EMD1 2021-2022 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the number of valence electrons of gallium Ga (Z = 31)?', 'No official key — 4s² 4p¹.', 'EMD1 2021-2022 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '6', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give the outer-shell configuration of gallium:', 'No official key.', 'EMD1 2021-2022 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4s² 3d⁴', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3s² 3p⁴', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4s² 4p¹', 1),
  ((SELECT MAX(id) FROM questions), 'D', '4s² 4p⁵', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give the outer-shell configuration of vanadium:', 'No official key.', 'EMD1 2021-2022 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2s² 2p⁵', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3s² 3p³', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4s² 4p⁶', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4s² 3d³', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Molybdenum (Mo) belongs to the chromium family Cr (Z = 24) and to the fifth period. Give its atomic number:', 'No official key.', 'EMD1 2021-2022 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '32', 0),
  ((SELECT MAX(id) FROM questions), 'B', '42', 1),
  ((SELECT MAX(id) FROM questions), 'C', '30', 0),
  ((SELECT MAX(id) FROM questions), 'D', '40', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Molybdenum, Z = 42.) Give its electron configuration:', 'No official key — same exception as Cr (half-filled d).', 'EMD1 2021-2022 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[Kr] 4d⁵ 5s¹', 1),
  ((SELECT MAX(id) FROM questions), 'B', '[Kr] 5s² 5p⁵', 0),
  ((SELECT MAX(id) FROM questions), 'C', '[Kr] 4d³ 5s²', 0),
  ((SELECT MAX(id) FROM questions), 'D', '[Kr] 4d⁴ 5s²', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The tin atom (Sn) in its ground state has two electrons in the 5p sub-shell. Give its atomic number:', 'No official key.', 'EMD1 2021-2022 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '55', 0),
  ((SELECT MAX(id) FROM questions), 'B', '45', 0),
  ((SELECT MAX(id) FROM questions), 'C', '50', 1),
  ((SELECT MAX(id) FROM questions), 'D', '65', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Tin, Z = 50.) Does it belong to:', 'No official key.', 'EMD1 2021-2022 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The transition metals?', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The heavy metals?', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The alkali metals?', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The halogens?', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Tin is not a transition metal.) Why?', 'No official key — its d sub-shell (4d¹⁰) is complete.', 'EMD1 2021-2022 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4p is filled', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4f is filled', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4d is filled', 1),
  ((SELECT MAX(id) FROM questions), 'D', '4s is filled', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider ₁₁Na⁺, ₁₂Mg²⁺ and ₁₃Al³⁺. Which of these ions has the smallest ionic radius?', 'No official key — isoelectronic ions: Al³⁺ is the smallest.', 'EMD1 2021-2022 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'rAl³⁺ > rMg²⁺ > rNa⁺', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'rMg²⁺ > rAl³⁺ > rNa⁺', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'rNa⁺ > rAl³⁺ > rMg²⁺', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'rNa⁺ > rMg²⁺ > rAl³⁺', 1);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Why are hybridization states defined?', 'No official key.', 'EMD1 2021-2022 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hybridization explains the spatial configuration (geometry) of molecules', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Hybridization explains the number of π bonds', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Hybridization explains axial overlap', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Hybridization explains the formation of the ionic bond', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider the molecules CO₂; CH₄; C₂H₄ and C₂H₂. Give the hybridization states of the carbon atoms (in this order):', 'No official key.', 'EMD1 2021-2022 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp, sp, sp³, sp²', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'sp², sp, sp², sp³', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'sp, sp³, sp², sp', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'sp³, sp², sp, sp', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The structure of BeH₂ is known (Be, Z = 4). What type of bonds are formed?', 'No official key.', 'EMD1 2021-2022 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'σ (sigma) bonds', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'π bonds', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Dative bonds', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Dative bond (repeated)', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(BeH₂.) Give the hybridization of Be:', 'No official key.', 'EMD1 2021-2022 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp³', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'sp', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'sp²', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'sp³d', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(BeH₂.) What is the geometry of the molecule?', 'No official key.', 'EMD1 2021-2022 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Trigonal planar', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Tetrahedral', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cubic', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Linear', 1);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the normality of 0.1 M H₂SO₄:', 'No official key — diacid: N = 2 × M.', 'EMD1 2021-2022 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.2 N', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.1 N', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.01 N', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.002 N', 0);
