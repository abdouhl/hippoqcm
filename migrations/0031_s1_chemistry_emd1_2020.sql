-- Generated from data/s1-chemistry-emd1-2020.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Energy levels of the sodium atom are shown in the figure ("niveau" = level). Data: 1 eV = 1.60×10⁻¹⁹ J; h = 6.63×10⁻³⁴ J·s; c = 3.00×10⁸ m/s.
What is the wavelength of the radiation emitted by the (sodium) lamp for a transition between the first two levels (n = 1 and n = 2)?', 'ΔE = 2.11 eV → λ = hc/ΔE ≈ 589 nm.', 'EMD1 2019-2020 Q1', 's1/chemistry-2020-sodium-levels.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.89×10⁻⁷ m', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1.13×10⁻⁶ m', 0),
  ((SELECT MAX(id) FROM questions), 'C', '407 nm', 0),
  ((SELECT MAX(id) FROM questions), 'D', '9.43×10⁻²⁶ m', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Determine the ionization energy of Li²⁺:', NULL, 'EMD1 2019-2020 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '13.6 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '122.4 eV', 1),
  ((SELECT MAX(id) FROM questions), 'C', '54.4 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−122.4 eV', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which statement is correct?', NULL, 'EMD1 2019-2020 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'If l = 1, the electron is in a d sub-shell', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'If n = 4, the electron is in the O shell', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'For a d electron, m can equal 3', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'If l = 2, the corresponding sub-shell can hold more than 6 electrons', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The nucleus of the lithium atom consists of 4 neutrons and 3 protons. Calculate the theoretical mass of this nucleus in amu. (mp = 1.00727 amu; mn = 1.00866 amu)', NULL, 'EMD1 2019-2020 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7.05645 amu', 1),
  ((SELECT MAX(id) FROM questions), 'B', '4.007 amu', 0),
  ((SELECT MAX(id) FROM questions), 'C', '56.34 amu', 0),
  ((SELECT MAX(id) FROM questions), 'D', '12.02 amu', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Lithium-7 nucleus, theoretical mass 7.05645 amu.) Calculate the mass defect Δm in kg. (N = 6.022×10²³)', NULL, 'EMD1 2019-2020 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7.712×10⁻²⁷ kg', 0),
  ((SELECT MAX(id) FROM questions), 'B', '23.12×10⁻³⁰ kg', 0),
  ((SELECT MAX(id) FROM questions), 'C', '6.715×10⁻²⁹ kg', 1),
  ((SELECT MAX(id) FROM questions), 'D', '5.15×10⁻²⁹ kg', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Lithium-7 nucleus, Δm = 6.715×10⁻²⁹ kg.) Calculate the binding (cohesion) energy of this nucleus in J. (c = 3×10⁸ m/s)', NULL, 'EMD1 2019-2020 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '6.045×10⁻¹² J', 1),
  ((SELECT MAX(id) FROM questions), 'B', '6.234×10⁻¹⁰ J', 0),
  ((SELECT MAX(id) FROM questions), 'C', '6.03×10⁻¹⁰ J', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5.009×10⁻¹² J', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Lithium-7 nucleus, E = 6.045×10⁻¹² J.) And in MeV:', NULL, 'EMD1 2019-2020 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '35.12 MeV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '37.8 MeV', 1),
  ((SELECT MAX(id) FROM questions), 'C', '38.32 MeV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '37.01 MeV', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Natural nitrogen consists of two isotopes ¹⁴N and ¹⁵N. The exact mass of natural nitrogen is 14.01 g/mol. Find the relative abundance of the two isotopes. (M ¹⁴N = 14.0031 g/mol and M ¹⁵N = 15.0001 g/mol)', NULL, 'EMD1 2019-2020 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(95.13%, 0.50%)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '(99.307%, 0.692%)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '(70.45%, 30.98%)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(50.01%, 49.99%)', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'In the Balmer series, the hydrogen emission spectrum shows a line at 4800 Å. Which transition produced it (initial level n)?', '1/λ = R_H(1/4 − 1/n²) → n ≈ 4 (4 → 2, ≈ 486 nm).', 'EMD1 2019-2020 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 0),
  ((SELECT MAX(id) FROM questions), 'B', '12', 0),
  ((SELECT MAX(id) FROM questions), 'C', '20', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A hydrogen atom initially in its ground state absorbs 10.2 eV. On which level is the electron?', NULL, 'EMD1 2019-2020 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 1),
  ((SELECT MAX(id) FROM questions), 'B', '4', 0),
  ((SELECT MAX(id) FROM questions), 'C', '6', 0),
  ((SELECT MAX(id) FROM questions), 'D', '∞', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Molybdenum (Mo) belongs to the chromium family Cr (Z = 24) and to the fifth period. Give its atomic number.', NULL, 'EMD1 2019-2020 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Z = 40', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Z = 24', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Z = 42', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Z = 45', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider ₁₁Na⁺, ₁₂Mg²⁺ and ₁₃Al³⁺. Which of these ions has the smallest ionic radius?', 'Isoelectronic ions: the higher Z, the smaller the radius, so Al³⁺ is smallest.', 'EMD1 2019-2020 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'rNa⁺ > rMg²⁺ > rAl³⁺', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'rAl³⁺ > rMg²⁺ > rNa⁺', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'rMg²⁺ > rAl³⁺ > rNa⁺', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'rAl³⁺ > rNa⁺ > rMg²⁺', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'How many electrons can the third shell hold at most?', NULL, 'EMD1 2019-2020 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '16', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '17', 0),
  ((SELECT MAX(id) FROM questions), 'D', '18', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'How many elements does the third period of the periodic table contain?', NULL, 'EMD1 2019-2020 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 0),
  ((SELECT MAX(id) FROM questions), 'B', '12', 0),
  ((SELECT MAX(id) FROM questions), 'C', '8', 1),
  ((SELECT MAX(id) FROM questions), 'D', '6', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'For which value of Z (number of protons) will the third shell be completely filled?', 'Cu (Z = 29): [Ar] 3d¹⁰ 4s¹ — 3s² 3p⁶ 3d¹⁰ complete.', 'EMD1 2019-2020 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '18', 0),
  ((SELECT MAX(id) FROM questions), 'B', '28', 0),
  ((SELECT MAX(id) FROM questions), 'C', '29', 1),
  ((SELECT MAX(id) FROM questions), 'D', '20', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '₁₁Na; ₁₉K; ₃₇Rb. Rank these elements by increasing atomic radius r:', NULL, 'EMD1 2019-2020 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'rK < rNa < rRb', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'rNa < rK < rRb', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'rRb < rNa < rK', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'rRb < rK < rNa', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Electron configurations proposed for the nickel atom (Z = 28). Which one does NOT respect the Pauli principle?', 'A p sub-shell holds at most 6 electrons (3p⁸ is impossible).', 'EMD1 2019-2020 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1s² 2s² 2p⁶ 3s² 3p⁶ 4s² 3d¹⁰ 4s⁰', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1s² 2s² 2p⁶ 3s² 3p⁸ 3d⁶ 4s²', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1s² 2s² 2p⁶ 3s² 3p⁶ 3d⁸ 4s²', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1s² 2s² 2p⁶ 3s² 3p⁶ 3d⁶ 4s² 4p²', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Among the following sets {n; l; m; s}, which can describe an electron in an atom?', NULL, 'EMD1 2019-2020 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '{2; 2; 1; +1/2}', 0),
  ((SELECT MAX(id) FROM questions), 'B', '{2; 2; −1; +1/2}', 0),
  ((SELECT MAX(id) FROM questions), 'C', '{4; 0; −1; +1/2}', 0),
  ((SELECT MAX(id) FROM questions), 'D', '{3; 1; 0; −1/2}', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'In an atom, what is the maximum number of electrons that can have the following quantum numbers? Which case gives the correct description of 25 electrons (as in the official key)?', 'n = 4 → 32; n = 5, m = +1 → 8; n = 5, s = +½ → 25; n = 2, l = 1 → 6. Official key: C.', 'EMD1 2019-2020 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 4', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 5 and m = +1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 5 and s = +½', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 2 and l = 1', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What can be said about the hybridization state of the central atom of: CS₂ (linear molecule)?', NULL, 'EMD1 2019-2020 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp³', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'sp', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'sp²', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'None of these', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Hybridization of the central atom of: H₂CO or Cl₂CO, and B(OH)₃ (planar molecules):', NULL, 'EMD1 2019-2020 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'sp²', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'sp³', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'None of these', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Hybridization of the central atom of: CH₃–CCl₃ and CH₃–CH₂–CH₃ (tetrahedral molecules):', NULL, 'EMD1 2019-2020 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp³', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'sp²', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'sp', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'None of these', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '12 g of KOH are dissolved in 250 mL of water (MK = 39 g/mol, MO = 16 g/mol). Calculate the number of moles of KOH dissolved.', NULL, 'EMD1 2019-2020 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.21 mol', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.30 mol', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.09 mol', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.09 mol', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(12 g KOH in 250 mL water; water density 1 kg/L.) Calculate the molality.', NULL, 'EMD1 2019-2020 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.79 mol/kg', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.84 mol/kg', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.80 mol/kg', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.94 mol/kg', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(12 g KOH in 250 mL water.) Calculate the molarity.', NULL, 'EMD1 2019-2020 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.09 mol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.54 mol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.84 mol/L', 1),
  ((SELECT MAX(id) FROM questions), 'D', '1.09 mol/L', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(12 g KOH in 250 mL water.) Calculate the normality of KOH.', NULL, 'EMD1 2019-2020 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.84 N', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.87 N', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.67 N', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.50 N', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The distance between the two atoms of the HCl molecule in the gas phase is 126 pm. The experimental dipole moment is 1.08 D. Calculate the ionic character of the bond.', 'µ(ionic) = e·d = 1.6×10⁻¹⁹ × 1.26×10⁻¹⁰ / 3.33×10⁻³⁰ ≈ 6.05 D; 1.08/6.05 ≈ 18%.', 'EMD1 2019-2020 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '100%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '82%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '18%', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0%', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(HCl, ionic character 18%.) Is it:', NULL, 'EMD1 2019-2020 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A pure covalent bond', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A weakly polar covalent bond', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A strongly polar covalent bond', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'An ionic bond', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Using the VSEPR method, analyze each carbon of the following molecule (in order) to determine its geometry: C₆H₅CH₂COCN (as printed: C6H6CH2COCN)', NULL, 'EMD1 2019-2020 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Planar; tetrahedral; planar; linear', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Linear; planar; planar; tetrahedral', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Planar; planar; tetrahedral; linear', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Tetrahedral; planar; tetrahedral; planar', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Deduce the non-planar molecule:', NULL, 'EMD1 2019-2020 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'C₆H₅CH=CH₂', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'H₂CO', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'CH₃CHO', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'HCN', 0);
