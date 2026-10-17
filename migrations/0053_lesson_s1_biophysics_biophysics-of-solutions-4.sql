-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-4.json — lesson "Biophysics of solutions 4": 8 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 4', 's1/biophysics/biophysics-of-solutions-4.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q10',
    'EMD1 2022-2023 Q13',
    'EMD1 2022-2023 Q14',
    'EMD1 2023-2024 Q14',
    'EMD1 2024-2025 Q9',
    'EMD1 2024-2025 Q13',
    'EMD1 2025-2026 Q9',
    'EMD1 2025-2026 Q11'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the three types of membranes, the correct propositions are:', 'Dialysis: water + small molecules/ions, but not macromolecules (M ≥ 10 kg). Semi-permeable: only water — ions do not cross it. Selective (biological): water + certain molecules.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A dialysis membrane is permeable to water and to small molecules or ions (Na⁺, K⁺, Cl⁻…), and impermeable to macromolecules', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A semi-permeable membrane is permeable to water and to ions', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A dialysis membrane is permeable to macromolecules (M ≥ 10 kg)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A selective (biological) membrane is permeable to water and to certain molecules', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'A semi-permeable membrane is permeable only to water', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About colligative properties, the correct propositions are:', 'Colligative properties depend only on the number of solute particles. The solution boils higher (T_s > T₀, ΔT_vap = K_eb·ω > 0) and freezes lower (T_s < T₀, so the cryoscopic depression is negative).', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A solution boils at a lower temperature than its pure solvent', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'They depend only on the number of solute particles in the solution', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The cryoscopic depression ΔT_sol = T_s − T₀ is positive', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The ebullioscopic elevation ΔT_vap = T_s − T₀ is positive', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'By Raoult''s law, ΔT_vap = K_eb × ω', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'If ω is expressed as an osmolality and ΔT in kelvins, the ebullioscopic constant K_eb is expressed in:', 'K_eb = ΔT/ω: with ΔT in K and ω in osmol/kg, K_eb is in K·kg/osmol. °C·L/osmol (or K·L/osmol) applies when ω is an osmolarity.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '°C·L/osmol', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'K·kg/osmol', 1),
  ((SELECT MAX(id) FROM questions), 'C', '°C·osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'K·L/osmol', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'osmol/(K·kg)', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Pure water boils at 100 °C. An aqueous NaCl solution at 0.1 mol/L is totally dissociated; K_eb(water) = 0.52 °C·L/osmol. At what temperature does the solution boil?', 'ω = 2 × 0.1 = 0.2 osmol/L; ΔT_vap = 0.52 × 0.2 = 0.104 °C, so T_s = T₀ + ΔT = 100.104 °C. 100.052 forgets the dissociation; 99.896 subtracts — a solution boils higher than its solvent.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '99.896 °C', 0),
  ((SELECT MAX(id) FROM questions), 'B', '100.052 °C', 0),
  ((SELECT MAX(id) FROM questions), 'C', '100.104 °C', 1),
  ((SELECT MAX(id) FROM questions), 'D', '100.208 °C', 0),
  ((SELECT MAX(id) FROM questions), 'E', '101.04 °C', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About cryoscopic depression, the correct propositions are:', 'ΔT_sol = −K_cr·ω < 0 (T_s < T₀). It depends only on ω (colligative), not on the nature or molar mass of the solute; NaCl gives ω = 2C versus ω = C for glucose, hence a larger depression.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is given by ΔT_sol = +K_cr × ω', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A solution solidifies at a lower temperature than its pure solvent', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'When ω is an osmolarity, K_cr is expressed in °C·L/osmol', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'At the same molar concentration, a totally dissociated NaCl solution has a larger depression (in absolute value) than a glucose solution', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'At the same osmolarity, the depression depends on the molar mass of the solute', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An aqueous NaCl solution at 0.15 mol/L is totally dissociated (K_cr = 1.86 °C·L/osmol). Its cryoscopic depression is:', 'ω = 2 × 0.15 = 0.3 osmol/L; ΔT_sol = −1.86 × 0.3 = −0.56 °C (the normal depression of blood). −0.28 ignores dissociation; −0.84 uses β = 3; the sign is always negative.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−0.28 °C', 0),
  ((SELECT MAX(id) FROM questions), 'B', '+0.56 °C', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−1.12 °C', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−0.84 °C', 0),
  ((SELECT MAX(id) FROM questions), 'E', '−0.56 °C', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The cryoscopic depression of an aqueous MgCl₂ solution at 0.1 mol/L is −0.4836 °C (K_cr = 1.86 °C·L/osmol). Determine its dissociation coefficient α.', 'ω = 0.4836/1.86 = 0.26 osmol/L. MgCl₂ → Mg²⁺ + 2Cl⁻, β = 3: [1 + 2α]×0.1 = 0.26 ⇒ α = 0.8. Using β = 4 gives 0.53; 1.6 is impossible since α ≤ 1.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.80', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.30', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.53', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.6', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.60', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A formic acid (HCOOH, weak electrolyte) solution at 0.5 mol/L has a cryoscopic depression of −1.023 °C (K_cr = 1.86 °C·L/osmol). Its dissociation coefficient α is:', 'ω = 1.023/1.86 = 0.55 osmol/L. HCOOH → H⁺ + HCOO⁻, β = 2: [1 + α]×0.5 = 0.55 ⇒ α = 0.1, consistent with a weak electrolyte (α < 1). 0.55 is ω itself, not α.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.55', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.1', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.05', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.10', 1),
  ((SELECT MAX(id) FROM questions), 'E', '0.20', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The cryoscopic depression of an alcohol-intoxicated subject''s blood is −0.65 °C. All other blood parameters are normal (normal depression −0.56 °C; K_cr = 1.86 °C·L/osmol; M(ethanol) = 46 g/mol). The blood alcohol concentration is:', 'ω_alc = (ΔT₂ − ΔT₁)/(−K_cr) = (−0.65 + 0.56)/(−1.86) = 0.048 osmol/L = C_alc (non-electrolyte); C_p = 0.048 × 46 = 2.23 g/L. 16.1 uses the whole −0.65 °C instead of the excess; 0.048 g/L forgets to multiply by M.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.48 g/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.23 g/L', 1),
  ((SELECT MAX(id) FROM questions), 'C', '16.1 g/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.048 g/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '4.45 g/L', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the blood-alcohol exercise (cryoscopy of an intoxicated subject), the correct propositions are:', 'The alcohol adds osmoles: ω₂ = ω₁ + ω_alc, so ΔT₂ = ΔT₁ − K_cr·ω_alc is more negative (blood freezes lower, not higher). Ethanol does not dissociate, so its molarity equals its osmolarity.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The osmolarity of the blood containing alcohol is ω₂ = ω₁ − ω_alc', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Ethanol is a non-electrolyte, so C_alc = ω_alc', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The alcohol makes the cryoscopic depression of blood more negative', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The alcohol raises the freezing temperature of blood', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The normal cryoscopic depression of blood is −0.56 °C', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About osmosis and osmotic pressure, the correct propositions are:', 'Water moves from pure water (2) into the solution (1), which draws it in with π_osm = ωRT — Van''t Hoff''s law (Raoult''s law is for ΔT_vap and ΔT_sol). π_osm is in Pa.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Osmosis is the diffusion of water through a semi-permeable membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Between a solution and pure water, water flows from the solution toward the pure water', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'π_osm measures the tendency of a solution to draw in water by osmosis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'π_osm = ωRT is known as Raoult''s law', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'π_osm is expressed in pascals', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'At 27 °C, a perfectly semi-permeable membrane separates compartment (1), CaCl₂ at 0.05 mol/L, from compartment (2), NaCl at 0.05 mol/L (both totally dissociated). R = 8.31 SI. The correct proposition is:', 'ω₁ = 3 × 0.05 = 0.15 osmol/L, ω₂ = 2 × 0.05 = 0.10 osmol/L; water goes toward the higher osmolarity, (2) → (1). π = (ω₁ − ω₂)RT = 50 osmol/m³ × 8.31 × 300 ≈ 125 kPa. 623 kPa adds the osmolarities; 0.125 kPa forgets the conversion to osmol/m³.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Water flows from (1) to (2) under π ≈ 125 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Water flows from (2) to (1) under π ≈ 623 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'No water flows: the two solutions have the same molarity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Water flows from (2) to (1) under π ≈ 125 kPa', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Water flows from (2) to (1) under π ≈ 0.125 kPa', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'At 27 °C, two compartments are separated by a semi-permeable membrane. Compartment (1) has an osmolarity of 0.3 osmol/L. Water diffuses from (1) to (2) and the osmotic pressure is 249.3 kPa (R = 8.31 SI). The osmolarity of (2) is:', 'Δω = π/RT = 249 300/(8.31 × 300) = 100 osmol/m³ = 0.1 osmol/L. Water flows toward the more concentrated side, so ω₂ = 0.3 + 0.1 = 0.4 osmol/L; 0.2 gets the direction backwards.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.2 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.1 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.4 osmol/L', 1),
  ((SELECT MAX(id) FROM questions), 'D', '100 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.3 osmol/L', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About isotonicity, the correct propositions are:', 'π₁ < π₂ makes (1) hypotonic and (2) hypertonic — option A inverts them. Across a biological membrane, freely diffusing solutes such as urea behave like water and exert no osmotic pressure, so isotonic solutions can have different osmolarities.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'If π₁ < π₂, solution (1) is hypertonic and (2) hypotonic', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'If π_osm = 0 (π₁ = π₂), there is no water flow and the solutions are isotonic', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'With a semi-permeable membrane, isotonicity implies iso-osmolarity (ω₁ = ω₂)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'With a biological membrane, isotonicity does not necessarily imply iso-osmolarity', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Urea, which diffuses freely across the erythrocyte membrane, is not osmotically active', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An erythrocyte (300 mosmol/L) is immersed in a solution containing 150 mosmol/L of NaCl and 200 mosmol/L of urea, which diffuses freely across its membrane. The correct propositions are:', 'Urea crosses the membrane, so it is not osmotically active: π₂ = ω_NaCl·RT = 150RT < π₁ = 300RT. The solution is hypotonic (although its total osmolarity, 350, is higher) and the erythrocyte draws water in.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The solution is iso-osmolar to the erythrocyte', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The solution is hypotonic relative to the erythrocyte', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Water enters the erythrocyte', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The solution is hypertonic because 350 > 300 mosmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Urea contributes to the osmotic pressure of the solution', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the solute reflection coefficient σ, the correct propositions are:', 'σ = non-crossing osmoles / initial osmoles = area of pores IMPERMEABLE to the solute / total pore area. Semi-permeable: σ = 1; dialysis (solute crosses): σ = 0.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'σ = number of osmoles that do not cross the membrane / initial number of osmoles', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'For a dialysis membrane, σ = 1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'For a semi-permeable membrane, σ = 1', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0 ≤ σ ≤ 1', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'σ = area of the pores permeable to the solute / total pore area', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'At 27 °C, a solution of osmolarity 0.1 osmol/L is opposed to pure water across a membrane partially permeable to the solute, with σ = 0.4 (R = 8.31 SI). The osmotic pressure is:', 'π = σωRT = 0.4 × 100 osmol/m³ × 8.31 × 300 ≈ 99.7 kPa. 249 kPa ignores σ (semi-permeable case); 149.6 uses 1 − σ; 0 would be a totally permeable membrane.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '249 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'B', '99.7 kPa', 1),
  ((SELECT MAX(id) FROM questions), 'C', '149.6 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.0997 kPa', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'At 27 °C, a solution is opposed to pure water across a membrane. It contains NaCl (ω = 200 osmol/m³, σ = 0.5) and urea (ω = 100 osmol/m³, σ = 0). R = 8.31 SI. The osmotic pressure is:', 'π = Σσᵢωᵢ·RT = (0.5 × 200 + 0 × 100) × 8.31 × 300 ≈ 249 kPa. 748 kPa takes σ = 1 for both; 374 applies σ = 0.5 to urea too; 499 ignores the σ of NaCl.', 'Lesson: Biophysics of solutions 4', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 4'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '748 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'B', '374 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'C', '499 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'D', '125 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'E', '249 kPa', 1);
