-- Generated from data/s1-biophysics-emd1-2023.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The change from the solid state to the gaseous state:', 'No official answer key for this exam — answer worked out. Sublimation occurs below the triple-point pressure and absorbs energy.', 'EMD1 2022-2023 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is called FUSION', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Occurs with release of energy', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cannot be obtained (directly)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Is obtained at a pressure higher than that of the triple point in the (P, T) diagram', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is called SUBLIMATION', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A mixture of k gases is placed in a volume V:', 'No official answer key — Dalton''s law.', 'EMD1 2022-2023 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pressure of the mixture equals the pressure of each gas', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The partial pressures of these gases are identical', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The total pressure of the mixture is the sum of the partial pressures of the k gases', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The total volume V is the sum of the partial volumes of the k gases', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The volume of each gas equals V only if the partial pressures of the k gases are equal', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A mass m = 9 g of water (M = 18 g/mol) is introduced into an initially empty hermetic container of volume V = 25 L and brought to T₁ = 70°C. What mass of water remains liquid? Given: saturation pressure of water Psat(70°C) = 0.350 bar, Psat(100°C) = 1 bar. (R = 8.31 SI)', 'No official key — worked out. Max vapor: n = PV/RT = 35 000 × 0.025 / (8.31 × 343) ≈ 0.307 mol ≈ 5.5 g. Liquid left = 9 − 5.5 ≈ 3.5 g.', 'EMD1 2022-2023 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.3 g', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3.5 g', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4.1 g', 0),
  ((SELECT MAX(id) FROM questions), 'D', '7.4 g', 0),
  ((SELECT MAX(id) FROM questions), 'E', '6.2 g', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued: 9 g of water in a 25 L hermetic container.) What is the water vapor pressure in this container at 100°C?', 'No official key — worked out. If all 0.5 mol vaporizes: P = nRT/V = 0.5 × 8.31 × 373 / 0.025 ≈ 0.62 bar < Psat (1 bar), so all the water is vapor and P = 0.62 bar.', 'EMD1 2022-2023 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.78 bar', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.49 bar', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.97 bar', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.62 bar', 1),
  ((SELECT MAX(id) FROM questions), 'E', '1.21 bar', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', 'No official key — i = 1 + α(ν − 1) > 1 whenever the solute dissociates.', 'EMD1 2022-2023 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'For an electrolytic solution, the Van''t Hoff correction factor is always greater than 1', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A glucose solution is electrolytic', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The equivalent concentration of a solution equals its ionic concentration', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The osmolality of an electrolytic solution (α₀ = 0.5) equals its molality', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The osmolarity of a molar NaCl solution equals the osmolarity of a molar CaCl₂ solution', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'One liter of solution contains 15 mL of HCl (2 mol/L) and 30 mL of H₂SO₄ (1 mol/L). The electrolytes are totally dissociated. Calculate the osmolarity of the solution.', 'No official key — HCl: 0.03 mol × 2 = 60 mosm; H₂SO₄: 0.03 mol × 3 = 90 mosm; total 150 mosm/L.', 'EMD1 2022-2023 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '75 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '150 mosm/L', 1),
  ((SELECT MAX(id) FROM questions), 'C', '115 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '195 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '130 mosm/L', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An aqueous solution of 0.65 mol/L Na₃PO₄ has a dissociation coefficient α₀ = 0.6. What is its osmolarity? The ions in solution are PO₄³⁻ and Na⁺.', 'No official key — i = 1 + 0.6 × (4 − 1) = 2.8; 0.65 × 2.8 = 1.82 osm/L.', 'EMD1 2022-2023 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.38 osm/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.28 osm/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.54 osm/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.92 osm/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '1.82 osm/L', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An aqueous solution of volume 1 L contains 2.34 g of NaCl (M = 58.5 g) and 3.33 g of CaCl₂ (M = 111 g). What is its ionic strength?', 'No official key — NaCl 0.04 M, CaCl₂ 0.03 M. I = ½(0.04·1 + 0.04·1 + 0.03·4 + 0.06·1) = 0.13.', 'EMD1 2022-2023 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.17', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.21', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.35', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.13', 1),
  ((SELECT MAX(id) FROM questions), 'E', '0.27', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Solvation is due to:', 'No official key — solvation is the surrounding of ions by the dipolar solvent molecules.', 'EMD1 2022-2023 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The dipolar molecules of the solvent', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The high electric permittivity of the solvent', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The decrease of the Coulomb force', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The mobility of the ions', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The strong character of some electrolytes', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The freezing-point depression of a 0.2 mol/L CaCl₂ solution is −0.65°C. What is its degree of dissociation? (Kc = 1.86 °C·osm⁻¹·L)', 'No official key — i = 0.65 / (1.86 × 0.2) ≈ 1.75 = 1 + 2α → α ≈ 0.37.', 'EMD1 2022-2023 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.88', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.25', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.37', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.19', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.53', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two identical cylindrical cells (S = 10 cm², L = 12 cm) are filled with the same molar aqueous solution of a totally dissociated AB electrolyte. When the cells (R) are placed in a Wheatstone bridge (figure), balance is reached for R₁ = 64 Ω, R₂ = 16 Ω. Calculate the resistance R.', 'No official key — at balance R × R = R₁ × R₂ = 1024 → R = 32 Ω.', 'EMD1 2022-2023 Q11', 's1/biophysics-2023-q11.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '25 Ω', 0),
  ((SELECT MAX(id) FROM questions), 'B', '48 Ω', 0),
  ((SELECT MAX(id) FROM questions), 'C', '40 Ω', 0),
  ((SELECT MAX(id) FROM questions), 'D', '32 Ω', 1),
  ((SELECT MAX(id) FROM questions), 'E', '52 Ω', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued) Calculate the conductivity of the solution.', 'No official key — σ = L / (R·S) = 0.12 / (32 × 10⁻³) = 3.75 S/m.', 'EMD1 2022-2023 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '12.5 (SI)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3.75 (SI)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '2.25 (SI)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '16.3 (SI)', 0),
  ((SELECT MAX(id) FROM questions), 'E', '5.56 (SI)', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', 'No official key — definition of osmosis.', 'EMD1 2022-2023 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Reverse osmosis is the transfer of water through a dialyzing membrane', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Two iso-osmotic solutions have the same molar concentration', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Osmosis is the transfer of water through a semipermeable membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Two isotonic solutions automatically have the same osmolarities', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Water intake increases renal work', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The osmotic pressure at 27°C initially exerted between compartments A and B across a semipermeable membrane (figure) is 750 Pa. Assuming water diffuses from A to B, determine the initial osmolarity of compartment B (in osmol/m³). The electrolytes are totally dissociated.', 'No official key — Δc = ΔΠ/RT = 750 / (8.31 × 300) ≈ 0.30 osmol/m³. A: 0.6 × 3 = 1.8 osmol/m³. Water goes to the more concentrated side, so B = 1.8 + 0.3 = 2.1 osmol/m³.', 'EMD1 2022-2023 Q14', 's1/biophysics-2023-q14.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.6', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3.2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3.7', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4.5', 0),
  ((SELECT MAX(id) FROM questions), 'E', '2.1', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In a Donnan experiment, at equilibrium [Na⁺]I = 0.57 osmol/L and [Na⁺]II = 0.714 osmol/L (the protein is in compartment II). Calculate [Cl⁻]II.', 'No official key — [Na⁺]I[Cl⁻]I = [Na⁺]II[Cl⁻]II with [Cl⁻]I = [Na⁺]I: [Cl⁻]II = 0.57² / 0.714 ≈ 0.455 osmol/L.', 'EMD1 2022-2023 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '455 mosmol/L', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.400 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.562 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '221 mosmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '409 mosmol/L', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A globular particle, initially at x = 10 cm from the rotor axis of a centrifuge, undergoes ultracentrifugation at 50 000 rpm. Calculate the distance it travels in 75 min, given its Svedberg constant is 10 S.', 'No official key — x = x₀·e^(sω²t); ω = 5236 rad/s, sω²t = 10⁻¹² × 2.74×10⁷ × 4500 ≈ 0.123 → x ≈ 11.31 cm, distance ≈ 13 mm.', 'EMD1 2022-2023 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '15.4 mm', 0),
  ((SELECT MAX(id) FROM questions), 'B', '9.25 mm', 0),
  ((SELECT MAX(id) FROM questions), 'C', '13.2 mm', 1),
  ((SELECT MAX(id) FROM questions), 'D', '22.3 mm', 0),
  ((SELECT MAX(id) FROM questions), 'E', '31.1 mm', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Three identical charges q = +4 µC are placed at the vertices of an equilateral triangle ABC of side a = 1 m. Calculate the energy of their configuration. (k = 9×10⁹ SI)', 'No official key — U = 3kq²/a = 3 × 9×10⁹ × 16×10⁻¹² = 0.432 J.', 'EMD1 2022-2023 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.21 J', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.432 J', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.785 J', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.29 J', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.127 J', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Consider the electric circuit in the figure. Determine the equivalent resistance (in ohms) between points x and y.', 'No official key, and the scan has handwriting over some resistor values. Upper branch: the three parallel resistors (≈2 Ω) + 16 Ω ≈ 18 Ω; lower branch: 9 Ω ∥ 4.5 Ω = 3 Ω, + 6 Ω = 9 Ω. 18 ∥ 9 = 6 Ω.', 'EMD1 2022-2023 Q18', 's1/biophysics-2023-q18.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '9', 0),
  ((SELECT MAX(id) FROM questions), 'B', '14', 0),
  ((SELECT MAX(id) FROM questions), 'C', '12', 0),
  ((SELECT MAX(id) FROM questions), 'D', '6', 1),
  ((SELECT MAX(id) FROM questions), 'E', '8', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'During a strong stimulus, the stimulation time of a nerve fiber equals chronaxie/5. The threshold intensity of this stimulus as a function of the rheobase (I₀) is:', 'No official key — Lapicque: I = I₀(1 + τ/t) = I₀(1 + 5) = 6 I₀.', 'EMD1 2022-2023 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '6 I₀', 1),
  ((SELECT MAX(id) FROM questions), 'B', '3 I₀', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4 I₀', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5 I₀', 0),
  ((SELECT MAX(id) FROM questions), 'E', '2 I₀', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct statement is:', 'No official key — the dipole moves, precordial leads are unipolar, and the T wave is ventricular repolarization.', 'EMD1 2022-2023 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The depolarization–polarization interface in a muscle fiber is equivalent to a fixed electric dipole', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The vectorcardiogram represents the variation of the heart''s electric field at the precordial leads', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The precordial leads are 6 bipolar leads', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Atrial myocardium contraction appears at the T wave', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The sides of Einthoven''s triangle are obtained by the three bipolar limb leads (D1, D2 and D3)', 1);
