-- Generated from data/s1-chemistry-emd1-2026.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Natural copper consists of two stable isotopes ⁶³₂₉Cu and ⁶⁵₂₉Cu with respective atomic masses 62.929 uma and 64.927 uma, given that the average atomic mass is equal to 63.540 uma. Calculate the abundances of the two isotopes.', '62.929x + 64.927(1 − x) = 63.540 ⇒ x(⁶³Cu) ≈ 69.42%, ⁶⁵Cu ≈ 30.58%.', 'EMD1 2025-2026 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '30.58% ; 69.42%', 1),
  ((SELECT MAX(id) FROM questions), 'B', '20.08% ; 79.92%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '50.58% ; 49.42%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '20.38% ; 79.62%', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the mass defect Δm for the isotope ⁶³₂₉Cu (M = 62.929 uma) in uma. (mp = 1.00718 uma; mn = 1.00850 uma)', 'Δm = 29 × 1.00718 + 34 × 1.00850 − 62.929 ≈ 0.57 uma.', 'EMD1 2025-2026 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.56 uma', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2.61 uma', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.90 uma', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.28 uma', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The mass of 1 uma in kg is:', NULL, 'EMD1 2025-2026 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.66054 × 10⁻²³ kg', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.66054 × 10⁻²⁷ kg', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1.00054 × 10⁻²⁷ kg', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.66054 × 10⁻²⁷ kg', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The electron of a hydrogen atom initially in its ground state absorbs an amount of energy of 12.09 eV. To which energy level n would it transition?', '13.6(1 − 1/n²) = 12.09 ⇒ 1/n² ≈ 0.111 ⇒ n = 3.', 'EMD1 2025-2026 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 5', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 2', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 1', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 3', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'This electron (hydrogen atom, now at n = 3) emits radiation with a wavelength of 657.7 nm; what energy level would it be at in this case?', '656–657 nm is the Hα line of the Balmer series (3 → 2).', 'EMD1 2025-2026 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 7', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 2', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 3', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 6', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'How many rays can be emitted when the electron returns from the n = 4 orbital to the ground state?', 'n(n − 1)/2 = 4 × 3/2 = 6.', 'EMD1 2025-2026 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '9 rays', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4 rays', 0),
  ((SELECT MAX(id) FROM questions), 'C', '6 rays', 1),
  ((SELECT MAX(id) FROM questions), 'D', '1 ray', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The electron of a hydrogenoid is in a level n = 4 with energy E = E_H = −13.6 eV. Which hydrogenoid is it?', '−13.6·Z²/16 = −13.6 ⇒ Z = 4 ⇒ Be³⁺.', 'EMD1 2025-2026 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Be³⁺', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Li²⁺', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'B⁴⁺', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'He⁺', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Define the value of Z for this hydrogenoid (electron at n = 4 with E = −13.6 eV).', NULL, 'EMD1 2025-2026 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Z = 8', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Z = 17', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Z = 4', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Z = 6', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which of these electronic structures are incorrect?
1) 1s² 2s² 2p⁶ 3s¹
2) 1s² 2s² 2p⁷ 3s²
3) 1s² 2s² 2p⁵ 3s¹
4) 1s² 2s³ 2p⁶ 2d¹⁰ 3s²
5) 1s² 2s² 2p⁶ 3s² 3p⁶ 3d¹⁰ 3f⁶', '2p⁷ (max 6), 2s³/2d (no d sublevel for n = 2) and 3f (no f for n = 3) are impossible. Structure 3 is an excited state but allowed.', 'EMD1 2025-2026 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1, 2, 3', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1, 3, 5', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3, 2, 4', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2, 5, 4', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'In the following series of values for the quantum numbers (n, l, m) of an electron, define the possible cases.
1) (2,0,0)  2) (2,1,−1)  3) (2,2,0)  4) (1,0,1)  5) (4,1,−2)  6) (3,0,0)', 'Rules: 0 ≤ l ≤ n − 1 and −l ≤ m ≤ +l.', 'EMD1 2025-2026 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1, 2, 6', 1),
  ((SELECT MAX(id) FROM questions), 'B', '3, 4, 5', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4, 5, 6', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3, 4, 1', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'An element has fewer than 20 electrons and two unpaired electrons. What are its possible Z values?', 'np² or np⁴: C (6), O (8), Si (14), S (16).', 'EMD1 2025-2026 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '₁X, ₈X, ₉X, ₁₇X', 0),
  ((SELECT MAX(id) FROM questions), 'B', '₁₆X, ₁₂X, ₆X, ₅X', 0),
  ((SELECT MAX(id) FROM questions), 'C', '₁₆X, ₈X, ₆X, ₁₄X', 1),
  ((SELECT MAX(id) FROM questions), 'D', '₁₁X, ₈X, ₇X, ₂₁X', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Given the elements F, Cl, Rb, and Rb⁻, rank these species in order of increasing atomic radius.', NULL, 'EMD1 2025-2026 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'F < Rb < Cl < Rb⁻', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'F < Cl < Rb < Rb⁻', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Rb⁻ < Cl < Rb < F', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Rb < Cl < F < Rb⁻', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank these elements (F, Cl, Rb, Rb⁻) in order of increasing ionisation energy.', NULL, 'EMD1 2025-2026 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Rb⁻ < Rb < Cl < F', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Rb < Rb⁻ < Cl < F', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Rb⁻ < Cl < Rb < F', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Rb⁻ < Rb < F < Cl', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The three molecules NH₃, H₂O, and CH₄ have an arrangement:', NULL, 'EMD1 2025-2026 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Bipyramids', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Planar triangle', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Linear', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Tetrahedral', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider a beryllium ion ₄Be³⁺. Given that r₀(H) = 0.53 Å, what are the radii corresponding to the K and L shells of this ion?', 'r = 0.53·n²/Z: K (n = 1) = 0.53/4 = 0.1325 Å; L (n = 2) = 0.53 × 4/4 = 0.53 Å.', 'EMD1 2025-2026 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.15 Å, 0.23 Å', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.1325 Å, 0.53 Å', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.25 Å, 1.53 Å', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.145 Å, 0.83 Å', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'When radiation with wavelength λ is sent onto this ion (Be³⁺), an electron moves from layer n = 1 to n = 5. Calculate the frequency of the absorbed radiation. (R_H = 1.09677576 × 10⁷ m⁻¹; c = 3.00 × 10⁸ m/s)', 'ν = R_H·c·Z²(1 − 1/25) = 1.0968×10⁷ × 3×10⁸ × 16 × 0.96 ≈ 5.06 × 10¹⁶ s⁻¹.', 'EMD1 2025-2026 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.55 × 10¹⁶ s⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5.7055 × 10¹⁷ s⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5.06 × 10¹⁶ s⁻¹', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.765 × 10¹⁰ s⁻¹', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Indicate which of the following triplets is possible.', NULL, 'EMD1 2025-2026 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 3 ; l = 2 ; m = 0', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 2 ; l = 2 ; m = −1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 3 ; l = 0 ; m = 3', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 3 ; l = −2 ; m = 0', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give the electronic structure of the valence shell of the first alkaline earth metal.', 'Beryllium (Z = 4).', 'EMD1 2025-2026 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4s²', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2s² 2p⁴', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5s¹', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2s²', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give the electronic structure of the valence shell of the halogen of the third period.', 'Chlorine (Z = 17).', 'EMD1 2025-2026 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2s² 2p³ s¹', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3s² 3p⁵', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4s² 4p³', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3s¹', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give the electronic structure of the valence shell of the ninth transition metal.', 'Sc, Ti, V, Cr, Mn, Fe, Co, Ni, Cu → copper (exception: 4s¹ 3d¹⁰).', 'EMD1 2025-2026 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4s² 3d²', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4s¹ 3d¹⁰', 1),
  ((SELECT MAX(id) FROM questions), 'C', '3s² 3p⁵', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4s¹ 3d⁵', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Knowing the electronegativity of the atoms H (2.2), Cl (3.1), K (0.8), F (4.0), predict the main character (ionic, covalent) of the bonds, in the same order, of the following molecules: K-F; K-Cl; H-Cl and H-H.', NULL, 'EMD1 2025-2026 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ionic; ionic; covalent; covalent', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Covalent; ionic; ionic; covalent', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Covalent; covalent; ionic; ionic', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ionic; covalent; covalent; ionic', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider the following molecules: CO₂; CH₄; C₂H₄ and C₂H₂. Specify the hybridisation states of the carbon atoms (in this order).', NULL, 'EMD1 2025-2026 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp³, sp, sp, sp²', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'sp, sp², sp, sp³', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'sp, sp², sp³, sp', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'sp, sp³, sp², sp', 1);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the theoretical dipole moment μthéo of HCl gas. Given that μexp = 1.07 D and the interatomic distance is 127.4 pm (printed as "nm" on the exam). (1 D = 3.33 × 10⁻³⁰ C·m; e = 1.6 × 10⁻¹⁹ C)', 'μ = e·d = 1.6×10⁻¹⁹ × 127.4×10⁻¹² ≈ 2.04×10⁻²⁹ C·m ≈ 6.11 D.', 'EMD1 2025-2026 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4.31 D', 0),
  ((SELECT MAX(id) FROM questions), 'B', '6.11 D', 1),
  ((SELECT MAX(id) FROM questions), 'C', '9.1 D', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.91 D', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Determine the ionic percentage of the H-Cl bond (μexp = 1.07 D, μthéo = 6.11 D).', '1.07 / 6.11 ≈ 17.5%.', 'EMD1 2025-2026 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '17.5%', 1),
  ((SELECT MAX(id) FROM questions), 'B', '11.09%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '7.5%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '27.9%', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'For a 50 ml solution containing 3.65 g of HCl (MW = 36.5 g/mol), calculate the molarity.', '0.1 mol / 0.05 L = 2 mol/L.', 'EMD1 2025-2026 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.005 mol/l', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.5 mol/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2 mol/l', 1),
  ((SELECT MAX(id) FROM questions), 'D', '2.5 mol/l', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'For a 50 ml solution containing 3.65 g of HCl (MW = 36.5 g/mol), calculate the normality.', NULL, 'EMD1 2025-2026 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.25 N', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.0 N', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.01 N', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.001 N', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'For a 50 ml solution containing 3.65 g of HCl (MW = 36.5 g/mol), calculate the mass concentration.', '3.65 g / 0.05 L = 73 g/L.', 'EMD1 2025-2026 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '65 g/l', 0),
  ((SELECT MAX(id) FROM questions), 'B', '27 g/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', '34 g/l', 0),
  ((SELECT MAX(id) FROM questions), 'D', '73 g/l', 1);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A sigma bond (σ) results from:', NULL, 'EMD1 2025-2026 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lateral overlap of p orbitals.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Axial (frontal) overlap of orbitals.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Electron transfer between two atoms.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The bond between two d orbitals.', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A pi (π) bond is formed by:', NULL, 'EMD1 2025-2026 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Axial overlap of s orbitals.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The first bond between two atoms.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A single carbon-carbon bond.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lateral overlap of p orbitals.', 1);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Determine the type of molecule AXₙEₘ for the following molecules and molecular ions: NO₂⁻, H₂CO, NH₃, NO₂⁺.', NULL, 'EMD1 2025-2026 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'AX₂E₁, AX₂, AX₃, AX₂E₁', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'AX₂E₁, AX₃, AX₃E₁, AX₂', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'AX₃E₁, AX₂, AX₃, AX₂E₁', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'AX₃, AX₂E₁, AX₂, AX₃E₁', 0);
