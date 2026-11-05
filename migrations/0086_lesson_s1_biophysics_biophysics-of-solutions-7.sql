-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-7.json — lesson "Biophysics of solutions 7": 5 exam + 14 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 7', 's1/biophysics/biophysics-of-solutions-7.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q15',
    'EMD1 2024-2025 Q14',
    'EMD1 2024-2025 Q17',
    'EMD1 2025-2026 Q15',
    'EMD1 2025-2026 Q17'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the faraday and the equivalent, the correct propositions are:', 'The faraday is the charge of one MOLE of electrons: 1 F = N_A × e = 96 500 C. One equivalent carries 1 F, so 1 mol of a monovalent ion (Na⁺) is 1 Eq and 1 mol of Ca²⁺ is 2 Eq.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 1, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The faraday is the electric charge carried by one electron', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1 F = N_A × e ≈ 96 500 C', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1 mole of Na⁺ corresponds to 2 Eq', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1 mole of Ca²⁺ corresponds to 2 Eq', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The equivalent is the amount of a substance that carries one faraday of electric charge', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the equivalent concentration Ce of an ion i of valence zᵢ and molar concentration Cᵢ, the correct propositions are:', 'Ce = |zᵢ|Cᵢ, in Eq/l; the absolute value makes it positive for anions (a divalent anion gives Ce = 2Cᵢ). It equals the molar concentration only for monovalent ions, e.g. Al³⁺ at 1 mol/l gives 3 Eq/l.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 1, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Ce is expressed in mol/l', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'For an ion of valence −2, Ce = −2Cᵢ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Ce = |zᵢ|·Cᵢ', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'In a solution where [Al³⁺] = 1 mol/l, Ce(Al³⁺) = 3 Eq/l', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The equivalent concentration of an ion always equals its molar concentration', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the total equivalent concentration of a solution and the electroneutrality condition, the correct propositions are:', 'Ce = Ce⁺ + Ce⁻ with Ce± = Σ|zᵢ±|Cᵢ±; electroneutrality is Ce⁺ = Ce⁻, hence Ce = 2Ce⁺ = 2Ce⁻. It is the equivalents that balance, not the moles: in 2 mol/l CaCl₂, [Ca²⁺] = 2 mol/l but [Cl⁻] = 4 mol/l.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 1, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Electroneutrality is written Ce⁺ = Ce⁻', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ce = 2Ce⁺ = 2Ce⁻', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Ce = Ce⁺ − Ce⁻', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Ce⁻ = Σ|zᵢ⁻|Cᵢ⁻ is the total equivalent concentration of anions', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Electroneutrality requires equal molar concentrations of cations and anions', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '1 l of a solution contains 1 mole of Na₂SO₄ and 2 moles of KCl (totally dissociated). The equivalent concentration Ce of this solution is:', 'Ce⁺ = 1×[Na⁺] + 1×[K⁺] = 2 + 2 = 4 Eq/l; Ce⁻ = 2×[SO₄²⁻] + 1×[Cl⁻] = 2 + 2 = 4 Eq/l; Ce = 2Ce⁺ = 8 Eq/l. 4 Eq/l is only Ce⁺, and 7 is the total ionic molar concentration (ignores |z|).', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3 Eq/l', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4 Eq/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', '7 Eq/l', 0),
  ((SELECT MAX(id) FROM questions), 'D', '8 Eq/l', 1),
  ((SELECT MAX(id) FROM questions), 'E', '12 Eq/l', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '0.5 l of a solution contains 0.1 mole of AlCl₃ (totally dissociated). The correct propositions are:', '[AlCl₃] = 0.1/0.5 = 0.2 mol/l → [Al³⁺] = 0.2 mol/l, [Cl⁻] = 0.6 mol/l. Ce⁺ = 3 × 0.2 = 0.6 Eq/l (not 0.2, which forgets z), Ce⁻ = 0.6 Eq/l, Ce = 1.2 Eq/l, while the ionic molar concentration is only 0.8 mol/l.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[Cl⁻] = 0.6 mol/l', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ce⁺ = 0.2 Eq/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Ce⁻ = 0.6 Eq/l', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ce = 1.2 Eq/l', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The total ionic molar concentration equals Ce', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two compartments (1) and (2) of equal volume are separated by a dialysis membrane. (1) contains salt AB at C; (2) contains AB at C and a protein PrBz (Pr^z⁻ + zB⁺) at C′. Initially:', 'In (2), B⁺ comes from both AB and PrBz, so [B⁺]₂ = C + zC′ > [B⁺]₁ = C, and B⁺ diffuses from (2) to (1). A⁻ starts at C on both sides (no gradient) yet still moves, dragged by B⁺ for electroneutrality. Pr^z⁻ is non-diffusible.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 2, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Pr^z⁻ cannot cross the membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', '[B⁺]₁ = [B⁺]₂ = C', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'B⁺ diffuses from (2) to (1)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A⁻ has a concentration gradient across the membrane', 0),
  ((SELECT MAX(id) FROM questions), 'E', '[B⁺]₂ = C + zC′', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the same Donnan experiment (protein Pr^z⁻ in compartment (2)), n moles of B⁺ (x = n/V) have crossed the membrane at equilibrium. The correct propositions are:', 'x moles of B⁺ and of A⁻ go from (2) to (1), so [A⁻]₁ = [B⁺]₁ = C + x, [A⁻]₂ = C − x, [B⁺]₂ = C + zC′ − x. Hence [A⁻]₁ > [A⁻]₂ and [B⁺]₂ > [B⁺]₁: same-sign ions end up unequally distributed, with the inverse ratio [A⁻]₂/[A⁻]₁ = [B⁺]₁/[B⁺]₂.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 4, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[A⁻]₁ = C − x', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A⁻ diffuses from (1) to (2)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '[A⁻]₁ > [A⁻]₂', 1),
  ((SELECT MAX(id) FROM questions), 'D', '[B⁺]₂ > [B⁺]₁', 1),
  ((SELECT MAX(id) FROM questions), 'E', '[A⁻]₂ / [A⁻]₁ = [B⁺]₁ / [B⁺]₂', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In a Donnan experiment, (1) contains NaCl at C = 0.1 mol/l; (2) contains NaCl at 0.1 mol/l and a protein PrNa₂₀ (z = 20) at C′ = 2 mmol/l. Using x = zCC′/(4C + zC′), the Cl⁻ concentration in (2) at equilibrium is approximately:', 'zC′ = 20 × 0.002 = 0.04 mol/l; x = (20 × 0.1 × 0.002)/(0.4 + 0.04) ≈ 9.1 mmol/l. [Cl⁻]₂ = C − x ≈ 90.9 mmol/l. 109.1 mmol/l is [Cl⁻]₁ = [Na⁺]₁ = C + x, and 130.9 mmol/l is [Na⁺]₂ = C + zC′ − x.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 4, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '100 mmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'B', '109.1 mmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', '130.9 mmol/l', 0),
  ((SELECT MAX(id) FROM questions), 'D', '90.9 mmol/l', 1),
  ((SELECT MAX(id) FROM questions), 'E', '95.5 mmol/l', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In a Donnan experiment (protein anion in compartment (2)), at equilibrium [Na⁺]₁ = [Cl⁻]₁ = 0.15 mol/l and [Na⁺]₂ = 0.18 mol/l. The correct propositions are:', '[Cl⁻]₂/[Cl⁻]₁ = [Na⁺]₁/[Na⁺]₂ gives the equal products, so [Cl⁻]₂ = 0.15²/0.18 = 0.125 mol/l, lower than in (1). Electroneutrality in (2): [Na⁺]₂ = [Cl⁻]₂ + z[Pr] → z[Pr] = 0.18 − 0.125 = 0.055 Eq/l = 55 mEq/l.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 4, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[Cl⁻]₂ = 0.125 mol/l', 1),
  ((SELECT MAX(id) FROM questions), 'B', '[Cl⁻]₂ = 0.18 mol/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', '[Na⁺]₂·[Cl⁻]₂ = [Na⁺]₁·[Cl⁻]₁', 1),
  ((SELECT MAX(id) FROM questions), 'D', '[Cl⁻]₂ > [Cl⁻]₁', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The equivalent concentration of the protein ion in (2) is 55 mEq/l', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The figure shows a Donnan set-up: the macro-ion Pr^z⁻ is retained in compartment (2) and E is the transmembrane electric field. The correct propositions are:', 'Pr^z⁻ attracts B⁺ and repels A⁻, so the side in contact with (2) is negative and the side facing (1) positive. E points from (+) to (−), i.e. from (1) to (2), so V₁ > V₂ and V₂ − V₁ < 0.', 'Lesson: Biophysics of solutions 7', 's1/lessons/biophysics-of-solutions-7-g1.png', 'generated', 3, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The side of the membrane in contact with (2) is negatively charged', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'V₁ > V₂', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The membrane potential V₂ − V₁ is positive', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Pr^z⁻ repels B⁺ towards compartment (1)', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The electric field always points from (+) to (−)', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the Nernst equation, the correct propositions are:', 'The lesson writes the Nernst equation for diffusible ions as V₂ − V₁ = −(RT/zF)ln(C₂/C₁), equivalently −(kT/ze)ln(C₂/C₁), since F = N_A·e and R = N_A·k. E = −(V₂ − V₁)/l with l the membrane thickness. It does not apply to the retained Pr^z⁻.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 3, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'V₂ − V₁ = −(RT/zF)·ln(C₂/C₁)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'V₂ − V₁ = −(kT/ze)·ln(C₂/C₁)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It applies to the non-diffusible ions', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'kT/ze = RT/zF because F = N_A·e and R = N_A·k', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'In E = −(V₂ − V₁)/l, l is the membrane thickness', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'At 37°C, the Cl⁻ concentration is 100 mmol/l in compartment (1) and 10 mmol/l in compartment (2). Using the Nernst equation (R = 8.31 SI, F = 96 500 C/mol), the potential V₂ − V₁ for Cl⁻ is approximately:', 'V₂ − V₁ = −(RT/zF)ln(C₂/C₁) with z = −1: = +(8.31 × 310/96 500) × ln(0.1) = 0.0267 × (−2.303) ≈ −61.5 mV. +61.5 mV forgets that z = −1 for Cl⁻, ±26.7 mV uses log₁₀ instead of ln, and −59.5 mV uses 300 K instead of 310 K.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 3, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '+61.5 mV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−26.7 mV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '−61.5 mV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '+26.7 mV', 0),
  ((SELECT MAX(id) FROM questions), 'E', '−59.5 mV', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the Donnan (Gibbs–Donnan) equilibrium equation, the correct propositions are:', 'Equating the Nernst expressions of V₂ − V₁ for two diffusible ions gives (1/z)ln([I]₂/[I]₁) = (1/z′)ln([I′]₂/[I′]₁); since Ce = |z|[I], the same ratio holds with Ce. With z = −1 and +1 it gives the INVERSE ratio [A⁻]₂/[A⁻]₁ = [B⁺]₁/[B⁺]₂.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 4, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is obtained by writing that two diffusible ions see the same potential V₂ − V₁', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Applied to A⁻ and B⁺, it gives [A⁻]₂/[A⁻]₁ = [B⁺]₂/[B⁺]₁', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(1/z)·ln([I]₂/[I]₁) = (1/z′)·ln([I′]₂/[I′]₁) for two diffusible ions I and I′', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It can be written with equivalent concentrations: (1/z)·ln(Ce₂(I)/Ce₁(I)) = (1/z′)·ln(Ce₂(I′)/Ce₁(I′))', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It is applied to the non-diffusible macro-ion Pr^z⁻', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Which of the following solutions (totally dissociated) have a total equivalent concentration Ce = 2 Eq/l?', 'Ce = 2Ce⁺. NaCl 1 mol/l: Ce⁺ = 1 → 2 Eq/l. CaCl₂ 0.5 mol/l: Ce⁺ = 2 × 0.5 = 1 → 2 Eq/l. AlCl₃ 1/3 mol/l: Ce⁺ = 3 × 1/3 = 1 → 2 Eq/l. CaCl₂ 1 mol/l gives 4 Eq/l and NaCl 0.5 mol/l gives 1 Eq/l.', 'Lesson: Biophysics of solutions 7', NULL, 'generated', 1, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 7'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'NaCl at 1 mol/l', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'CaCl₂ at 1 mol/l', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'CaCl₂ at 0.5 mol/l', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'NaCl at 0.5 mol/l', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'AlCl₃ at 1/3 mol/l', 1);
