-- Generated from data/s1-biophysics-emd1-2024.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct proposition is:', NULL, 'EMD1 2023-2024 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A compressible fluid ensures good pressure transmission', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Liquids are compressible and expansible', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Pressure is homogeneous to an energy density', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The Torr corresponds to 13.3 pascal', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A melted solid turns into a gas', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A homogeneous mixture of 2 gases containing 2 moles of gas (A) and 3 moles of gas (B) has a pressure of 3 bar:', 'P(B) = 3/5 × 3 bar = 1.8 bar.', 'EMD1 2023-2024 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pressure of gases (A) and (B) is 3 bar', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The pressure of gas (B) equals 1.8 bar', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The pressure of gas (A) equals 1 bar', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The volume of gas (B) equals 3/2 that of (A)', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'If its volume doubles, its pressure will be 6 bar', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The saturation pressure of ether is 400 Torr at 17°C. With an enclosure of V = 20 L, what is the maximum mass of ether that can be vaporized at 17°C? Molar mass of ether 74 g. (R = 8.31 SI)', 'n = PV/RT = (400/760 × 101 325) × 0.02 / (8.31 × 290) ≈ 0.442 mol → 32.7 g.', 'EMD1 2023-2024 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '32.7 g', 1),
  ((SELECT MAX(id) FROM questions), 'B', '15.4 g', 0),
  ((SELECT MAX(id) FROM questions), 'C', '27.3 g', 0),
  ((SELECT MAX(id) FROM questions), 'D', '43.2 g', 0),
  ((SELECT MAX(id) FROM questions), 'E', '12.9 g', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued) What is the ether vapor pressure at 17°C of this mass if the volume of the enclosure increases by 5 liters?', 'Same amount in 25 L: P = 400 × 20/25 = 320 Torr.', 'EMD1 2023-2024 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '115 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'B', '363 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'C', '298 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'D', '274 Torr', 0),
  ((SELECT MAX(id) FROM questions), 'E', '320 Torr', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Consider an A₂B electrolyte solution with α₀ = 0.6:', 'i = 1 + 0.6 × 2 = 2.2; 2 mol × 2.2 = 4.4 N kinetic units.', 'EMD1 2023-2024 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its Van''t Hoff correction factor equals 3.2', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'If it is molar (1 mol/L), its osmolarity will be 2.5 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '40% of the initial molecules ionize', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'If it is molar and its volume is 2 liters, the number of kinetic units will be 4.4 N', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Each molecule decomposes into 2 ions', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'One liter of aqueous solution contains 11.1 g of CaCl₂ (M = 111 g/mol) and 45 mL of H₂SO₄ (1 mol/L). The electrolytes are totally dissociated. Calculate the osmolarity of the solution.', 'CaCl₂: 0.1 mol × 3 = 300 mosm; H₂SO₄: 0.045 × 3 = 135 mosm; total 435 mosm/L.', 'EMD1 2023-2024 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '325 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '435 mosm/L', 1),
  ((SELECT MAX(id) FROM questions), 'C', '512 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '288 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '462 mosm/L', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Calculate the IONIC STRENGTH of 1 L of aqueous solution containing 3.28 g of Na₃PO₄ (M = 164 g) and 3.33 g of CaCl₂ (M = 111 g).', 'Na₃PO₄ 0.02 M: ½(0.06·1 + 0.02·9) = 0.12; CaCl₂ 0.03 M: ½(0.03·4 + 0.06·1) = 0.09; total 0.21.', 'EMD1 2023-2024 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.21', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.32', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.18', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.47', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.39', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', NULL, 'EMD1 2023-2024 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The chemical potential of a very dilute liquid solution is proportional to the solute fraction', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The concentration gradient between 2 solutions must be large to have diffusion', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Fick''s 1st law determines the equivalent concentration of solutions', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The friction coefficient of a solution is a driving factor of diffusion', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A high temperature ensures better diffusion', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '2 aqueous solutions of the same substance (30 mmol/L and 70 mmol/L) are separated by a dialyzing membrane of total area 4 cm². Knowing that the initial molar flow of the solute is 4.2 pmol/s, calculate the diffusive permeability (in 10⁻⁹ m/s):', 'P = J / (S·ΔC) = 4.2×10⁻¹² / (4×10⁻⁴ × 40) ≈ 0.26×10⁻⁹ m/s.', 'EMD1 2023-2024 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.33', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.17', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.26', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.21', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.37', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A subject excretes 0.8 L of urine per day with a freezing-point depression of −1.9°C (K = 1.86 SI). Blood freezing-point depression = −0.56°C; blood osmolarity is 300 mosm/L; T = 37°C and K = 1.86 SI. Calculate the number of moles of urea eliminated per day.', NULL, 'EMD1 2023-2024 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.814 mol', 1),
  ((SELECT MAX(id) FROM questions), 'B', '772 mmol', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.625 mol', 0),
  ((SELECT MAX(id) FROM questions), 'D', '594 mmol', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.423 mol', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued: urine 0.8 L/day, Δ = −1.9°C; blood Δ = −0.56°C, 300 mosm/L, 37°C.) Determine the power supplied by each kidney.', NULL, 'EMD1 2023-2024 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '12.4 mW', 0),
  ((SELECT MAX(id) FROM questions), 'B', '10.6 mW', 0),
  ((SELECT MAX(id) FROM questions), 'C', '16.8 mW', 0),
  ((SELECT MAX(id) FROM questions), 'D', '14.8 mW', 1),
  ((SELECT MAX(id) FROM questions), 'E', '15.5 mW', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The electrical conductivity of a solution placed in a cylindrical cell (S = 12 cm² and L = 10 cm) is 16.3 (SI). What is its resistance?', 'R = L / (σ·S) = 0.1 / (16.3 × 12×10⁻⁴) ≈ 5.11 Ω.', 'EMD1 2023-2024 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7.31 Ω', 0),
  ((SELECT MAX(id) FROM questions), 'B', '8.24 Ω', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4.56 Ω', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3.88 Ω', 0),
  ((SELECT MAX(id) FROM questions), 'E', '5.11 Ω', 1);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', NULL, 'EMD1 2023-2024 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Osmosis is a transfer of kinetic units', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'In an osmosis experiment, water diffuses from the more concentrated side to the less concentrated side', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Reverse osmosis is a transfer of water across a semipermeable wall by applying an opposing overpressure greater than the osmotic pressure', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In a reverse osmosis experiment, water diffuses toward the more concentrated side', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Renal work is greater when the urine freezing-point depression is low (in absolute value)', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Estimate, in atmospheres, the osmotic pressure of a solution of osmolarity 0.104 osmol/L at 27°C opposed to pure water by a semipermeable wall.', 'Π = cRT = 104 × 8.31 × 300 ≈ 2.59×10⁵ Pa ≈ 2.56 atm.', 'EMD1 2023-2024 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.22', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3.77', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4.53', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.56', 1),
  ((SELECT MAX(id) FROM questions), 'E', '2.19', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A dialyzing membrane separates 2 compartments (A) and (B) of fixed and equal volumes containing aqueous NaCl solutions at equilibrium. In (A), the equivalent concentration is 170 mEq/L. A fully dissociating protein RNa₁₅ is then introduced into compartment (B). At this moment, compartment (B) has a freezing-point depression of −0.67°C. Given K = 1.8 (SI), determine the molar concentration of this protein before dissociation.', 'Osm(B) = 0.67/1.8 ≈ 372 mosm/L; NaCl gives 340 mosm/L, so the protein adds ≈ 32 mosm/L = 16 particles × c → c = 2 mmol/L.', 'EMD1 2023-2024 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 mmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2 mmol/L', 1),
  ((SELECT MAX(id) FROM questions), 'C', '3 mmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4 mmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '5 mmol/L', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued) At equilibrium, determine the concentration of Na⁺ that diffused from B to A.', NULL, 'EMD1 2023-2024 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.6 mosmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '6.3 mosmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '7.2 mosmol/L', 1),
  ((SELECT MAX(id) FROM questions), 'D', '8.4 mosmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '9.1 mosmol/L', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A globular particle, initially at x = 10 cm from the rotor axis of a centrifuge, undergoes ultracentrifugation at 60 000 rpm. Calculate the distance it travels in 1 hour, given its Svedberg constant is 10 S.', 'x = x₀·e^(sω²t); ω = 6283 rad/s, sω²t = 10⁻¹² × 3.95×10⁷ × 3600 ≈ 0.142 → x ≈ 11.53 cm, distance ≈ 15.3 mm.', 'EMD1 2023-2024 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '13.2 mm', 0),
  ((SELECT MAX(id) FROM questions), 'B', '16.4 mm', 0),
  ((SELECT MAX(id) FROM questions), 'C', '14.8 mm', 0),
  ((SELECT MAX(id) FROM questions), 'D', '12.7 mm', 0),
  ((SELECT MAX(id) FROM questions), 'E', '15.5 mm', 1);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Consider the electric circuit in the figure. Determine its equivalent resistance in ohms.', 'Three parallel branches of 3 Ω each (3; 1.5 + 1.5; 1 + 1 + 1) → 3/3 = 1 Ω. (Option A''s label is illegible on the scan; it is 1.)', 'EMD1 2023-2024 Q18', 's1/biophysics-2024-q18.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.5', 0),
  ((SELECT MAX(id) FROM questions), 'E', '1.3', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', NULL, 'EMD1 2023-2024 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The depolarization–polarization interface in a muscle fiber is equivalent to a fixed electric dipole', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The vectorcardiogram represents the variation of the heart''s electric field at the precordial leads', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The precordial leads are 6 bipolar leads', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The sides of Einthoven''s triangle are obtained by the three bipolar limb leads (D1, D2 and D3)', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Atrial myocardium contraction appears at the T wave', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Concerning the evaluation of the heart''s electrical axis (ÂQRS), the correct statement is — the lead for which the QRS complex:', NULL, 'EMD1 2023-2024 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has the largest amplitude (positive deflection) is perpendicular to ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has zero amplitude (isodiphasic) is perpendicular to ÂQRS', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Has the largest amplitude (negative deflection) gives the direction of ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Has the largest amplitude (positive deflection) is opposite to ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Has zero amplitude (isodiphasic) is in the direction of ÂQRS', 0);
