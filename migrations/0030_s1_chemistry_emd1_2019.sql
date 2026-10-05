-- Generated from data/s1-chemistry-emd1-2019.json — 23 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'In the hydrogen atom, the energy of the electron in its ground state is −13.6 eV (R_H = 1.097×10⁷ m⁻¹, h = 6.62×10⁻³⁴ J·s, c = 3×10⁸ m/s).
What is the smallest amount of energy (eV) it must absorb to go to the 1st excited state?', NULL, 'EMD1 2018-2019 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '22.10 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3.4 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.5 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '10.2 eV', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen atom, E₁ = −13.6 eV.) What is the smallest amount of energy (eV) it must absorb to go from the first excited state to the ionized state?', NULL, 'EMD1 2018-2019 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.4 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '12.48 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '21.09 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '8.5 eV', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen atom.) What is the wavelength of the emission line corresponding to the return from the ionized state to the 1st excited state?', '1/λ = R_H/4 → λ ≈ 365 nm (closest option 367.8 nm).', 'EMD1 2018-2019 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '203.4 nm', 0),
  ((SELECT MAX(id) FROM questions), 'B', '367.8 nm', 1),
  ((SELECT MAX(id) FROM questions), 'C', '98.12 nm', 0),
  ((SELECT MAX(id) FROM questions), 'D', '400 nm', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen atom.) What is the wavelength of the emission line corresponding to the return from the first excited state to the ground state?', NULL, 'EMD1 2018-2019 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '109.7 nm', 0),
  ((SELECT MAX(id) FROM questions), 'B', '100.4 nm', 0),
  ((SELECT MAX(id) FROM questions), 'C', '122.6 nm', 1),
  ((SELECT MAX(id) FROM questions), 'D', '120.11 nm', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the energy required to ionize the ion He⁺ from its ground state:', NULL, 'EMD1 2018-2019 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '54.4 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '50.12 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '34.12 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '13.6 eV', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the energy required to ionize the ion Li²⁺ from its ground state:', NULL, 'EMD1 2018-2019 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '112.3 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '122.4 eV', 1),
  ((SELECT MAX(id) FROM questions), 'C', '105.34 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '221.23 eV', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the energy required to ionize the ion Be³⁺ from its ground state:', NULL, 'EMD1 2018-2019 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '271.06 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '207.12 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '217.6 eV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '220.4 eV', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the wavelength of the limit line of the Balmer series for He⁺?', '1/λ = R_H × Z²/4 = R_H → λ ≈ 91.2 nm.', 'EMD1 2018-2019 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '120.32 nm', 0),
  ((SELECT MAX(id) FROM questions), 'B', '91.3 nm', 1),
  ((SELECT MAX(id) FROM questions), 'C', '109.09 nm', 0),
  ((SELECT MAX(id) FROM questions), 'D', '95.43 nm', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank in increasing order of energy the electrons of the same atom defined by the following quantum numbers, identifying the sub-level they belong to:
1) n = 3; l = 1; m = 0; s = +1/2
2) n = 4; l = 0; m = 0; s = −1/2
3) n = 3; l = 1; m = 0; s = −1/2
4) n = 3; l = 0; m = 0; s = +1/2
5) n = 3; l = 1; m = −1; s = +1/2', NULL, 'EMD1 2018-2019 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4s < 4d < 4p', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3s < 3d < 4s', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4f < 4s < 3d', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3s < 3p < 4s', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which of the following samples contains the most iron? (M Fe = 56 g/mol, M S = 32 g/mol, Avogadro N = 6.023×10²³)', 'a) 0.4 mol Fe; b) 0.357 mol; c) 0.3 mol; d) 0.415 mol.', 'EMD1 2018-2019 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.2 moles of Fe₂(SO₄)₃', 0),
  ((SELECT MAX(id) FROM questions), 'B', '20 g of iron', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.3 gram-atom of iron', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.5×10²³ atoms of iron', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The nucleus of the nitrogen atom N (Z = 7) consists of 7 neutrons and 7 protons. Its real mass is 14.007515 amu. Calculate the theoretical mass of this nucleus (amu). (mp = 1.007277 amu, mn = 1.008665 amu)', NULL, 'EMD1 2018-2019 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '14.111594 amu', 1),
  ((SELECT MAX(id) FROM questions), 'B', '13.890326 amu', 0),
  ((SELECT MAX(id) FROM questions), 'C', '14.003543 amu', 0),
  ((SELECT MAX(id) FROM questions), 'D', '13.099001 amu', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Nitrogen nucleus: theoretical mass 14.111594 amu, real mass 14.007515 amu.) Calculate the binding (cohesion) energy of this nucleus in J. (N = 6.023×10²³, c = 3×10⁸ m/s)', 'Δm = 0.104079 amu = 1.728×10⁻²⁸ kg; E = Δm·c² ≈ 1.555×10⁻¹¹ J.', 'EMD1 2018-2019 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10.312×10⁻¹⁰ J', 0),
  ((SELECT MAX(id) FROM questions), 'B', '15.552×10⁻¹² J', 1),
  ((SELECT MAX(id) FROM questions), 'C', '15×10⁻¹¹ J', 0),
  ((SELECT MAX(id) FROM questions), 'D', '12.43×10⁻¹¹ J', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the atomic mass of natural nitrogen, given ¹⁴N has a mass of 14.007515 amu and an isotopic abundance of 99.635%, and ¹⁵N has a mass of 15.004863 amu and an abundance of 0.365%.', NULL, 'EMD1 2018-2019 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '14.99 g/mol', 0),
  ((SELECT MAX(id) FROM questions), 'B', '13.99 g/mol', 0),
  ((SELECT MAX(id) FROM questions), 'C', '14.01 g/mol', 1),
  ((SELECT MAX(id) FROM questions), 'D', '14.10 g/mol', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Natural silicon Si (Z = 14) is a mixture of three stable isotopes: ²⁸Si, ²⁹Si and ³⁰Si. The most abundant isotope has a natural abundance of 92.23%. The atomic molar mass of natural silicon is 28.085 g/mol.
Which is the most abundant silicon isotope?', NULL, 'EMD1 2018-2019 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Si-29', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Si-30', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'No answer', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Si-28', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Natural silicon: ²⁸Si 92.23%, M = 28.085 g/mol.) Calculate the natural abundances x (²⁹Si) and y (³⁰Si) of the two other isotopes.', NULL, 'EMD1 2018-2019 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'x = 7.04% and y = 0.73%', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'x = 6.03% and y = 0.80%', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'x = 6.99% and y = 0.79%', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'x = 6.80% and y = 0.84%', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank these chemical species in order of stability: H₂, H₂⁺, He₂⁺, He₂.', 'Bond orders: H₂ = 1, H₂⁺ = ½, He₂⁺ = ½ (more antibonding electrons), He₂ = 0 (does not exist).', 'EMD1 2018-2019 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'H₂⁺ > He₂⁺ > H₂', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'He₂⁺ > H₂⁺ > H₂', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'He₂⁺ > H₂ > H₂⁺', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'H₂ > H₂⁺ > He₂⁺', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider the molecules BF₃; CO₂; CH₄; C₂H₄ and C₂H₂. Give the hybridization states of the carbon and boron atoms (in the order of these molecules). (B: 5, F: 9, C: 12, H: 1)', NULL, 'EMD1 2018-2019 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp², sp, sp³, sp², sp', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'sp, sp², sp³, sp², sp', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'sp, sp, sp, sp², sp²', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'sp², sp², sp², sp, sp', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank the following bonds in order of increasing polarization: Cl–Cl, H–F, C–H, H–N.
Electronegativities: H 2.2; C 2.5; N 3.0; Cl 3.2; F 4.0', NULL, 'EMD1 2018-2019 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cl–Cl, H–F, C–H, H–N', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cl–Cl, C–H, H–N, H–F', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'H–F, H–N, Cl–Cl, C–H', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'C–H, H–N, Cl–Cl, H–F', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'To prepare 250 mL of 0.200 mol/L HCl solution by dilution, what volume of concentrated 12.0 mol/L HCl must be taken?', NULL, 'EMD1 2018-2019 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'V = 4.17 mL', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'V = 16.7 mL', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'V = 250 mL', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'V = 4 mL', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What volume of concentrated 96.0% H₂SO₄ (density 1.84 g/mL) must be taken to prepare one liter of 1.00 mol/L H₂SO₄ by dilution?', '98 g needed: 98 / (0.96 × 1.84) ≈ 55.5 mL.', 'EMD1 2018-2019 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'V = 53.3 mL', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'V = 55.5 mL', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'V = 102 mL', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'V = 50.03 mL', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What are all the possible values of the azimuthal quantum number l when the principal quantum number n = 5?', NULL, 'EMD1 2018-2019 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0, 1, 2, 3, 4, 5', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1, 2, 3, 4', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0, 1, 2, 3', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0, 1, 2, 3, 4', 1);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A hydrogen atom in its ground state absorbs a photon of wavelength λ1 then emits a photon of wavelength λ2. On which level is the electron after this emission? λ1 = 97.28 nm and λ2 = 1879 nm.', '97.28 nm excites 1 → 4; 1879 nm corresponds to 4 → 3, so the electron ends on n = 3.', 'EMD1 2018-2019 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '∞ → 1', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4 → 3', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4 → 2', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3 → 4', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the angles: in NH₃ one angle equals 107°; in H₂O the angle equals 105°. Explain this difference and give the (VSEPR) formulas of these molecules (NH₃, H₂O).', NULL, 'EMD1 2018-2019 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Presence of unpaired electrons; AX4; AX2', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Presence of non-bonding pairs (lone pairs); AX3E1, AX2E2', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Formation of a π bond; AX1E1, AE4', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Complete p sub-shell; AX3, AX2E1', 0);
