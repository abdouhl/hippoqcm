-- Generated from data/s1-biophysics-emd1-2026.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct proposal is:', NULL, 'EMD1 2025-2026 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Liquids are compressible', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Gases transmit pressure in full', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The molar volume under normal temperature and pressure conditions is 22.4 liters', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The "cm of water" is the reference unit of pressure in medical science', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Energy density is homogeneous at a force', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'How much energy is required to move a surface area of 1 cm² a distance of 5 mm under a pressure of 2 bar?', 'W = P·S·d = 2×10⁵ Pa × 10⁻⁴ m² × 5×10⁻³ m = 0.1 J = 100 mJ.', 'EMD1 2025-2026 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.5 joule', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2 joule', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.5 joule', 0),
  ((SELECT MAX(id) FROM questions), 'D', '200 mjoule', 0),
  ((SELECT MAX(id) FROM questions), 'E', '100 mjoule', 1);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The saturation pressure of diethyl ether at 25°C is 150 Torr. If we have a chamber with a volume of 80 liters, what is the maximum number of moles of ether that can be vaporized at 25°C? (R = 8.31 SI)', 'n = PV/RT = (150/760 × 101 325 Pa) × 0.08 m³ / (8.31 × 298) ≈ 0.646 mol.', 'EMD1 2025-2026 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '324 mmole', 0),
  ((SELECT MAX(id) FROM questions), 'B', '646 mmole', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4.42 mole', 0),
  ((SELECT MAX(id) FROM questions), 'D', '561 mmole', 0),
  ((SELECT MAX(id) FROM questions), 'E', '745 mmole', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued: diethyl ether, saturation pressure 150 Torr at 25°C, 80 L chamber.) What will be the vapor pressure of 0.25 moles of ether at 25°C in this same enclosure?', '0.25 mol < 0.646 mol, so all of it vaporizes: P = nRT/V = 0.25 × 8.31 × 298 / 0.08 ≈ 7 740 Pa ≈ 58 torr.', 'EMD1 2025-2026 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '95 torr', 0),
  ((SELECT MAX(id) FROM questions), 'B', '121 torr', 0),
  ((SELECT MAX(id) FROM questions), 'C', '74 torr', 0),
  ((SELECT MAX(id) FROM questions), 'D', '27 torr', 0),
  ((SELECT MAX(id) FROM questions), 'E', '58 torr', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The diffusion coefficient D in the liquid phase:', NULL, 'EMD1 2025-2026 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is homogeneous at a given speed', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is inversely proportional to the cube root of the molar mass of the particle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Is favored by friction', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'In the presence of a dialysis membrane, it is given by D = jₙ/ΔC_M', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'In the presence of a membrane, its value increases', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'One litre of aqueous solution contains:
- 47.4 g of KMnO₄ (M = 158 g/mol)
- 45 ml of H₃PO₄ at 2 mol/L
Electrolytes are completely dissociable. Calculate the osmolarity of the solution.', 'KMnO₄: 0.3 mol × 2 ions = 0.6 osm. H₃PO₄: 0.09 mol × 4 ions = 0.36 osm. Total = 0.96 osm/L.', 'EMD1 2025-2026 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '960 mosm/l', 1),
  ((SELECT MAX(id) FROM questions), 'B', '420 mosm/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', '680 mosm/l', 0),
  ((SELECT MAX(id) FROM questions), 'D', '560 mosm/l', 0),
  ((SELECT MAX(id) FROM questions), 'E', '870 mosm/l', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued: 1 L of solution with 47.4 g KMnO₄ (M = 158) and 45 ml of 2 mol/L H₃PO₄, fully dissociated.) Calculate the IONIC STRENGTH of this aqueous solution.', 'I = ½Σcz². KMnO₄ (0.3 M): ½(0.3 + 0.3) = 0.3. H₃PO₄ (0.09 M): ½(3×0.09×1 + 0.09×9) = 0.54. Total = 0.84.', 'EMD1 2025-2026 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.68', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.74', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.36', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.84', 1),
  ((SELECT MAX(id) FROM questions), 'E', '0.23', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the P-T diagram of a solution compared to that of its pure solvent:', NULL, 'EMD1 2025-2026 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The liquid phase only spreads towards the solid phase.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The solid phase is more extensive.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The liquid phase spreads towards both the solid phase and the gas phase.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The gas phase is more extensive.', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The triple point moves towards a higher pressure', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The cryoscopic lowering of an aqueous solution of aluminium sulphate Al₂(SO₄)₃ at 0.1 mol/L is equal to −0.64°C. Determine its degree of dissociation α₀. (K꜀ = 1.86)', 'i = ΔT/(K·C) = 0.64/(1.86 × 0.1) ≈ 3.44. i = 1 + α(5 − 1) ⇒ α ≈ 0.61.', 'EMD1 2025-2026 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.61', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.29', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.73', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.45', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.59', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Given that the diffusion coefficient of myoglobin (M = 17000 g/mol) is D = 1.22×10⁻¹⁰ (SI) at 0°C, what will its value be in (SI) at 37°C? We assume that viscosity does not change with temperature.', 'D ∝ T (Stokes–Einstein): 1.22×10⁻¹⁰ × 310/273 ≈ 1.39×10⁻¹⁰ = 13.9×10⁻¹¹.', 'EMD1 2025-2026 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.27×10⁻¹⁰', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.41×10⁻¹⁰', 0),
  ((SELECT MAX(id) FROM questions), 'C', '15.4×10⁻¹¹', 0),
  ((SELECT MAX(id) FROM questions), 'D', '13.9×10⁻¹¹', 1),
  ((SELECT MAX(id) FROM questions), 'E', '1.61×10⁻¹⁰', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Consider the tank below at the initial moment. Solutions (A) 0.15 mol/L glucose and (B) 0.1 mol/L Na₂SO₄ are separated by a movable semipermeable membrane at x = 0. How far and in which direction does this membrane move to achieve equilibrium between (A) and (B)?', 'Osmolarities: A = 0.15, B = 0.3 osm/L, so water moves A → B and the membrane moves towards A. With compartments of equal length L: 0.15·L/(L − x) = 0.3·L/(L + x) ⇒ x = L/3 ≈ 16.7 cm (L = 50 cm).', 'EMD1 2025-2026 Q11', 's1/biophysics-q11.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '15.0 cm from B to A', 0),
  ((SELECT MAX(id) FROM questions), 'B', '12.5 cm from B to A', 0),
  ((SELECT MAX(id) FROM questions), 'C', '19.3 cm from A to B', 0),
  ((SELECT MAX(id) FROM questions), 'D', '21.3 cm from B to A', 0),
  ((SELECT MAX(id) FROM questions), 'E', '16.7 cm from B to A', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Determine the equivalent capacity of the following circuit. C = 3 µF', 'Three branches in parallel: C + C/2 + C/3 = 11C/6 = 11 × 3/6 = 5.5 µF.', 'EMD1 2025-2026 Q12', 's1/biophysics-q12.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4.5 µF', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5.5 µF', 1),
  ((SELECT MAX(id) FROM questions), 'C', '6.5 µF', 0),
  ((SELECT MAX(id) FROM questions), 'D', '7.5 µF', 0),
  ((SELECT MAX(id) FROM questions), 'E', '3.5 µF', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct proposal is:', NULL, 'EMD1 2025-2026 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ionic mobility is expressed in m/s when the electric field is equal to 10³ V/m', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Ionic mobility is given by U = v·E', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Due to friction, the movement of ions in solutions under a constant electric field is uniform and rectilinear', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The cation transfer number is equal to the current due to cations over that due to anions', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The equivalent conductivity Λ = σ·C_eq', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The Virial equation for low Cₚ:', 'Intercept Y = RT/M ⇒ M = 8.31 × 300 / 1500 ≈ 1.662 kg/mol = 1662 g/mol.', 'EMD1 2025-2026 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gives the osmotic pressure for micromolecular solutions', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'For a globular conformation, constant C is positive', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'For a linear conformation, constant B is negative', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'When B is negative, there is good affinity with the solvent', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'If the graph π/Cₚ = f(Cₚ) at T = 27°C gives Y = 1500 (SI) we find M = 1662 g', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In a Donnan experiment (seen in class) at equilibrium [Na⁺]ᵢ·[Cl⁻]ᵢ = 0.16 (osmol/l)² and [Cl⁻]ᵢᵢ = 0.457 osmol/l. The valence of the proteinate ion is equal to 18. Calculate the osmolarity of the protein. Hint: first find [Na⁺]ᵢᵢ.', NULL, 'EMD1 2025-2026 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3 mosmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4 mosmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5 mosmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'D', '6 mosmol/l', 1),
  ((SELECT MAX(id) FROM questions), 'E', '8 mosmol/l', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A particle undergoing ultracentrifugation, initially located 10 cm from the rotor, travels a distance of 4 cm during the first hour. How long will it take to reach the bottom of the tube, which is 30 cm from the rotor?', 'ln(r/r₀) = kt. k = ln(14/10) ≈ 0.336 h⁻¹. t = ln(30/10)/0.336 ≈ 3.27 h ≈ 3 h 16 min.', 'EMD1 2025-2026 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3h 16min', 1),
  ((SELECT MAX(id) FROM questions), 'B', '3h 52min', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2h 24min', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2h 45min', 0),
  ((SELECT MAX(id) FROM questions), 'E', '4h 02min', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The concentrations of Na⁺ ions on either side of an axon membrane are: C_axop = 20 and C_ext = 120 (in mmol/L) at 27°C. Determine the Nernst potential of this ion.', 'E = (RT/F)·ln(C_ext/C_int) = (8.31 × 300 / 96 500) × ln 6 ≈ 0.0258 × 1.79 ≈ 46.3 mV.', 'EMD1 2025-2026 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '72.4 mV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '64.6 mV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '58.1 mV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '46.3 mV', 1),
  ((SELECT MAX(id) FROM questions), 'E', '38.7 mV', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'When a strong stimulus is applied to a nerve fiber:', NULL, 'EMD1 2025-2026 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In the pre-potential phase, there is a significant increase in permeability for Na⁺ ions.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The membrane remains polarized.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'During an AP, the descending part of the AP corresponds to the massive exit of K⁺ ions from the axoplasm.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The membrane undergoes a relative refractory phase, which is followed by an absolute refractory phase.', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The relative refractory period allows the AP to propagate in one direction only.', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct proposal is:', NULL, 'EMD1 2025-2026 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The accommodation constant (C.A) of a membrane is expressed in amperes.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The accommodation constant C.A decreases when the accommodation of the membrane is rapid.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The rheobase is the maximum value of the threshold intensities.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'During an AP, the pre-potential phase (PP) is characterized by a peak that obeys the all-or-nothing law.', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'During an AP, the ascending part of the potential corresponds to the massive release of K⁺ ions from the axoplasm.', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Regarding the evaluation of the electrical axis of the heart ÂQRS, the correct statement is: The lead for which the QRS complex…', NULL, 'EMD1 2025-2026 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'has an amplitude equal to zero (or isodiphase) is perpendicular to ÂQRS', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'has the greatest amplitude (positive deflection) is perpendicular to ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'has the greatest amplitude (negative deflection) gives the direction of ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'has the greatest amplitude (positive deflection) is opposite to ÂQRS', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'has an amplitude equal to zero (or isodiphase) is in the direction of ÂQRS', 0);
