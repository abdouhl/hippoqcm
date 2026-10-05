-- Generated from data/s1-chemistry-emd1-2023.json — 30 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Gallium (Ga) exists in two isotopic forms; its average mass is 69.723 amu. The most abundant isotope (60.108%) has an atomic mass of 68.925 amu.
Calculate the relative abundance (of the second isotope):', NULL, 'EMD1 2022-2023 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '39.09%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '39.89%', 1),
  ((SELECT MAX(id) FROM questions), 'C', '30.23%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '35.98%', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Gallium: average 69.723 amu; isotope 1: 60.108%, 68.925 amu.) Calculate the atomic mass of the second isotope:', NULL, 'EMD1 2022-2023 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '74.23 amu', 0),
  ((SELECT MAX(id) FROM questions), 'B', '72.09 amu', 0),
  ((SELECT MAX(id) FROM questions), 'C', '75.98 amu', 0),
  ((SELECT MAX(id) FROM questions), 'D', '70.92 amu', 1);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Deduce the composition of the nucleus of each gallium isotope, knowing that the quantum numbers of gallium''s unpaired electron are n = 4, l = 1, m = −1, s = +1/2. First isotope (Z, N):', '4p¹ → Z = 31; A ≈ 69 → 38 neutrons.', 'EMD1 2022-2023 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(31, 38)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '(30, 40)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(32, 36)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(30, 38)', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Gallium, Z = 31.) Second isotope (Z, N):', NULL, 'EMD1 2022-2023 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(30, 39)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '(31, 40)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '(32, 41)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(31, 38)', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'What is the number of gallium atoms in a 6.9 mg sample? (M ≈ 69.72 g/mol, NA = 6.022×10²³)', NULL, 'EMD1 2022-2023 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.96×10¹⁶', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5.06×10¹⁹', 0),
  ((SELECT MAX(id) FROM questions), 'C', '6.09×10¹⁹', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5.96×10¹⁹', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider the chemical elements A, B, D, E, G and M:
- A belongs to the fourth row of the periodic table and to the fourth column of the transition-element block.
- B, D, E, G and M all belong to the same period as A.
- B is an alkaline-earth metal; D belongs to group IIIA; E²⁻ is the most stable ion of E; G is a halogen; M is a noble gas.
Choose the right combination of Z values for (A, B, D, E, G, M):', NULL, 'EMD1 2022-2023 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '31, 36, 35, 34, 24, 20', 0),
  ((SELECT MAX(id) FROM questions), 'B', '24, 20, 31, 34, 35, 36', 1),
  ((SELECT MAX(id) FROM questions), 'C', '20, 24, 36, 34, 35, 31', 0),
  ((SELECT MAX(id) FROM questions), 'D', '31, 24, 20, 34, 35, 36', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Element E = Se, Z = 34.) Give the 4 quantum numbers of the unpaired electrons of element E:', NULL, 'EMD1 2022-2023 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(n = 4, l = 0, m = 0, s = +1/2); (n = 4, l = 1, m = +1, s = −1/2)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '(n = 4, l = 1, m = 3, s = +1/2); (n = 4, l = 2, m = +1, s = +1/2)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(n = 4, l = 1, m = 0, s = +1/2); (n = 4, l = 1, m = +1, s = +1/2)', 1),
  ((SELECT MAX(id) FROM questions), 'D', '(n = 4, l = 3, m = 0, s = +1/2); (n = 4, l = 1, m = −1, s = +1/2)', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(A = Ti, B = Ca, D = Ga, E = Se, G = Br, M = Kr.) Rank the 6 elements by increasing ionization energy:', NULL, 'EMD1 2022-2023 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'B < A < E < D < G < M', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A < B < D < E < G < M', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'B < A < D < E < G < M', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'B < A < D < E < M < G', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(B = Ca, G = Br.) What is the nature of the bonds in the molecule BG₂?', NULL, 'EMD1 2022-2023 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Covalent bonds', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Ionic bonds', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Metallic bonds', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Hydrogen bonds', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(E = Se, G = Br.) What is the nature of the bonds in the molecule EG₂?', NULL, 'EMD1 2022-2023 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Covalent bonds', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ionic bonds', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Hydrogen bonds', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Metallic bonds', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Applying VSEPR theory, give the geometry and the hybridization of the central atom of the molecule EG₂ (SeBr₂):', 'AX₂E₂: tetrahedral electron geometry (bent molecule), sp³.', 'EMD1 2022-2023 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Linear, sp', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Trigonal planar, sp²', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Linear, sp²', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Tetrahedral, sp³', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Applying VSEPR theory, give the geometry and the hybridization of the central atom of the molecule DG₃ (GaBr₃):', NULL, 'EMD1 2022-2023 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Tetrahedral, sp³', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Linear, sp²', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Trigonal planar, sp²', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Trigonal planar, sp⁴', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Using VSEPR theory, identify the molecule with a zero dipole moment: CS₂, SCl₂, HCl and NH₃.', NULL, 'EMD1 2022-2023 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'NH₃', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'CS₂', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'SCl₂', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'HCl', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Find the atomic number of the element whose highest-energy electron has the quantum numbers n = 4, l = 2, m = −2, s = +1/2.', 'Official key: A (first 4d electron → yttrium, Z = 39).', 'EMD1 2022-2023 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Z = 39', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Z = 29', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Z = 38', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Z = 33', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which element has the highest ionization energy in the periodic table? ₂₀Ca; ₁H; ₂He; ₉F.', NULL, 'EMD1 2022-2023 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ca', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'H', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'He', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'F', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The energy needed to remove an electron from the hydrogen-like species Be³⁺ (Z = 4) in its ground state and bring it to infinity is:', NULL, 'EMD1 2022-2023 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '217.6 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '122.4 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '54.4 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '13.6 eV', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About the chemical bond:', NULL, 'EMD1 2022-2023 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'When an ionic bond forms, the more electronegative atom loses its electrons', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'In the BF₃ molecule, the boron atom has an empty box (vacant orbital)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Lateral overlap of an s orbital and a pz orbital leads to a π molecular orbital', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A triple bond involves sharing one electron in a molecular orbital', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The following electron configuration of oxygen O (figure):', 'An electron sits in 3s while 2p is not yet full — an excited state violating the aufbau order.', 'EMD1 2022-2023 Q18', 's1/chemistry-2023-q18.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Does not obey Hund''s rule', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is the ground state', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Does not obey the Pauli principle', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Does not obey the Klechkowsky stability (aufbau) principle', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'VSEPR geometry of COCl₂ (carbon is the central atom):', NULL, 'EMD1 2022-2023 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'AX₃E₂', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'AX₂', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'AX₃', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'AX₃E', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A hydrogen atom in its ground state absorbs a photon of wavelength λ₁ = 97.28 nm. On which level is the electron after this absorption?', NULL, 'EMD1 2022-2023 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4', 1),
  ((SELECT MAX(id) FROM questions), 'C', '5', 0),
  ((SELECT MAX(id) FROM questions), 'D', '∞', 0);

-- Q21
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Hydrogen at n = 4.) It then emits a photon of wavelength λ₂ = 1879 nm. On which level is the electron after this emission?', NULL, 'EMD1 2022-2023 Q21', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3', 1),
  ((SELECT MAX(id) FROM questions), 'D', '2', 0);

-- Q22
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The first ionization energy of the helium atom is 24.6 eV. What is the energy of the ground level?', NULL, 'EMD1 2022-2023 Q22', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−24.6 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '−20.6 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '21.6 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '24.6 eV', 0);

-- Q23
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A helium atom is in an excited state; one of its electrons is at −21.4 eV (ground level −24.6 eV). What is the wavelength of the radiation emitted when this electron falls back to the ground level?', NULL, 'EMD1 2022-2023 Q23', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '308 nm', 0),
  ((SELECT MAX(id) FROM questions), 'B', '380 nm', 0),
  ((SELECT MAX(id) FROM questions), 'C', '388 nm', 1),
  ((SELECT MAX(id) FROM questions), 'D', '288 nm', 0);

-- Q24
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Choose the correct answer:', NULL, 'EMD1 2022-2023 Q24', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The frequency (or wavelength) of the radiation involved in an electronic transition is not the same for absorption and emission', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The absorption spectrum of the hydrogen atom in its ground state contains only the lines of the Lyman series', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The quantized levels corresponding to successive values of n are the same in all atoms', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'An infinite energy is needed to bring an electron to the level n = ∞', 0);

-- Q25
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Rank the elements of each series by increasing radius: ₁₁Na; ₁₉K; ₃₇Rb — ₆C; ₇N; ₈O — ₂₆Fe; ₂₆Fe²⁺; ₂₆Fe³⁺ — ₁₇Cl⁻; ₁₈Ar; ₂₀Ca²⁺. Which ranking is correct?', NULL, 'EMD1 2022-2023 Q25', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'rNa < rK < rRb', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'rC < rN < rO', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'rFe < rFe²⁺ < rFe³⁺', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'rCl⁻ < rAr < rCa²⁺', 0);

-- Q26
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Victims of hypoglycemia can take sugar to bring their blood glucose back to a normal level, corresponding to a blood glucose concentration C = 5.55×10⁻³ mol/L. What mass of glucose C₆H₁₂O₆ must a patient whose blood glucose is 0.20 g/L absorb to return to normal? (¹²C, ¹H, ¹⁶O; assume 1 L)', '5.55×10⁻³ × 180 = 1.0 g/L; 1.0 − 0.2 = 0.8 g = 800 mg.', 'EMD1 2022-2023 Q26', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'm = 700 mg', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'm = 806 mg', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'm = 800 mg', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'm = 80 mg', 0);

-- Q27
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'In the water molecule, the HÔH angle has an experimental value of 105°. Calculate the dipole moment of this molecule (µ(O–H) = 1.51 D).', 'µ = 2 × 1.51 × cos(52.5°) ≈ 1.84 D.', 'EMD1 2022-2023 Q27', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.84 D', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1.04 D', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.24 D', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.84 D', 0);

-- Q28
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the ionic percentage of the O–H bond in H₂O, given µ(O–H) = 1.51 D and d(O–H) = 0.96 Å. (e = 1.602×10⁻¹⁹ C; 1 D = 3.336×10⁻³⁰ C·m)', 'µ(ionic) = 1.602×10⁻¹⁹ × 0.96×10⁻¹⁰ / 3.336×10⁻³⁰ ≈ 4.61 D; 1.51/4.61 ≈ 33%.', 'EMD1 2022-2023 Q28', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '30%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '33%', 1),
  ((SELECT MAX(id) FROM questions), 'C', '23%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '32%', 0);

-- Q29
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Calculate the frequency of the radiation that accompanies the transition of a hydrogen electron from the excited state n = 6 to the state n = 2. (R_H = 1.096776×10⁷ m⁻¹, c ≈ 3×10⁸ m/s)', NULL, 'EMD1 2022-2023 Q29', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ν = 6.31×10¹⁴ s⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'ν = 7.10×10¹⁴ s⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'ν = 7.31×10¹⁴ s⁻¹', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'ν = 7.31×10⁴ s⁻¹', 0);

-- Q30
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), '(Transition n = 6 → n = 2 in hydrogen.) To which series of the atomic emission spectrum does this radiation belong? (Has the atom returned to its ground state?)', 'Ending on n = 2 → Balmer; the atom is not back in its ground state (n = 1).', 'EMD1 2022-2023 Q30', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lyman', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Pfund', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Paschen', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Balmer', 1);
