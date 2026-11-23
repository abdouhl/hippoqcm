-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-10.json — lesson "Biophysics of solutions 10": 0 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 10', 's1/biophysics/biophysics-of-solutions-10.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'For a dialysis membrane, about the solvent fluxes:', 'For the solvent, J_d = LΔπ and J_c = LΔP, and J_net = J_c + J_d. P|ΔC| is the diffusive flux of the solute, not of the solvent, and J_net does carry a solute flux along with it (J_cs = J_net·C̄s).', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The diffusive flux of solvent is J_d = LΔπ', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The convective flux of solvent is J_c = LΔP', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The net solvent flux is the vector sum J_net = J_c + J_d', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The convective flux of solvent is J_c = P|ΔC|', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The net solvent flux carries no solute across the membrane', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a dialysis membrane, the convective flux of solute J_cs carried by the net solvent flux:', 'J_cs = J_net·C̄s with C̄s the mean of the two concentrations, so it exists whenever solvent flows, even with no concentration difference. P|ΔCs| is the diffusive solute flux, which does vanish when ΔCs = 0.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is J_cs = J_net·C̄s', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Uses C̄s = the concentration of the more concentrated compartment', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Uses C̄s = (C₁s + C₂s) / 2', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is J_cs = P|ΔCs|', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is not zero when C₁s = C₂s, provided J_net ≠ 0', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A dialysis membrane separates two solutions of a solute at C₁ = 12 mmol/L and C₂ = 8 mmol/L. The net solvent flux is J_net = 2×10⁻⁸ m/s. The convective flux of solute J_cs (in mol·m⁻²·s⁻¹) is:', 'J_cs = J_net·C̄s with C̄s = (12 + 8)/2 = 10 mmol/L = 10 mol/m³, so J_cs = 2×10⁻⁸ × 10 = 2×10⁻⁷. Using ΔC = 4 gives 8×10⁻⁸ (that is the wrong concentration), and the sum 20 gives 4×10⁻⁷.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 1, 0, 1, '1 mmol/L = 1 mol/m³, so C̄s = 10 mol/m³; 2×10⁻⁸ × 10 = 2×10⁻⁷. 2×10⁻¹⁰ comes from leaving C̄s in mol/L (0.01), and 2×10⁻⁵ is 100× too big — a powers-of-ten check removes both.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2×10⁻⁷', 1),
  ((SELECT MAX(id) FROM questions), 'B', '8×10⁻⁸', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2×10⁻¹⁰', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4×10⁻⁷', 0),
  ((SELECT MAX(id) FROM questions), 'E', '2×10⁻⁵', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'For a biological membrane, whose selectivity is described by the reflection coefficient σ:', 'Only the diffusive (osmotic) solvent flux carries σ: J_d = LσΔπ, while J_c = LΔP (Darcy''s law, with L = P_fV_me/RT). P_f is in m/s; m²·s/kg is the unit of L.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The diffusive flux of solvent is J_d = LσΔπ', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The convective flux of solvent is J_c = LσΔP', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Darcy''s law of filtration gives J_c = (P_f·V_me / RT)·ΔP', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'L = P_f·V_me / RT', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The filtration coefficient P_f is expressed in m²·s/kg', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About Darcy''s law of filtration J_c = (P_f·V_me / RT)·ΔP:', 'V_me is the molar volume of water (18 cm³), P_f the filtration coefficient in m/s, and J_c is proportional to ΔP. T is in the denominator, so J_c is inversely, not directly, proportional to T.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'V_me is the molar volume of water, V_me = 18 cm³', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'P_f is the membrane filtration coefficient, in m/s', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'V_me is the molar volume of the solute', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'J_c is proportional to the temperature T', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'J_c increases when the pressure difference ΔP increases', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a biological membrane, the convective solute flux is J_cs = (1 − σ)·J_net·C̄s. Therefore:', 'σ is the reflection coefficient and (1 − σ) the transmission coefficient: σ = 1 stops all convective transport of the solute, σ = 0 gives back J_cs = J_net·C̄s. The net solute flux is J_cs + J_ds.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(1 − σ) is the membrane transmission coefficient', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'σ is the membrane transmission coefficient', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'For a solute to which the membrane is impermeable (σ = 1), J_cs = 0', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'For σ = 0, the expression becomes that of the dialysis membrane, J_cs = J_net·C̄s', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The net solute flux is the vector sum of J_cs and the diffusive flux J_ds = P|ΔCs|', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A capillary membrane is impermeable to albumin but lets glucose and other small molecules through. About its reflection coefficients:', 'A solute that cannot cross is fully reflected (σ = 1); a freely crossing one has σ = 0. The transmission coefficient for albumin is 1 − σ = 0, not 1.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'σ (albumin) = 1', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'σ (albumin) = 0', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'σ (glucose) = 0', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'σ (glucose) = 1', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The transmission coefficient for albumin is 1', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A capillary membrane is impermeable to albumin (M = 40 000 g/mol). Plasma contains 40 g/L of albumin and the interstitial medium none. At 37 °C (R = 8.31 SI), the osmotic pressure difference generated by albumin is about:', 'Δπ = ω·RT = (40/40 000 mol/L = 1 mol/m³) × 8.31 × 310 ≈ 2 576 Pa ≈ 19.4 mmHg (1 mmHg = 133 Pa). 9.7 mmHg is the value for 20 g/L in the lesson''s exercise; 2.6 Pa comes from leaving ω in mol/L.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 4, 3, 1, '40/40 000 = 10⁻³ mol/L = 1 mol/m³, so Δπ = RT ≈ 8.3 × 310 ≈ 2 600 Pa; ÷133 ≈ 20 mmHg. The Pa and MPa options are off by 10³ — a unit check removes them; 9.7 is half, i.e. the 20 g/L case.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.6 kPa (≈ 19 mmHg)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2.6 Pa', 0),
  ((SELECT MAX(id) FROM questions), 'C', '9.7 mmHg', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.6 MPa', 0),
  ((SELECT MAX(id) FROM questions), 'E', '39 mmHg', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the Starling phenomenon:', 'Starling describes plasma ↔ interstitial water exchange through a capillary wall treated as a dialysis membrane. P_a is the pressure at the entrance (arteriolar end) and P_v at the exit, with P_a > P_v.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It describes water exchange between plasma and the interstitial medium', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The capillary wall is modeled as a dialysis membrane', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'P_a is the blood pressure at the exit (venular end) of the capillary', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P_int is the pressure in the interstitial medium', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'ΔP_v = P_v − P_int', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the Starling model, the osmotic pressure difference Δπ between plasma and the interstitial medium:', 'ω_plasma = ω_i + ω_p and ω_int ≈ ω_i, so Δπ = (ω_plasma − ω_int)RT = ω_p·RT, due to the proteins only. Δπ acts from the interstitial medium toward the plasma; it is ΔP that pushes water out of the plasma.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Is due to the plasma proteins, since ω_int ≈ ω_i', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Equals (ω_i + ω_p)·RT', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Equals ω_p·RT', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Draws water from the interstitial medium toward the plasma', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Draws water from the plasma toward the interstitial medium', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Under normal conditions, in the Starling model:', 'Normal values: ΔP_a ≈ 40 mmHg, ΔP_v ≈ 10 mmHg, Δπ ≈ 25 mmHg. At the venular end Δπ > ΔP_v, so water goes back from the interstitial medium to the plasma; 25 mmHg is Δπ, not ΔP_v.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ΔP_a ≈ 10 mmHg', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'ΔP_v ≈ 25 mmHg', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Δπ ≈ 25 mmHg', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'At the venular end, water returns from the interstitial medium to the plasma', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'At the venular end, ΔP_v > Δπ', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Under normal conditions (ΔP_a ≈ 40 mmHg, Δπ ≈ 25 mmHg), with L = 10⁻¹¹ m²·s/kg and 1 mmHg ≈ 133 Pa, the net water flux at the arteriolar end of the capillary is about:', 'ΔP_a > Δπ, so J_net,a = L(ΔP_a − Δπ) = 10⁻¹¹ × 15 × 133 ≈ 2×10⁻⁸ m/s and water leaves the plasma. 1.5×10⁻¹⁰ forgets the mmHg → Pa conversion; 8.6×10⁻⁸ adds the pressures instead of subtracting.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 2, 0, 1, '40 − 25 = 15 mmHg ≈ 15 × 133 ≈ 2 000 Pa; × 10⁻¹¹ = 2×10⁻⁸ m/s. Direction: the bigger force at the arteriolar end is ΔP_a, so water goes out — this already removes B.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2×10⁻⁸ m/s, from the plasma to the interstitial medium', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2×10⁻⁸ m/s, from the interstitial medium to the plasma', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.5×10⁻¹⁰ m/s', 0),
  ((SELECT MAX(id) FROM questions), 'D', '8.6×10⁻⁸ m/s', 0),
  ((SELECT MAX(id) FROM questions), 'E', '2×10⁻⁵ m/s', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the Starling model, the condition J_net,a = J_net,v (no water accumulation) leads to:', 'J_net,a = L(ΔP_a − Δπ) and J_net,v = L(Δπ − ΔP_v); equating them gives Δπ = (ΔP_a + ΔP_v)/2. With 40 and 10 mmHg this is 25 mmHg, not 30 (30 is the difference).', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Δπ = (ΔP_a + ΔP_v) / 2, the mean pressure difference', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Δπ = ΔP_a − ΔP_v', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'ΔP_a − Δπ = Δπ − ΔP_v', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'With ΔP_a = 40 mmHg and ΔP_v = 10 mmHg, it is satisfied for Δπ ≈ 30 mmHg', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Δπ = ΔP_a + ΔP_v', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In a capillary, ΔP_a − Δπ > Δπ − ΔP_v. Then:', 'ΔP_a − Δπ > Δπ − ΔP_v means J_net,a > J_net,v and Δπ < ΔP̄: water accumulates outside the vessels, i.e. edema. Dehydration of the extravascular medium is the opposite case, Δπ > ΔP̄.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Δπ is lower than the mean pressure difference (ΔP_a + ΔP_v)/2', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Δπ is higher than the mean pressure difference (ΔP_a + ΔP_v)/2', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The extravascular medium is hyperhydrated: edema', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The extravascular medium is dehydrated', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'More water leaves the plasma at the arteriolar end than returns at the venular end', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A patient has P_a = 50 mmHg and P_v = 20 mmHg (P_int = 0 as reference) and Δπ = 25 mmHg. According to the Starling model:', 'ΔP̄ = (50 + 20)/2 = 35 mmHg > Δπ = 25 mmHg, so edema forms. At the arteriolar end J_net,a = L(ΔP_a − Δπ) = L × 25 mmHg. 30 mmHg is the difference P_a − P_v, not the mean.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 3, 0, 1, 'Mean of 50 and 20 is 35; compare with 25 → ΔP̄ > Δπ → edema, which already rules out D. Arteriolar driving pressure: 50 − 25 = 25.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The mean pressure difference ΔP̄ = 30 mmHg', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The mean pressure difference ΔP̄ = 35 mmHg', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At the arteriolar end, the driving pressure of the net water flux is 25 mmHg', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The extravascular medium becomes dehydrated', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Edema forms', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A patient has a plasma albumin concentration of 20 g/L (M = 40 000 g/mol), P_a = 45 mmHg, P_v = 15 mmHg, P_int = 0, 37 °C. The capillary is impermeable to albumin only. Then:', 'Δπ = (0.5 mol/m³)·RT ≈ 1 288 Pa ≈ 9.7 mmHg. Both P_a = 45 and P_v = 15 exceed Δπ, so water leaves the plasma at both ends, and ΔP̄ = 30 mmHg > Δπ → edema. σ(albumin) = 1 since the wall is impermeable to it.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 4, 3, 1, '20/40 000 = 0.5 mol/m³; RT ≈ 2 600 Pa, so Δπ ≈ 1 300 Pa ≈ 1 300/133 ≈ 10 mmHg. P_v = 15 > 10 settles the venular direction; (45 + 15)/2 = 30.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Δπ ≈ 9.7 mmHg', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'At the venular end, water returns from the interstitial medium to the plasma', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Water leaves the plasma at both ends of the capillary', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'ΔP̄ = 30 mmHg > Δπ, so edema forms', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The reflection coefficient of the membrane for albumin is 0', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The figure shows the two forces acting on water at the arteriolar end of a capillary, under normal conditions (Starling model). About it:', 'ΔP pushes water out of the plasma, Δπ (plasma proteins) pulls it back. At the arteriolar end ΔP_a ≈ 40 mmHg > Δπ ≈ 25 mmHg, so J_net,a = L(ΔP_a − Δπ) points toward the interstitial medium; 40 mmHg is ΔP_a, not Δπ.', 'Lesson: Biophysics of solutions 10', 's1/lessons/biophysics-of-solutions-10-g1.png', 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ΔP arrow represents the hydrostatic pressure difference pushing water from the plasma to the interstitial medium', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The Δπ arrow represents the osmotic pressure difference drawing water from the interstitial medium into the plasma', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At this end ΔP_a > Δπ, so the net water flux goes from the plasma to the interstitial medium', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'At this end J_net,a = L(Δπ − ΔP_a)', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'At this end Δπ is about 40 mmHg', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the Starling exercise of the lesson, the pressure units are related by 1 mmHg =', 'The lesson converts 1 mmHg = 1.36 cmH₂O = 133 Pa. 13.6 cmH₂O and 1.33 Pa are off by a factor of 10 and 100; 760 relates mmHg to the atmosphere, not to Pa.', 'Lesson: Biophysics of solutions 10', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 10'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '133 Pa', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1.36 cmH₂O', 1),
  ((SELECT MAX(id) FROM questions), 'C', '13.6 cmH₂O', 0),
  ((SELECT MAX(id) FROM questions), 'D', '760 Pa', 0),
  ((SELECT MAX(id) FROM questions), 'E', '1.33 Pa', 0);
