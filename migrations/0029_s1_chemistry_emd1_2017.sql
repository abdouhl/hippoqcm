-- Generated from data/s1-chemistry-emd1-2017.json — 40 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A particle of mass m = 3.31×10⁻³¹ kg moves at v = 0.25×10⁶ m/s. The wavelength λ (nm) associated with this particle is: (Planck''s constant h = 6.62×10⁻³⁴ J·s)', 'λ = h/(mv) = 6.62×10⁻³⁴ / (3.31×10⁻³¹ × 2.5×10⁵) = 8×10⁻⁹ m.', 'EMD1 2017-2018 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '12', 0),
  ((SELECT MAX(id) FROM questions), 'B', '10', 0),
  ((SELECT MAX(id) FROM questions), 'C', '8', 1),
  ((SELECT MAX(id) FROM questions), 'D', '7', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'To eject an electron from a metal with photoelectric threshold E₀ = 21.76×10⁻¹⁹ J, the metal is irradiated with a photon of energy E = 22×10⁻¹⁹ J. The ejected electron (m = 9.1×10⁻³¹ kg) has a speed v (m/s) of:', '½mv² = 0.24×10⁻¹⁹ J → v = √(2 × 0.24×10⁻¹⁹ / 9.1×10⁻³¹) ≈ 2.29×10⁵ m/s.', 'EMD1 2017-2018 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.29×10⁵', 1),
  ((SELECT MAX(id) FROM questions), 'B', '4×10⁵', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5×10⁵', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.2×10⁵', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Lithium occurs naturally as two isotopes ⁷Li and ⁶Li with abundances 92.5% and 7.5%. Isotope masses: ⁷Li = 7.01600, ⁶Li = 6.01512. The average mass of lithium (amu) is:', NULL, 'EMD1 2017-2018 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '6.940', 1),
  ((SELECT MAX(id) FROM questions), 'B', '7.012', 0),
  ((SELECT MAX(id) FROM questions), 'C', '7.008', 0),
  ((SELECT MAX(id) FROM questions), 'D', '7.002', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider the two boron isotopes (Z = 5) ¹⁰B and ¹²B, with real masses 10.01293 and 12.01435 amu. Proton and neutron masses: mp = 1.00727, mn = 1.00866 amu (1 amu = 931 MeV). The mass defect Δm of ¹⁰B (amu) is:', '5 × 1.00727 + 5 × 1.00866 − 10.01293 = 0.06672 amu.', 'EMD1 2017-2018 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.06672', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.05881', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.04461', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.03365', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Boron isotopes, Δm(¹⁰B) = 0.06672 amu, 1 amu = 931 MeV.) The binding energy per nucleon of ¹⁰B (MeV) is:', '0.06672 × 931 / 10 ≈ 6.21 MeV.', 'EMD1 2017-2018 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '6.09', 0),
  ((SELECT MAX(id) FROM questions), 'B', '6.21', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4.62', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3.48', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Boron isotopes: ¹²B real mass 12.01435 amu; mp = 1.00727, mn = 1.00866; 1 amu = 931 MeV.) The binding energy per nucleon of ¹²B (MeV) is:', NULL, 'EMD1 2017-2018 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.40', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5.08', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5.85', 0),
  ((SELECT MAX(id) FROM questions), 'D', '6.40', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The stability of the two isotopes ¹⁰B and ¹²B is as follows:', NULL, 'EMD1 2017-2018 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '¹²B is unstable', 0),
  ((SELECT MAX(id) FROM questions), 'B', '¹⁰B is unstable', 0),
  ((SELECT MAX(id) FROM questions), 'C', '¹⁰B is more stable', 0),
  ((SELECT MAX(id) FROM questions), 'D', '¹²B is more stable', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The radius of a hydrogen-like ion ᴢX⁺ᵏ excited to state n = 3 is r = 1.59 Å. This hydrogen-like ion is:', 'r = 0.53 × n²/Z → Z = 0.53 × 9 / 1.59 = 3.', 'EMD1 2017-2018 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '₅B⁺ᵏ', 0),
  ((SELECT MAX(id) FROM questions), 'B', '₄Be⁺ᵏ', 0),
  ((SELECT MAX(id) FROM questions), 'C', '₃Li⁺ᵏ', 1),
  ((SELECT MAX(id) FROM questions), 'D', '₂He⁺ᵏ', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen-like ion ₃Li⁺ᵏ.) The charge k of the hydrogen-like ion is:', NULL, 'EMD1 2017-2018 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen-like ion Li²⁺.) The energy of the hydrogen-like ion X in its ground state (eV) is:', 'E = −13.6 × Z² = −13.6 × 9 = −122.4 eV.', 'EMD1 2017-2018 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−122.4', 1),
  ((SELECT MAX(id) FROM questions), 'B', '−54.4', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−217.6', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−13.6', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Li²⁺, ground state −122.4 eV.) The ion in its ground state absorbs an energy of +114.75 eV, and the electron moves to a higher level n. The energy (eV) at this level n is:', NULL, 'EMD1 2017-2018 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−7.65', 1),
  ((SELECT MAX(id) FROM questions), 'B', '−30.6', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−13.6', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−4.9', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Li²⁺ excited to E = −7.65 eV.) The level n equals:', '−122.4/n² = −7.65 → n = 4.', 'EMD1 2017-2018 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4', 1),
  ((SELECT MAX(id) FROM questions), 'D', '5', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Li²⁺ in level n = 4.) The ion emits light of wavelength λ = 208.4 nm and the electron returns to a lower level m equal to:', NULL, 'EMD1 2017-2018 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3', 1),
  ((SELECT MAX(id) FROM questions), 'D', '4', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Li²⁺ transition n = 4 → m = 3.) The line obtained on the spectrum of this hydrogen-like ion belongs to the series of:', NULL, 'EMD1 2017-2018 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lyman', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Balmer', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Paschen', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Brackett', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The hydrogen-like ion X (Li²⁺) is in its ground state and is given an energy of +116.4 eV. The electron is then in state n equal to:', 'Official key: D. (−122.4 + 116.4 = −6 eV does not match an exact level, so the electron cannot be excited and remains at n = 1.)', 'EMD1 2017-2018 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1', 1);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the elements ₈O, ₃₀Zn, ₃₄Se, ₄₈Cd. The elements belonging to the same period (row) are:', NULL, 'EMD1 2017-2018 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(Cd, Zn)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '(O, Cd)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(Zn, Se)', 1),
  ((SELECT MAX(id) FROM questions), 'D', '(Se, O)', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the elements ₈O, ₃₀Zn, ₃₄Se, ₄₈Cd. The elements belonging to the same column (group) are:', NULL, 'EMD1 2017-2018 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(Zn, Cd)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '(O, Zn)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(Zn, Se)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(Se, Cd)', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the elements ₈O, ₃₀Zn, ₃₄Se, ₄₈Cd. Atomic radius from smallest to largest:', NULL, 'EMD1 2017-2018 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Zn, Cd, O, Se', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cd, Zn, O, Se', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cd, Zn, Se, O', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'O, Se, Zn, Cd', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the elements ₈O, ₃₀Zn, ₃₄Se, ₄₈Cd. Ionization energy from smallest to largest:', NULL, 'EMD1 2017-2018 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'O, Se, Zn, Cd', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cd, Zn, Se, O', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Zn, Cd, O, Se', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Cd, O, Se, Zn', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The most stable ion of oxygen is:', NULL, 'EMD1 2017-2018 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'O⁻', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'O⁺', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'O²⁻', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'O²⁺', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The most stable ion of zinc is:', NULL, 'EMD1 2017-2018 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Zn⁻', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Zn²⁻', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Zn⁺', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Zn²⁺', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The molecule formed by zinc and oxygen is:', NULL, 'EMD1 2017-2018 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ZnO₄', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'ZnO₃', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'ZnO₂', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'ZnO', 1);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The number of elements in period n = 5 that have two (2) unpaired electrons is:', NULL, 'EMD1 2017-2018 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4', 1),
  ((SELECT MAX(id) FROM questions), 'D', '5', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the elements ₆C, ₁₇Cl, ₁H, ₁₉K, ₁₁Na. The ionic bond is between the atoms:', NULL, 'EMD1 2017-2018 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'C–Cl', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'C–H', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'C–C', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'K–Cl', 1);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the elements ₆C, ₁₇Cl, ₁H, ₁₉K, ₁₁Na. The polar bond is between the atoms:', NULL, 'EMD1 2017-2018 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'K–Cl', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'C–Cl', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'C–H', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'H–H', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the elements ₆C, ₁₇Cl, ₁H, ₁₉K, ₁₁Na. The nonpolar (apolar) bond is between the atoms:', NULL, 'EMD1 2017-2018 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'H–H', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'C–Cl', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'K–Cl', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Na–Cl', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The following orbitals are ranked in increasing order of energy:', NULL, 'EMD1 2017-2018 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4f, 5p, 5d, 6s', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4f, 6s, 5p, 5d', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5p, 5d, 4f, 6s', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5p, 6s, 4f, 5d', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The four quantum numbers of the last valence electron of an element are n = 5, l = 2, m = −1, s = +1/2. The atomic number Z of this element is:', 'Official key: A (filling m = −2, −1, … with spin +½ first: 5d², Z = 72, Hf).', 'EMD1 2017-2018 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '72', 1),
  ((SELECT MAX(id) FROM questions), 'B', '70', 0),
  ((SELECT MAX(id) FROM questions), 'C', '73', 0),
  ((SELECT MAX(id) FROM questions), 'D', '71', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Element with last electron n = 5, l = 2, m = −1, s = +1/2.) This chemical element belongs to column:', NULL, 'EMD1 2017-2018 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '9', 0),
  ((SELECT MAX(id) FROM questions), 'B', '8', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A chemical element with atomic number Z = 24. The four quantum numbers of its last electron are:', NULL, 'EMD1 2017-2018 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 4, l = 2, m = +1, s = +1/2', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 3, l = 2, m = +1, s = +1/2', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 3, l = 2, m = −1, s = −1/2', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 3, l = 2, m = +1, s = −1/2', 0);

-- Q31
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A chemical element X gives the stable ion X²⁻. The principal quantum number of the last valence electron of X is n = 2, and the three other quantum numbers l, m, s are:', 'X = O (2p⁴): the 4th p electron pairs in m = −1 with s = −½.', 'EMD1 2017-2018 Q31', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'l = 1, m = −1, s = −1/2', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'l = 1, m = +1, s = −1/2', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'l = 1, m = +1, s = +1/2', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'l = 1, m = −1, s = +1/2', 0);

-- Q32
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'An element has atomic number Z = 17. The element in the same group has atomic number Z:', NULL, 'EMD1 2017-2018 Q32', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '34', 0),
  ((SELECT MAX(id) FROM questions), 'B', '52', 0),
  ((SELECT MAX(id) FROM questions), 'C', '53', 1),
  ((SELECT MAX(id) FROM questions), 'D', '56', 0);

-- Q33
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'An element X is in the same period as rubidium ₃₇Rb and the same column as phosphorus ₁₅P. The atomic number Z of X is:', NULL, 'EMD1 2017-2018 Q33', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '50', 0),
  ((SELECT MAX(id) FROM questions), 'B', '51', 1),
  ((SELECT MAX(id) FROM questions), 'C', '52', 0),
  ((SELECT MAX(id) FROM questions), 'D', '53', 0);

-- Q34
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The valence shell of palladium ₄₆Pd is:', 'Official key: B (theoretical configuration; the real configuration of Pd is 4d¹⁰).', 'EMD1 2017-2018 Q34', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4d⁸', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5s² 4d⁸', 1),
  ((SELECT MAX(id) FROM questions), 'C', '5s²', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5s² 4d⁶ 5p²', 0);

-- Q35
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider the compound in the figure (allene H₂C=C=CH₂). The hybridization of carbon C1 is:', NULL, 'EMD1 2017-2018 Q35', 's1/chemistry-2017-q35.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'sp²', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'sp³', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'dsp²', 0);

-- Q36
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Allene H₂C=C=CH₂, figure.) The hybridization of carbon C2 is:', NULL, 'EMD1 2017-2018 Q36', 's1/chemistry-2017-q35.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'sp²', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'sp³', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'dsp²', 0);

-- Q37
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The number of configurational isomers of the compound in the figure is:', 'The internal C=C carries two identical CH₃ groups at one end, so no Z/E isomerism; no stereocenter.', 'EMD1 2017-2018 Q37', 's1/chemistry-2017-q37.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1', 1);

-- Q38
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Threonine is an essential amino acid (figure). The configuration of threonine is:', NULL, 'EMD1 2017-2018 Q38', 's1/chemistry-2017-q38.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(2S, 3R)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '(2S, 3S)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(2R, 3R)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(2R, 3S)', 0);

-- Q39
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Threonine, figure.) The number of asymmetric carbons is:', NULL, 'EMD1 2017-2018 Q39', 's1/chemistry-2017-q38.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2', 1),
  ((SELECT MAX(id) FROM questions), 'C', '3', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4', 0);

-- Q40
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Threonine, figure.) The number of stereoisomers of threonine is:', '2 stereocenters → 2² = 4.', 'EMD1 2017-2018 Q40', 's1/chemistry-2017-q38.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4', 1);
