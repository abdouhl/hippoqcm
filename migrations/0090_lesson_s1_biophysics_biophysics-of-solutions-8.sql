-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-8.json — lesson "Biophysics of solutions 8": 3 exam + 17 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 8', 's1/biophysics/biophysics-of-solutions-8.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND origin = 'exam' AND source IN (
    'EMD1 2024-2025 Q14',
    'EMD1 2024-2025 Q17',
    'EMD1 2025-2026 Q17'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About oncotic pressure, the correct propositions are:', 'Oncotic pressure is ωₚRT, the osmotic pressure due to proteins; it expresses how easily proteins attract water. The total Δπ also contains Δωᵢ·RT from the diffusible ions, so the two are equal only when Δωᵢ = 0.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 1, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is the term ωₚRT of the osmotic pressure Δπ = Δωᵢ·RT + ωₚ·RT', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is the osmotic pressure due to the diffusible ions', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It expresses the ease with which proteins attract water', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It always equals the total osmotic pressure Δπ, whatever the distribution of the diffusible ions', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'It is the osmotic pressure due to the proteins', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two compartments are separated by a dialysis membrane; compartment (2) contains a protein of osmolarity ωₚ. At equilibrium ω₂ > ω₁. The correct propositions are:', 'Water moves toward the higher total osmolarity: ω₂ > ω₁ ⇒ (1) → (2). ω₂ − ω₁ = [(ωᵢ)₂ + ωₚ] − (ωᵢ)₁ = Δωᵢ + ωₚ, so Δπ = Δωᵢ·RT + ωₚ·RT, which is ωₚRT only when Δωᵢ = 0.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 1, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Δπ = ωₚRT in all cases', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Water flows from (1) to (2)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'ω₂ − ω₁ = Δωᵢ + ωₚ, where Δωᵢ = (ωᵢ)₂ − (ωᵢ)₁ is the difference of diffusible-ion osmolarities', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Water flows from (2) to (1)', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'If the diffusible ions had the same total osmolarity on both sides, Δπ would reduce to the oncotic pressure', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A dialysis membrane separates two compartments of equal volume: (1) contains NaCl at 0.2 mol/l and (2) NaCl at 0.1 mol/l. At equilibrium:', 'Both ions cross the dialysis membrane, so each ends at C∞ = (C₁ + C₂)/2 = 0.15 mol/l on both sides (0.3 forgets to halve). With Δωᵢ = 0 and no protein, Δπ = 0, and C₁ = C₂ gives V₁ − V₂ = 0.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 1, 4, 1, 'Equal volumes: just average, (0.2 + 0.1)/2 = 0.15 mol/l. Everything is the same on both sides, so Δπ and the potential are both zero, no calculation needed.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[Na⁺]₁ = [Na⁺]₂ = 0.15 mol/l', 1),
  ((SELECT MAX(id) FROM questions), 'B', '[Cl⁻]₁ = 0.2 mol/l and [Cl⁻]₂ = 0.1 mol/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', '[Na⁺]₁ = [Na⁺]₂ = 0.3 mol/l', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The osmotic pressure between the two compartments is zero', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The membrane potential V₁ − V₂ is zero', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a dialysis membrane, an undissociated protein at concentration C is poured into (1) and a NaCl solution at concentration C′ into (2) (equal volumes). At equilibrium:', 'The uncharged protein retains no ions: Na⁺ and Cl⁻ simply equalise at C′/2 on both sides, so Δωᵢ = 0 and Δπ = ωₚRT = CRT, water going (2) → (1). The counter-pressure CRT is applied in the opposite direction, (1) → (2).', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 2, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[Na⁺]₁ > [Na⁺]₂', 0),
  ((SELECT MAX(id) FROM questions), 'B', '[Na⁺]₁ = [Cl⁻]₁ = C′/2', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Δπ = (C + C′)RT', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Δπ = CRT, with water flowing from (2) to (1)', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'To cancel the water flux, a pressure equal to CRT must be applied from (1) toward (2)', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a dialysis membrane, compartment (1) receives an undissociated protein at 2 mmol/l and compartment (2) NaCl at 100 mmol/l (equal volumes, T = 300 K, R = 8.31 SI). The pressure that must be applied to cancel the water flux at equilibrium is about:', 'Na⁺ and Cl⁻ are at 50 mmol/l on both sides, so Δωᵢ = 0 and Δπ = CRT = 2 mol/m³ × 8.31 × 300 ≈ 5 000 Pa. 254 kPa wrongly adds the salt; 5.0 Pa forgets that 1 mmol/l = 1 mol/m³.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 2, 4, 1, 'RT at 300 K ≈ 8.31 × 300 ≈ 2 500 J/mol. 2 mmol/l = 2 mol/m³, so Δπ ≈ 2 × 2 500 = 5 000 Pa. The salt cancels out, which eliminates every option in the hundreds of kPa.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.5 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'B', '254 kPa', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5.0 kPa', 1),
  ((SELECT MAX(id) FROM questions), 'D', '5.0 Pa', 0),
  ((SELECT MAX(id) FROM questions), 'E', '125 kPa', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a dialysis membrane, a fully dissociated protein PrNa_z (concentration C) is poured into (1) and NaCl (concentration C′) into (2). The correct propositions are:', 'Only Cl⁻ has a pure (2) → (1) gradient; n moles of Cl⁻ cross with n moles of Na⁺ (electroneutrality), giving [Cl⁻]₁ = x, [Na⁺]₁ = zC + x, [Na⁺]₂ = [Cl⁻]₂ = C′ − x. The protein cannot cross, and Cl⁻ stays unequal (x vs C′ − x): that is the Donnan effect.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 3, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Initially, Cl⁻ diffuses from (2) to (1)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Each mole of Cl⁻ that crosses is accompanied by one mole of Na⁺ in the same direction', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The proteinate Pr^z⁻ diffuses from (1) to (2)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'At equilibrium, [Na⁺]₁ = zC + x and [Na⁺]₂ = C′ − x, x being the concentration of Cl⁻ that crossed', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'At equilibrium, [Cl⁻]₁ = [Cl⁻]₂', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the same experiment (PrNa_z at C in (1), NaCl at C′ in (2), x = concentration of Cl⁻ that crossed into (1)), the osmotic pressure at equilibrium is:', '(ωᵢ)₁ = (zC + x) + x and (ωᵢ)₂ = 2(C′ − x), so Δωᵢ = zC − 2C′ + 4x; adding the oncotic term C gives A, and D is the same expression split into Δωᵢ·RT + ωₚRT. Option C forgets that x also leaves (2), and CRT alone ignores the unequal ions.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 3, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Δπ = (zC − 2C′ + 4x + C)RT', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Δπ = CRT', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Δπ = (zC + 2x − 2C′ + C)RT', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Δπ = (zC − 2C′ + 4x)RT + CRT', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Δπ = (zC + 2C′ + C)RT', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In a Donnan experiment, (1) contains PrNa₁₅ at C = 10 mmol/l and (2) NaCl at C′ = 150 mmol/l. At equilibrium x = 50 mmol/l of Cl⁻ has crossed into (1). The osmolarity difference ω₁ − ω₂ responsible for Δπ is:', 'ω₁ = [Pr] + [Na⁺]₁ + [Cl⁻]₁ = 10 + (150 + 50) + 50 = 260; ω₂ = 2(150 − 50) = 200; difference 60 mosmol/l = zC − 2C′ + 4x + C. 10 is the oncotic part alone, which ignores the unequal ion distribution.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 3, 4, 1, 'Fill the equilibrium table: (1) has 10 + 200 + 50 = 260, (2) has 100 + 100 = 200. Subtract: 60. Or plug into zC − 2C′ + 4x + C = 150 − 300 + 200 + 10.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10 mosmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'B', '60 mosmol/l', 1),
  ((SELECT MAX(id) FROM questions), 'C', '200 mosmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'D', '260 mosmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'E', '460 mosmol/l', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The figure shows the membrane at equilibrium in a Donnan experiment (fully dissociated proteinate Pr^z⁻ in (1), NaCl in (2)) with the electric field E across it. The correct propositions are:', 'E points from the higher to the lower potential: (2) → (1) means V₂ > V₁, so V₁ − V₂ < 0 and the proteinate side is the negative face. The value comes from V₁ − V₂ = −(RT/zF)·ln(C₁/C₂) for Na⁺ or Cl⁻.', 'Lesson: Biophysics of solutions 8', 's1/lessons/biophysics-of-solutions-8-g1.png', 'generated', 3, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Compartment (1) is at the higher potential, since the field points toward it', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'V₁ − V₂ > 0', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The field points from (2) to (1), so V₂ > V₁', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The face on the proteinate side (1) is negative', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The potential difference is given by V₁ − V₂ = −(RT/zF)·ln(C₁/C₂) applied to a diffusible ion', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'At Donnan equilibrium at 37 °C, [Na⁺]₁ = 200, [Cl⁻]₁ = 50, [Na⁺]₂ = [Cl⁻]₂ = 100 (mmol/l); the proteinate is in (1). The membrane potential V₁ − V₂ is about:', 'For Na⁺: V₁ − V₂ = −(RT/F)·ln(200/100) = −26.7 × ln 2 ≈ −18.5 mV; Cl⁻ (z = −1) gives the same: −(RT/F)·ln(100/50). −8.0 mV uses log₁₀ instead of ln; a positive value contradicts the negative proteinate side.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 3, 2, 1, 'RT/F ≈ 26.7 mV at 37 °C and ln 2 ≈ 0.69: 26.7 × 0.7 ≈ 18.7 → 18.5 mV. The protein side is negative, so the sign is minus; checking with Cl⁻ (ratio 100/50 = 2 again) confirms the value.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '+18.5 mV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−8.0 mV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−37 mV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−18.5 mV', 1),
  ((SELECT MAX(id) FROM questions), 'E', '−9.3 mV', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A voltage opposite to the membrane potential is applied to the Donnan system at equilibrium (PrNa_z at C in (1), NaCl at C′ in (2)). In the new equilibrium:', 'With V₁ − V₂ = 0, −(RT/zF)·ln(C₁/C₂) = 0 ⇒ C₁ = C₂ for each diffusible ion: [Cl⁻] = (x + C′ − x)/2 = C′/2 and [Na⁺] = (zC + x + C′ − x)/2 = (zC + C′)/2. The protein still cannot cross.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 3, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'V₁ − V₂ = 0, so each diffusible ion has the same concentration on both sides', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The proteinate becomes equally distributed between (1) and (2)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '[Cl⁻]₁ = [Cl⁻]₂ = C′/2', 1),
  ((SELECT MAX(id) FROM questions), 'D', '[Na⁺]₁ = [Na⁺]₂ = (zC + C′)/2', 1),
  ((SELECT MAX(id) FROM questions), 'E', '[Na⁺]₁ stays equal to zC + x', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a dialysis membrane, (1) contains PrNa_z at C, and (2) contains NaCl at C′ plus the same PrNa_z at the same concentration C. At equilibrium:', 'With the same proteinate on both sides, the diffusible ions just equalise: Na⁺ averages zC and C′ + zC to (C′ + 2zC)/2, Cl⁻ averages to C′/2. C₁ = C₂ for every ion, so V₁ − V₂ = 0: no Donnan effect.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 4, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[Na⁺]₁ = zC', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'There is no Donnan effect, since [Pr^z⁻]₁ = [Pr^z⁻]₂', 1),
  ((SELECT MAX(id) FROM questions), 'C', '[Na⁺]₁ = [Na⁺]₂ = (C′ + 2zC)/2', 1),
  ((SELECT MAX(id) FROM questions), 'D', '[Cl⁻]₁ = [Cl⁻]₂ = C′/2', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The membrane potential is zero', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About osmotically active particles and Donnan equilibrium, the correct propositions are:', 'Non-diffusible particles are the osmotically active ones across a semipermeable membrane. Across a dialysis membrane, diffusible particles diffuse until equilibrium, then stop, and together with the protein contribute to the osmotic pressure (Δπ = Δωᵢ·RT + ωₚRT).', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 4, 4, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Across a semipermeable membrane, particles that cannot diffuse cause water to move and generate osmotic pressure', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Particles that can cross the membrane are said to be osmotically active', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In Donnan equilibrium, the diffusible ions keep diffusing indefinitely across the dialysis membrane', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'At Donnan equilibrium, only the non-diffusible protein contributes to the osmotic pressure', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'At Donnan equilibrium, the diffusible particles, together with the non-diffusible protein, contribute to the osmotic pressure', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About fluids and their flow, the correct propositions are:', 'Fluids are liquids and gases; flow is their overall motion; a streamline is tangent (not perpendicular) to the velocity vector at every point.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A streamline is perpendicular to the velocity vector at every point', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Fluids are liquids and gases', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Flow is the overall motion of a fluid', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A streamline is a curve that is tangent to the velocity vector at every point', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Only liquids are fluids', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About laminar flow, turbulent flow and viscosity, the correct propositions are:', 'Flow is laminar at low velocities (parallel streamlines) and turbulent at high velocities (disordered). Viscosity is the stickiness, the resistance to the laminar flow of a fluid.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In laminar flow, the streamlines are parallel', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Turbulent flow occurs at high velocities and is disordered', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Flow is laminar at high velocities', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Viscosity is the resistance of a fluid to laminar flow', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'In turbulent flow, the streamlines are parallel', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the viscosity coefficient η, the correct propositions are:', '[η] = poiseuille, 1 Pl = 1 Pa·s (a product, not a quotient). A perfect fluid has η = 0; a real fluid has η ≠ 0.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A real fluid has zero viscosity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'η is expressed in poiseuille (Pl), with 1 Pl = 1 Pa·s', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1 Pl = 1 Pa/s', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A perfect fluid has an infinite viscosity', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A perfect fluid has η = 0', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A pump delivers 5 litres of liquid per minute. Its volumetric flow rate Q_V = dV/dt in SI units is about:', 'Q_V = dV/dt in m³/s: 5 l = 5 × 10⁻³ m³ per 60 s ⇒ 8.3 × 10⁻⁵ m³/s. 8.3 × 10⁻² forgets the l → m³ conversion; 5 × 10⁻³ forgets the minute → second one.', 'Lesson: Biophysics of solutions 8', NULL, 'generated', 5, 0, 1, '1 l = 10⁻³ m³ and 1 min = 60 s: 5/60 ≈ 0.083, times 10⁻³ gives 8.3 × 10⁻⁵ m³/s. Two conversions, so the answer must be far below 10⁻² — only options D and E are that small, and D (10⁻⁸) has one conversion too many.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 8'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '8.3 × 10⁻² m³/s', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.3 m³/s', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5 × 10⁻³ m³/s', 0),
  ((SELECT MAX(id) FROM questions), 'D', '8.3 × 10⁻⁸ m³/s', 0),
  ((SELECT MAX(id) FROM questions), 'E', '8.3 × 10⁻⁵ m³/s', 1);
