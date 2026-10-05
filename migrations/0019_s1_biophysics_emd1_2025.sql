-- Generated from data/s1-biophysics-emd1-2025.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct proposition is:', NULL, 'EMD1 2024-2025 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Crystalline solids all appear in 6 crystal systems', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The cubic system has 3 crystal lattices', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The orthorhombic system has 3 crystal lattices', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1 cm of water corresponds to 9.81 pascal', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Condensation of a gas gives a liquid', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A homogeneous mixture of 3 gases containing 2 moles of gas (A), 3 moles of gas (B) and 5 moles of gas (C) has a pressure of 150 Torr:', 'P(C) = 5/10 × 150 = 75 Torr.', 'EMD1 2024-2025 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pressure of gases (A), (B) and (C) is 150 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The pressure of gas (B) equals 50 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The volume of gas (C) equals the volume of gases (A + B)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The pressure of gas (C) equals 75 Torr', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The pressure of gas (A) equals 3/2 that of (B)', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The saturation pressure of water at 30°C is 31.8 Torr. With an enclosure of V = 100 L, what is the maximum mass of water that can be vaporized at 30°C? Molar mass of water: 18 g. (R = 8.31 SI)', 'n = PV/RT = (31.8/760 × 101 325) × 0.1 / (8.31 × 303) ≈ 0.168 mol → 3.03 g.', 'EMD1 2024-2025 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.03 g', 1),
  ((SELECT MAX(id) FROM questions), 'B', '4.17 g', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4.73 g', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5.11 g', 0),
  ((SELECT MAX(id) FROM questions), 'E', '5.83 g', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued) What will then be the vapor pressure of a 2 g mass of water at 30°C in this same enclosure?', '2 g < 3.03 g, so it all vaporizes: P = 31.8 × 2/3.03 ≈ 21 Torr.', 'EMD1 2024-2025 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '17 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'B', '24 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'C', '14 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'D', '27 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'E', '21 Torr', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The diffusion coefficient D in the liquid phase:', NULL, 'EMD1 2024-2025 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is given by the relation D = k·T·f', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Decreases when temperature increases', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is independent of the particle''s density when its shape is arbitrary', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is proportional to the cube root of the particle''s mass', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Increases in the presence of a membrane', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'One liter of aqueous solution contains 22.2 g of CaCl₂ (M = 111 g/mol) and 35 mL of H₃PO₄ (1 mol/L). The electrolytes are totally dissociated. Calculate the osmolarity of the solution.', 'CaCl₂: 0.2 × 3 = 600 mosm; H₃PO₄: 0.035 × 4 = 140 mosm; total 740 mosm/L.', 'EMD1 2024-2025 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '520 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '680 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '820 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '790 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '740 mosm/L', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued) Calculate the IONIC STRENGTH of this aqueous solution.', 'CaCl₂ 0.2 M: ½(0.2·4 + 0.4·1) = 0.6; H₃PO₄ 0.035 M: ½(0.105·1 + 0.035·9) = 0.21; total 0.81.', 'EMD1 2024-2025 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.67', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.81', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.53', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.93', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.74', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', NULL, 'EMD1 2024-2025 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The diffusive permeability of a membrane is proportional to its total surface area', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Fick''s 1st law determines the ionic concentration of the ions present in a solution', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The diffusive permeability of a membrane corresponds to the ratio (Jn / ΔC)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Temperature is not a driving factor of diffusion', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Friction is a driving factor of diffusion', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The freezing-point depression of an aqueous CaCl₂ solution (0.1 mol/L) equals −0.45°C. Determine its degree of dissociation α₀. (K = 1.86 SI)', 'i = 0.45 / (1.86 × 0.1) ≈ 2.42 = 1 + 2α → α ≈ 0.71.', 'EMD1 2024-2025 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.71', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.19', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.67', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.43', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.59', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A subject excretes 1.0 L of urine per day with a freezing-point depression of −1.6°C (K = 1.86 SI). Calculate the number of mmol of urea eliminated per day.', '1.6 / 1.86 ≈ 0.860 osmol/L × 1 L = 860 mmol.', 'EMD1 2024-2025 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '748', 0),
  ((SELECT MAX(id) FROM questions), 'B', '645', 0),
  ((SELECT MAX(id) FROM questions), 'C', '920', 0),
  ((SELECT MAX(id) FROM questions), 'D', '860', 1),
  ((SELECT MAX(id) FROM questions), 'E', '1060', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The electrical resistance of a solution placed in a cylindrical cell (S = 16 cm² and L = 10 cm) is 7.3 Ω. Calculate its electrical conductivity (SI).', 'σ = L / (R·S) = 0.1 / (7.3 × 16×10⁻⁴) ≈ 8.56 S/m.', 'EMD1 2024-2025 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '8.56', 1),
  ((SELECT MAX(id) FROM questions), 'B', '5.21', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.93', 0),
  ((SELECT MAX(id) FROM questions), 'D', '6.25', 0),
  ((SELECT MAX(id) FROM questions), 'E', '13.2', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Consider the electric circuit in the figure. Determine its equivalent capacitance C_eq.', NULL, 'EMD1 2024-2025 Q12', 's1/biophysics-2025-q12.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.8 µF', 0),
  ((SELECT MAX(id) FROM questions), 'B', '11.2 µF', 0),
  ((SELECT MAX(id) FROM questions), 'C', '9.4 µF', 0),
  ((SELECT MAX(id) FROM questions), 'D', '7.6 µF', 1),
  ((SELECT MAX(id) FROM questions), 'E', '4.4 µF', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two solutions of osmolarities 0.214 and 0.115 (osmol/L) are opposed across a semipermeable wall. Determine the resulting osmotic pressure at 27°C.', 'ΔΠ = ΔC·RT = 99 × 8.31 × 300 ≈ 2.47×10⁵ Pa = 2.47 bar.', 'EMD1 2024-2025 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '14.3 bar', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.47 bar', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1.17 bar', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.49 bar', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.35 bar', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In Donnan equilibrium:', NULL, 'EMD1 2024-2025 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The macromolecule is not necessarily charged', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Only ions initially presenting a concentration gradient diffuse', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'There is an inequality of ion concentrations of the same sign on either side of the membrane at equilibrium', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The osmotic pressure is called oncotic pressure', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The Donnan ratio expresses the ratio of ion concentrations of opposite sign', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', NULL, 'EMD1 2024-2025 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The activity of a solution is its ability to dissociate', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The activity coefficient is greater than 1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The electric mobility of ions is inversely proportional to the applied electric field', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The unit of electric mobility is m²/s', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'For a very dilute solution, the activity coefficient equals 1', 1);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A particle undergoing ultracentrifugation, initially at 10 cm from the rotor axis, travels 2.5 cm during the first hour. How long will it take to reach the bottom of the tube located 18 cm from the rotor axis?', 'ln(x/x₀) is proportional to t: t = 1 h × ln(18/10) / ln(12.5/10) ≈ 2.63 h ≈ 2 h 38 min.', 'EMD1 2024-2025 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2 h 38 min', 1),
  ((SELECT MAX(id) FROM questions), 'B', '3 h 21 min', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2 h 06 min', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1 h 54 min', 0),
  ((SELECT MAX(id) FROM questions), 'E', '3 h 12 min', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The K⁺ concentrations on either side of an axon membrane are C(axoplasm) = 100 and C(ext) = 4 (mmol/L) at 17°C. Determine the Nernst potential of this ion. (R = 8.31 SI, F = 96 500 C/mol)', 'E = (RT/F)·ln(Cext/Cint) = (8.31 × 290 / 96 500) × ln(0.04) ≈ −80.4 mV.', 'EMD1 2024-2025 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−70.8 mV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−64.2 mV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−80.4 mV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '−58.3 mV', 0),
  ((SELECT MAX(id) FROM questions), 'E', '−93.7 mV', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'During a weak stimulus applied to a nerve fiber:', NULL, 'EMD1 2024-2025 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The propagation distance of the stimulus is of the order of a few centimeters', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Na⁺ permeability increases abruptly', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An action potential can be obtained for a long stimulation time', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The absolute refractory period is very important', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The leak current is responsible for the attenuation of the stimulus along the axon', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', NULL, 'EMD1 2024-2025 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The accommodation constant of a membrane is expressed in amperes', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Rheobase is the maximum value of threshold intensities', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'During an AP, the pre-potential phase is a spike obeying the all-or-none law', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The existence of the absolute refractory phase means the AP has only one direction of propagation', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'During an AP, the rising part of the potential corresponds to a massive exit of K⁺ ions from the axoplasm', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Concerning the evaluation of the heart''s electrical axis (ÂQRS), the correct statement is — the lead for which the QRS complex:', NULL, 'EMD1 2024-2025 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has the largest amplitude (positive deflection) is perpendicular to ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has zero amplitude (isodiphasic) is perpendicular to ÂQRS', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Has the largest amplitude (negative deflection) gives the direction of ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Has the largest amplitude (positive deflection) is opposite to ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Has zero amplitude (isodiphasic) is in the direction of ÂQRS', 0);
