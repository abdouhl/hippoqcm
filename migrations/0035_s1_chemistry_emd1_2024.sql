-- Generated from data/s1-chemistry-emd1-2024.json — 28 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The nucleus of the nitrogen atom N (Z = 7) consists of 7 neutrons and 7 protons. Calculate the theoretical mass of this nucleus. (mp = 1.007277 amu; mn = 1.008665 amu; N = 6.023×10²³)', 'No official answer key for this exam — answers worked out. 14.111594 amu / 6.023×10²³ ≈ 2.343×10⁻²³ g.', 'EMD1 2023-2024 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7.3×10⁻²³ g', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.349×10⁻²³ g', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.043×10⁻²³ g', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.343×10⁻²³ g', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Nitrogen-14 nucleus, real mass 14.007515 amu.) Calculate Δm in amu per nucleus:', 'No official key — 14.111594 − 14.007515 = 0.104079 amu. (The decimal points are missing on the scan.)', 'EMD1 2023-2024 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.10079', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.104079', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.34409', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.45379', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Nitrogen-14 nucleus, Δm = 0.104079 amu.) Calculate Δm in kg per nucleus:', 'No official key — 0.104079 × 1.66×10⁻²⁷ kg.', 'EMD1 2023-2024 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.72802589×10⁻²⁸', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1.02589×10⁻²⁸', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.72889×10⁻²⁸', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.789', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Nitrogen-14 nucleus, Δm = 0.104079 amu.) Calculate Δm in g per mole of nuclei:', 'No official key.', 'EMD1 2023-2024 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.5409', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.43179', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.104079', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.00086', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Nitrogen-14 nucleus, Δm = 1.728×10⁻²⁸ kg.) Calculate the binding energy of this nucleus in J per nucleus:', 'No official key — E = Δm·c².', 'EMD1 2023-2024 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '19.2×10⁻¹²', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5.52×10⁻¹²', 0),
  ((SELECT MAX(id) FROM questions), 'C', '15.552×10⁻¹²', 1),
  ((SELECT MAX(id) FROM questions), 'D', '25.876×10⁻¹²', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Nitrogen-14 nucleus, E = 15.552×10⁻¹² J.) Calculate the binding energy in eV per nucleus:', 'No official key — 1.5552×10⁻¹¹ / 1.6×10⁻¹⁹ ≈ 9.72×10⁷ eV.', 'EMD1 2023-2024 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '6.02×10⁷', 0),
  ((SELECT MAX(id) FROM questions), 'B', '9.72×10⁷', 1),
  ((SELECT MAX(id) FROM questions), 'C', '90.12×10⁷', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4.342×10⁷', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the atomic mass of natural nitrogen, given ¹⁴N has a mass of 14.007515 amu and an isotopic abundance of 99.635%, and ¹⁵N has a mass of 15.004863 amu and an abundance of 0.365%.', 'No official key.', 'EMD1 2023-2024 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '14.01 g/mol', 1),
  ((SELECT MAX(id) FROM questions), 'B', '13 g/mol', 0),
  ((SELECT MAX(id) FROM questions), 'C', '34.01 g/mol', 0),
  ((SELECT MAX(id) FROM questions), 'D', '15.01 g/mol', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'For the molecules and ions N₂H₄, N₂H₂, NH₄⁺, H₂O₂: give the hybridization of the central atom (in this order).', 'No official key.', 'EMD1 2023-2024 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp²; sp; sp³; sp³', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'sp³; sp²; sp³; sp (illegible)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'sp; sp²; sp²; sp²', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'sp³; sp²; sp³; sp³', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Determine the ionic character of the F–Cl bond. Given d(F–Cl) = 1.63 Å; µ = 0.88 D; 1 Debye = 0.33×10⁻²⁹ C·m; e = 1.6×10⁻¹⁹ C.', 'No official key — µ(ionic) = 1.6×10⁻¹⁹ × 1.63×10⁻¹⁰ / 0.33×10⁻²⁹ ≈ 7.9 D; 0.88/7.9 ≈ 11%.', 'EMD1 2023-2024 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '11%', 1),
  ((SELECT MAX(id) FROM questions), 'B', '10%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '21%', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank the following electrons in the order in which they would be used if the elements were built up one by one in their ground state, by order of Z:
a. n = 3; l = 1; m = 0; s = +½
b. n = 4; l = 0; m = 0; s = −½
c. n = 3; l = 2; m = 1; s = −½
d. n = 3; l = 0; m = 0; s = +½
e. n = 3; l = 1; m = −1; s = +½', 'No official key — 3s, then 3p (two electrons with s = +½), then 4s, then 3d.', 'EMD1 2023-2024 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'd, a, e, b, c', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'd, a, b, e, c', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'a, d, e, b, c', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'd, c, e, b, a', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Among the elements F (Z = 9), Al (Z = 13), K (Z = 19), Cu (Z = 29), Br (Z = 35), which belong to the same period?', 'No official key.', 'EMD1 2023-2024 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'K, Cu and Br', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'K, Al and Br', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'K, Cu and F', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Cu and F', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Among F, Al, K, Cu, Br, which belong to the same family (group)?', 'No official key.', 'EMD1 2023-2024 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'F and Cu', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'F and Br', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Al and Br', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'K and Br', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank F, Al, K, Cu, Br by increasing atomic radius:', 'No official key — using covalent radii (F 57, Br 120, Al 121, Cu 132, K 203 pm).', 'EMD1 2023-2024 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'r(F) < r(Br) < r(Al) < r(Cu) < r(K)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'r(K) < r(Al) < r(Br) < r(Cu) < r(F)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'r(F) < r(Al) < r(Br) < r(Cu) < r(K)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'r(Br) < r(Al) < r(Cu) < r(F) < r(K)', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank F, Al, K, Cu, Br by increasing electronegativity:', 'No official key — Pauling: K 0.82, Al 1.61, Cu 1.90, Br 2.96, F 3.98.', 'EMD1 2023-2024 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'EN(K) < EN(F) < EN(Al) < EN(Br) < EN(Cu)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'EN(K) < EN(Al) < EN(Cu) < EN(Br) < EN(F)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'EN(Br) < EN(Cu) < EN(Al) < EN(K) < EN(F)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'EN(K) < EN(Cu) < EN(Al) < EN(Br) < EN(F)', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Light radiation of wavelength λ = 56.8 Å ionizes an unknown hydrogen-like ion X. Calculate the ionization energy:', 'No official key — E = 12 398 / 56.8 ≈ 218 eV.', 'EMD1 2023-2024 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '208.1 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '116.5 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '218.5 eV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '310.4 eV', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen-like ion X with ionization energy ≈ 218.5 eV.) Deduce its atomic number Z:', 'No official key — 218.5 / 13.6 ≈ 16 = Z².', 'EMD1 2023-2024 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Z = 1', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Z = 5', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Z = 2', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Z = 4', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A hydrogen atom in its ground state absorbs a photon of wavelength λ₁ = 97.28 nm, then emits a photon of wavelength λ₂ = 1879 nm. Determine the level of the electron after the absorption:', 'No official key.', 'EMD1 2023-2024 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 6', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 4', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 1', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 3', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen at n = 4 emits λ₂ = 1879 nm.) Determine the level of the electron after the emission:', 'No official key.', 'EMD1 2023-2024 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 3', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 5', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 1', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 7', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The hydrogen atom shows a spectrum containing several series of lines. Give the wavelength of the first line of the second series (Balmer):', 'No official key — 3 → 2: λ ≈ 656.5 nm.', 'EMD1 2023-2024 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '65.65×10⁻⁸ m', 1),
  ((SELECT MAX(id) FROM questions), 'B', '60.15×10⁻⁸ m', 0),
  ((SELECT MAX(id) FROM questions), 'C', '35.55×10⁻⁸ m', 0),
  ((SELECT MAX(id) FROM questions), 'D', '73.05×10⁻⁸ m', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen spectrum.) Give the wavelength of the limit line of the third series (Paschen):', 'No official key — λ = 9/R_H ≈ 820.6 nm.', 'EMD1 2023-2024 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '96.76×10⁻⁸ m', 0),
  ((SELECT MAX(id) FROM questions), 'B', '42.36×10⁻⁸ m', 0),
  ((SELECT MAX(id) FROM questions), 'C', '82.06×10⁻⁸ m', 1),
  ((SELECT MAX(id) FROM questions), 'D', '22.16×10⁻⁸ m', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen spectrum.) Determine the spectral domains where the lines of the first three series are observed:', 'No official key — Lyman UV, Balmer visible, Paschen IR.', 'EMD1 2023-2024 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Visible and infrared', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Ultraviolet and infrared', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Ultraviolet and visible', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ultraviolet, visible and infrared', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Among the following triplets, which one is possible?', 'No official key.', 'EMD1 2023-2024 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 3; l = 2; m = 0', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 2; l = 2; m = −1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 3; l = 0; m = 3', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 3; l = −2; m = 0', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which symbol characterizes an (existing) atomic orbital?', 'No official key.', 'EMD1 2023-2024 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1p', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3f', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4s', 1),
  ((SELECT MAX(id) FROM questions), 'D', '2d', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which set of quantum numbers designates an s atomic orbital?', 'No official key.', 'EMD1 2023-2024 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 3; l = 2; m = 1', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 2; l = 1; m = 0', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 1; l = 0; m = 0', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 3; l = 1; m = −1', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'We want to prepare 200 mL of a decimolar (0.1 M) KOH solution (solution A) by dissolving a mass m of this base. Calculate m. (M(KOH) = 56.1 g/mol)', 'No official key — 0.2 × 0.1 × 56.1 = 1.122 g.', 'EMD1 2023-2024 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.091 g', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.122 g', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4.730 g', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.433 g', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Solution A: 0.1 M KOH.) What volume Va of solution A must be taken to prepare 250 mL of a 10⁻² M KOH solution?', 'No official key — 250 × 0.01 / 0.1 = 25 mL.', 'EMD1 2023-2024 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '13 mL', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3 mL', 0),
  ((SELECT MAX(id) FROM questions), 'C', '43 mL', 0),
  ((SELECT MAX(id) FROM questions), 'D', '25 mL', 1);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Choose the correct answer(s):', 'No official key — Bohr''s model uses circular orbits, not orbitals.', 'EMD1 2023-2024 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'An electron is in its ground state if its total energy is minimal', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In Bohr''s model the electron is located on a single orbital', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The electron, like the photon, has a particle and wave aspect', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In quantum mechanics, it is impossible to specify the exact position of an electron', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Choose the correct answer(s):', 'No official key — ns² np⁴ are chalcogens; IE increases left to right.', 'EMD1 2023-2024 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Elements with an ns² np⁴ electron configuration are halogens', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The element defined by Z = 38 has chemical properties close to magnesium', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ionization potential decreases from left to right in the periodic table', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Sigma bonds form by axial overlap', 1);
