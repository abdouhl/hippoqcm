-- Generated from data/s1-chemistry-emd1-2025.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate, in m/s, the speed of an electron behaving as a wave of wavelength λ = 3.63 Å. Given mₑ = 9.1×10⁻³¹ kg; h = 6.62×10⁻³⁴ J·s.', 'v = h/(mλ) = 6.62×10⁻³⁴ / (9.1×10⁻³¹ × 3.63×10⁻¹⁰) ≈ 2×10⁶ m/s.', 'EMD1 2024-2025 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.8×10⁷', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2×10⁵', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2.4×10⁵', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2×10⁶', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give, for each of the following, the number of electrons having magnetic quantum number m = −1: ₄₀Zr²⁺, ₂₄Cr, ₂₈Ni⁻, ₄₈Cd.', NULL, 'EMD1 2024-2025 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Zr²⁺: 2; Cr: 1; Ni⁻: 2; Cd: 4', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Zr²⁺: 8; Cr: 6; Ni⁻: 5; Cd: 10', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Zr²⁺: 8; Cr: 5; Ni⁻: 6; Cd: 10', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Zr²⁺: 8; Cr: 6; Ni⁻: 6; Cd: 8', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'On which shell is the electron of ₄Be³⁺ after it is given an energy of 211.56 eV while in its ground state?', 'E₁ = −217.6 eV; −217.6 + 211.56 = −6.04 eV = −217.6/n² → n = 6 (shell P).', 'EMD1 2024-2025 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Shell n = 3', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Shell n = 5', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Shell n = 7', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Shell P', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which configuration violates Hund''s rule? (figure)', 'C pairs electrons in two p boxes while leaving the third empty. (D violates the Pauli principle.)', 'EMD1 2024-2025 Q4', 's1/chemistry-2025-q4.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'B', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'C', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'D', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Hydrogen is bombarded with a beam of electrons accelerated through a voltage of 12.1 V. What are the possible excitation levels for the hydrogen electron?', '12.1 eV reaches up to n = 3 (12.09 eV).', 'EMD1 2024-2025 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 2 and n = 3', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 1 and n = 3', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 2 and n = 4', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 4 and n = 5', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen excited up to n = 3.) Calculate the corresponding wavelengths (emission lines). Given h = 6.626×10⁻³⁴ J·s, 1 eV = 1.6×10⁻¹⁹ J, E₀ = −13.6 eV, R_H = 1.1×10⁷ m⁻¹.', NULL, 'EMD1 2024-2025 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'λ₁ = 101.8 nm, λ₂ = 100.7 nm, λ₃ = 356.5 nm', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'λ₁ = 121.8 nm, λ₂ = 102.7 nm, λ₃ = 657.7 nm', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'λ₁ = 231.7 nm, λ₂ = 152.2 nm, λ₃ = 609.5 nm', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'λ₁ = 329.4 nm, λ₂ = 205.7 nm, λ₃ = 138.2 nm', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the wavelength associated with a proton whose kinetic energy is Ec = 100 eV. mp = 1.67262×10⁻²⁷ kg.', 'λ = h/√(2mE) ≈ 2.86×10⁻¹² m.', 'EMD1 2024-2025 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.861×10⁻¹² m', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1.001×10⁻¹¹ m', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3.761×10⁻¹⁰ m', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.131×10⁻¹² m', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Gallium (Ga) exists in two isotopic forms; its average mass is 69.723. The most abundant isotope (60.108%) has an atomic mass of 68.925. Calculate the relative abundance (of the second isotope):', NULL, 'EMD1 2024-2025 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '30.09%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '29.79%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '24.88%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '39.89%', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Gallium: average 69.723; isotope 1: 60.108%, 68.925.) The atomic mass of the second isotope is:', NULL, 'EMD1 2024-2025 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '79.92 amu', 0),
  ((SELECT MAX(id) FROM questions), 'B', '70.92 amu', 1),
  ((SELECT MAX(id) FROM questions), 'C', '90.72 amu', 0),
  ((SELECT MAX(id) FROM questions), 'D', '20.45 amu', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the number of gallium atoms in a 6.9 mg sample?', NULL, 'EMD1 2024-2025 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.66×10¹⁹ atoms', 0),
  ((SELECT MAX(id) FROM questions), 'B', '10.92×10¹⁹ atoms', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5.96×10¹⁹ atoms', 1),
  ((SELECT MAX(id) FROM questions), 'D', '8.26×10¹⁹ atoms', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The carbon dioxide molecule CO₂ has two polarized C=O bonds. This molecule is therefore:', NULL, 'EMD1 2024-2025 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nonpolar because it has an even number of polarized bonds', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Polar because it has two polarized bonds', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Nonpolar because the polarization of each bond cancels the other''s effect', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Having weakly polarized covalent bonds', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The bent geometry of the water molecule is:', NULL, 'EMD1 2024-2025 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Due to repulsion between the O and H atoms', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Due to repulsion between the lone (non-bonding) pairs of the oxygen atom', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Due to repulsion between the covalent bonds', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Responsible for the polar character of this molecule', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '30 g of sulfuric acid (H₂SO₄) are dissolved in 1 liter of water. Calculate the normality of the solution:', '30/98 = 0.306 M × 2 = 0.61 N.', 'EMD1 2024-2025 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.61 N', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.1 N', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2.01 N', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.22 N', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The table (figure) gives the dipole moment and the interatomic distance in the hydrogen halides HX (X = F, Cl, Br, I). e = 1.6022×10⁻¹⁹ C; 1 D = 3.335641×10⁻³⁰ C·m. Calculate the percentage ionic character of the H–X bond (HF, HCl, HBr, HI):', NULL, 'EMD1 2024-2025 Q14', 's1/chemistry-2025-q14.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '39.9; 16.9; 10.7; 3.6', 0),
  ((SELECT MAX(id) FROM questions), 'B', '44.8; 16.9; 11.7; 4.9', 1),
  ((SELECT MAX(id) FROM questions), 'C', '40.8; 13.8; 9.67; 5.6', 0),
  ((SELECT MAX(id) FROM questions), 'D', '10.7; 17.6; 16.9; 44.8', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The ionic character of the HX bonds decreases (HF → HI) because of the decrease in:', NULL, 'EMD1 2024-2025 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The valence of the halogen', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The radius of the halogen', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The electronegativity of the halogen', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The mass number of the halogen', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The LiF molecule has a dipole moment of 6.33 D. Given the interatomic distance is 0.152 nm, what can such a bond be called?', 'µ(ionic) ≈ 7.3 D → ≈ 87% ionic.', 'EMD1 2024-2025 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Nonpolar covalent', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Polar covalent', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Dative', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ionic', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'For these three species compare the radii: ₉F⁻; ₁₁Na⁺; ₁₀Ne.', NULL, 'EMD1 2024-2025 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'r(Na⁺) < r(Ne) < r(F⁻)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'r(F⁻) < r(Ne) < r(Na⁺)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'r(Na⁺) < r(F⁻) < r(Ne)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'r(Ne) < r(Na⁺) < r(F⁻)', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Give the Gillespie (VSEPR) formula for the molecules OF₂; NF₃; HCN.', NULL, 'EMD1 2024-2025 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'AX2; AX3E1; AX2E2', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'AX4; AX2; AX3', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'AX2E2; AX3E1; AX2', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'AX3E1; AX2; AX3', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Hybridization is mainly used to:', NULL, 'EMD1 2024-2025 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Explain the formation of the dative bond', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Explain the formation of the σ (sigma) bond', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Explain the formation of the ionic bond', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Explain the formation of the π (pi) bond', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the hybridization state of the C, B and Be atoms in the three compounds CCl₄, BCl₃ and BeH₂? (₄Be; ₅B; ₆C)', NULL, 'EMD1 2024-2025 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'sp³, sp², sp²', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'sp³, sp², sp', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'sp, sp³, sp³', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'sp³, sp, sp²', 0);
