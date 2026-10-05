-- Generated from data/s1-chemistry-emd1-2021.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Determine the configuration of the atoms, in order: a) P (15); b) Sc (21); c) Cr (24); d) Ni (28). Which proposed configuration is correct?', 'No official answer key for this exam — answers worked out. Cr is the half-filled-d exception (4s¹ 3d⁵).', 'EMD1 2020-2021 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P: 1s² 2s² 2p⁶ 3s¹ 3p⁴', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Sc: 1s² 2s² 2p⁶ 3s² 3p⁶ 3d³', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cr: 1s² 2s² 2p⁶ 3s² 3p⁶ 4s¹ 3d⁵', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ni: 1s² 2s² 2p⁶ 3s² 3p⁶ 4s¹ 3d⁹', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Determine the configuration of the ions, in order: a) Ni²⁺ (28); b) Fe²⁺ (26); c) Fe³⁺ (26); d) Co³⁺ (27). Which proposed configuration is correct?', 'No official key — transition metals lose their 4s electrons first.', 'EMD1 2020-2021 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ni²⁺: 1s² 2s² 2p⁶ 3s² 3p⁶ 3d⁸ 4s⁰', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Fe²⁺: 1s² 2s² 2p⁶ 3s² 3p⁶ 4s² 3d⁴', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Fe³⁺: 1s² 2s² 2p⁶ 3s² 3p⁶ 4s² 3d³', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Co³⁺: 1s² 2s² 2p⁶ 3s² 3p⁶ 4s² 3d⁴', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Define ionization energy:', 'No official key.', 'EMD1 2020-2021 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The energy needed to excite an electron', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The energy involved in removing an electron', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The energy of an orbit', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The kinetic energy of the electron', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The ionization energy of helium is 2370 kJ/mol. Why is it so high?', 'No official key — its electrons are in the shell closest to the nucleus.', 'EMD1 2020-2021 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Because it is a noble gas', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Because it has only two electrons', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Because it is a hydrogen-like ion', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Because its electrons belong to n = 1', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the wavelength of the radiation able to ionize the helium atom (IE = 2370 kJ/mol). h = 6.62×10⁻³⁴ J·s, c = 3×10⁸ m/s.', 'No official key — E = 2.37×10⁶/6.022×10²³ = 3.94×10⁻¹⁸ J; λ = hc/E ≈ 5.04×10⁻⁸ m.', 'EMD1 2020-2021 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'λ = 5.04×10⁻⁸ m', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'λ = 5.40×10⁻⁸ m', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'λ = 4.99×10⁻⁸ m', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'λ = 5.75×10⁻⁸ m', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider an electron in state 3s¹. What are the four quantum numbers characterizing it?', 'No official key.', 'EMD1 2020-2021 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(3, 1, 0, +1/2)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '(3, 0, 0, +1/2)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '(3, 0, 0, −1/2)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(3, 0, −1, +1/2)', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Atomic radii (Å): Be 0.9; Mg 1.36; Ca 1.74; Sr 1.91; Ba 1.98. These elements belong to the second column of the periodic table. In which direction does the ionization energy vary?', 'No official key — the larger the atom, the lower its ionization energy.', 'EMD1 2020-2021 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Be < Mg < Ca < Sr < Ba', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Mg < Be < Sr < Ca < Ba', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Ba < Sr < Ca < Mg < Be', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Sr < Ca < Mg < Ba < Be', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Atomic radii (Å): Na 1.54; Mg 1.36; Al 1.18; Si 1.11; P 1.06; S 1.02; Cl 0.99. These elements belong to the third period. In which direction does the ionization energy vary?', 'No official key — general trend across a period.', 'EMD1 2020-2021 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cl < S < P < Si < Al < Mg < Na', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Si < P < S < Cl < Al < Mg < Na', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Na < Mg < S < Cl < Si < P < Al', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Na < Mg < Al < Si < P < S < Cl', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Among the elements of the two previous questions (Be, Mg, Ca, Sr, Ba; Na → Cl), which is the most electropositive?', 'No official key.', 'EMD1 2020-2021 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ba', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Al', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Na', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Among the elements of the two previous questions (Be, Mg, Ca, Sr, Ba; Na → Cl), which is the most electronegative?', 'No official key.', 'EMD1 2020-2021 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Si', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cl', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'S', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Sr', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank in order of increasing radius: Mg²⁺ (12); Ar (18); Br (35); Ca²⁺ (20).', 'No official key.', 'EMD1 2020-2021 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'R Mg²⁺ < R Ca²⁺ < R Br < R Ar', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'R Mg²⁺ < R Br < R Ca²⁺ < R Ar', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'R Mg²⁺ < R Ca²⁺ < R Ar < R Br', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'R Ca²⁺ < R Ar < R Mg²⁺ < R Br', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank in order of increasing electronegativity: H (1); F (9); Al (13); O (8).', 'No official key (Pauling: Al 1.6, H 2.2, O 3.4, F 4.0).', 'EMD1 2020-2021 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'O < F < Al < H', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'O < Al < F < H', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'O < Al < H < F', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Al < H < O < F', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give, in order, the hybridization state of the carbon atom in: CO₂; CH₄; H₂CO; HCONH₂.', 'No official key.', 'EMD1 2020-2021 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp; sp³; sp²; sp²', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'sp; sp²; sp²; sp³', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'sp²; sp²; sp³; sp', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'sp³; sp; sp²; sp²', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Phosphorus P (15) in its ground state has 5 electrons in its outer shell. Which orbitals take part in forming PCl₅?', 'No official key — sp³d hybridization.', 'EMD1 2020-2021 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 's; p', 0),
  ((SELECT MAX(id) FROM questions), 'B', 's; p; d', 1),
  ((SELECT MAX(id) FROM questions), 'C', 's; p; d; f', 0),
  ((SELECT MAX(id) FROM questions), 'D', 's', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give the molecular category according to Gillespie''s (VSEPR) theory for the following molecules, in order: HCN; BF₃; SO₂; H₂O.', 'No official key.', 'EMD1 2020-2021 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'AX₂E₂; AX₂E; AX₃; AX₂', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'AX₂E₂; AX₃; AX₂; AX₂E', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'AX₂; AX₃; AX₂E; AX₂E₂', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'AX₃; AX₂; AX₂E; AX₂E₂', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The UV emission spectrum of the hydrogen atom is characterized by transitions from levels L, M, N, O to level K with wavelengths λ₁ = 1215.7 Å; λ₂ = 1025.6 Å; λ₃ = 972.60 Å; λ₄ = 949.90 Å.
Calculate ΔE for the transition L → K:', 'No official key — ΔE (eV) = 12 398 / λ(Å).', 'EMD1 2020-2021 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10.20 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '13.09 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '9.99 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '9.09 eV', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen UV lines: λ₂ = 1025.6 Å.) Calculate ΔE for the transition M → K:', 'No official key.', 'EMD1 2020-2021 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '11.09 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '12.09 eV', 1),
  ((SELECT MAX(id) FROM questions), 'C', '11.90 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '10.54 eV', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen UV lines: λ₃ = 972.60 Å.) Calculate ΔE for the transition N → K:', 'No official key.', 'EMD1 2020-2021 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10.22 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '11.05 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '12.75 eV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '11.89 eV', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen UV lines: λ₄ = 949.90 Å.) Calculate ΔE for the transition O → K:', 'No official key.', 'EMD1 2020-2021 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '12.65 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '11.21 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '10.43 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '13.05 eV', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Deduce the energies of the first 5 levels of the hydrogen-like ion Li²⁺ (Z = 3). E₀ (first level, n = 1):', 'No official key — Eₙ = −13.6 × 9 / n².', 'EMD1 2020-2021 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−122.4 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '−121.00 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−111.34 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−110.67 eV', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Li²⁺ levels.) E₁ (second level, n = 2):', 'No official key.', 'EMD1 2020-2021 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−29.54 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−30.6 eV', 1),
  ((SELECT MAX(id) FROM questions), 'C', '−32.56 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−33.76 eV', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Li²⁺ levels.) E₂ (third level, n = 3):', 'No official key.', 'EMD1 2020-2021 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−12.54 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−11.43 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−13.6 eV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '−10.56 eV', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Li²⁺ levels.) E₃ (fourth level, n = 4):', 'No official key.', 'EMD1 2020-2021 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−6.87 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−6.09 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−5.09 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−7.65 eV', 1);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Li²⁺ levels.) E₄ (fifth level, n = 5):', 'No official key.', 'EMD1 2020-2021 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−4.90 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '−2.10 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−3.89 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−3.09 eV', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the radius of the first Bohr orbit for He⁺? (Bohr radius = 0.53 Å)', 'No official key — r = 0.53 × n²/Z = 0.53/2.', 'EMD1 2020-2021 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.065 Å', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.265 Å', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.321 Å', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.431 Å', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the radius of the second orbit for Li²⁺? (Bohr radius = 0.53 Å)', 'No official key — 0.53 × 4/3 ≈ 0.706 Å.', 'EMD1 2020-2021 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.101 Å', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.234 Å', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.706 Å', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.634 Å', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'µexp (HCl) = 1.08 D and the H–Cl bond length is 0.127 nm. Calculate the ionic percentage of this bond. (e·Å = 4.8 D)', 'No official key — µ(ionic) = 4.8 × 1.27 = 6.10 D; 1.08/6.10 ≈ 17.7%.', 'EMD1 2020-2021 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '12.34%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '16.67%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '15.78%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '17.7%', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The BF₃ molecule:', 'No official key — trigonal planar AX₃, dipoles cancel.', 'EMD1 2020-2021 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is a nonpolar molecule', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Is linear', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is a polar molecule', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Has an AX₂ structure', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What do the 4 quantum numbers define?', 'No official key.', 'EMD1 2020-2021 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The neutron', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The electron', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The atom', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The orbital', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the number of electrons defined by a set of values n, l, m?', 'No official key — n, l, m define one orbital, which holds 2 electrons. (Option D is illegible on the scan.)', 'EMD1 2020-2021 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '18', 0),
  ((SELECT MAX(id) FROM questions), 'B', '32', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2', 1),
  ((SELECT MAX(id) FROM questions), 'D', '6', 0);
