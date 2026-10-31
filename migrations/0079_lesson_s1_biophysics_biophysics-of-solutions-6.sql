-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-6.json — lesson "Biophysics of solutions 6": 6 exam + 15 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 6', 's1/biophysics/biophysics-of-solutions-6.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q8',
    'EMD1 2023-2024 Q9',
    'EMD1 2024-2025 Q5',
    'EMD1 2024-2025 Q8',
    'EMD1 2025-2026 Q5',
    'EMD1 2025-2026 Q10'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the diffusion coefficient of a solute in a membrane, Dm = D(1 − σ)·Sp/S, the correct propositions are:', 'Dm = D(1 − σ)Sp/S is the solute''s diffusion coefficient in the membrane, and Jd = −Dm·dC/dx. Sp is the total pore area (permeable and impermeable). Because (1 − σ) ≤ 1 and Sp/S < 1, Dm is smaller than D, and it is zero when σ = 1.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 1, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Dm is the diffusion coefficient of the solute in the membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sp is the area of the permeable pores only', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Dm is greater than D because the membrane channels the solute', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'If σ = 1, Dm = 0', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The diffusive flux can be written Jd = +Dm·dC/dx (no minus sign)', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the diffusive permeability P of a membrane, the correct propositions are:', 'P = (D/l)(S′/S) = Dm/l, in m/s (not m²/s, which is the unit of D). Since l is in the denominator, P is inversely proportional to the thickness. From Jdᵢ = Qᵢ/S = P|ΔCᵢ| you get P = Qᵢ/(S|ΔCᵢ|).', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 1, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P = (D/l)·(S′/S) = Dm/l', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'P is expressed in m²/s', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The initial diffusive flux is Jdᵢ = P·|ΔCᵢ|', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'P is proportional to the membrane thickness l', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'P = Qᵢ / (S·|ΔCᵢ|)', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the relation D = kT/f, the correct propositions are:', 'D = kT/f, where k = 1.38 × 10⁻²³ J/K and f is the solvent''s friction on the particles (f = 6πηr for spheres). Because f is in the denominator, more friction means a smaller D. The lesson''s worked answers give D in m²/s.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 1, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'k is Boltzmann''s constant, 1.38 × 10⁻²³ J/K', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'f is the friction coefficient of the solvent on the diffusing particles', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'D increases when friction increases', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'For spherical particles of radius r, f = 6πηr', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'D is expressed in m²/s', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'For spherical particles, D = Cste·(T/η)·(ρ/M)^(1/3). The correct propositions are:', 'From M = 𝒩ρ(4/3)πr³, r = Cste·(M/ρ)^(1/3). Then D = kT/(6πηr) is proportional to T/η and to (ρ/M)^(1/3). So D varies with the cube root of ρ, not with ρ itself, and it is halved, not doubled, when η doubles.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 1, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'D increases with temperature', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'D is inversely proportional to the cube root of the molar mass M', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'D is proportional to the density ρ', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Doubling the viscosity of the solvent doubles D', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The particle radius is r = Cste·(M/ρ)^(1/3)', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two spherical proteins A and B have the same density and are in the same solvent at the same temperature. B''s molar mass is 8 times A''s. B''s diffusion coefficient is:', 'D ∝ (ρ/M)^(1/3) at fixed T and η, so D_B = D_A·(1/8)^(1/3) = D_A/2. A heavier particle diffuses more slowly, never faster, and the dependence is a cube root, not a square root.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 1, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'D_A / 8', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'D_A / √8', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'D_A / 2', 1),
  ((SELECT MAX(id) FROM questions), 'D', '2·D_A', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'D_A / 4', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A spherical particle has D = 6 × 10⁻¹¹ m²/s in a solvent of viscosity 1 mPa·s at 300 K. At the same temperature, in a solvent of viscosity 1.5 mPa·s, its diffusion coefficient becomes:', 'D = kT/(6πηr) is inversely proportional to η: 6 × 10⁻¹¹ / 1.5 = 4 × 10⁻¹¹ m²/s. Multiplying by 1.5 instead of dividing gives 9 × 10⁻¹¹, and treating the effect as a cube root gives 5.2 × 10⁻¹¹.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 1, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '9 × 10⁻¹¹ m²/s', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5.2 × 10⁻¹¹ m²/s', 0),
  ((SELECT MAX(id) FROM questions), 'C', '6 × 10⁻¹¹ m²/s', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4 × 10⁻¹¹ m²/s', 1),
  ((SELECT MAX(id) FROM questions), 'E', '2.7 × 10⁻¹¹ m²/s', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A spherical macromolecule has a diffusion coefficient D = 2 × 10⁻¹¹ m²/s in water at 27°C (η = 10⁻³ Pa·s; k = 1.38 × 10⁻²³ J/K). Its radius is approximately:', 'r = kT/(6πηD) = (1.38 × 10⁻²³ × 300)/(6π × 10⁻³ × 2 × 10⁻¹¹) ≈ 1.1 × 10⁻⁸ m = 11 nm. Using 273 K instead of 300 K gives 10 nm, and leaving out the 6 gives 66 nm.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 3, 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.1 nm', 0),
  ((SELECT MAX(id) FROM questions), 'B', '11 nm', 1),
  ((SELECT MAX(id) FROM questions), 'C', '10 nm', 0),
  ((SELECT MAX(id) FROM questions), 'D', '66 nm', 0),
  ((SELECT MAX(id) FROM questions), 'E', '110 nm', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two aqueous solutions of the same solute, 40 mmol/L and 100 mmol/L, are separated by a dialysis membrane with a total area of 5 cm². The initial molar flow rate of the solute is 9 pmol/s. The diffusive permeability of the membrane (in 10⁻⁹ m/s) is:', 'P = Qᵢ/(S|ΔCᵢ|) = 9 × 10⁻¹² / (5 × 10⁻⁴ × 60) = 0.3 × 10⁻⁹ m/s (60 mmol/L = 60 mol/m³). Using the sum of the concentrations (140) gives 0.13, and using only 40 gives 0.45.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.13', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.3', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.45', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3.0', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.03', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued: P = 0.3 × 10⁻⁹ m/s.) The membrane is 20 µm thick, its pores make up 2% of its total area, and σ = 0. The diffusion coefficient D of the solute is:', 'With σ = 0, P = (D/l)(Sp/S), so D = P·l·S/Sp = 0.3 × 10⁻⁹ × 20 × 10⁻⁶ / 0.02 = 3 × 10⁻¹³ m²/s. Forgetting the pore fraction gives 6 × 10⁻¹⁵, multiplying by it gives 1.2 × 10⁻¹⁶, and forgetting l gives 1.5 × 10⁻⁸.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3 × 10⁻¹³ m²/s', 1),
  ((SELECT MAX(id) FROM questions), 'B', '6 × 10⁻¹⁵ m²/s', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.2 × 10⁻¹⁶ m²/s', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.5 × 10⁻⁸ m²/s', 0),
  ((SELECT MAX(id) FROM questions), 'E', '3 × 10⁻¹¹ m²/s', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two glucose solutions, 0.5 mol/L and 0.2 mol/L, are separated by a dialysis membrane with an area of 10 cm². The membrane''s diffusive permeability to glucose is 4 × 10⁻⁶ m/s. The initial molar flow rate is:', 'Qᵢ = P·S·|ΔCᵢ| = 4 × 10⁻⁶ × 10 × 10⁻⁴ × 0.3 × 10³ = 1.2 × 10⁻⁶ mol/s = 1.2 µmol/s. Concentrations must be converted from mol/L to mol/m³ (× 10³); forgetting that gives 1.2 × 10⁻³, and using the sum (0.7) gives 2.8.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 2, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.12 µmol/s', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.8 µmol/s', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.2 µmol/s', 1),
  ((SELECT MAX(id) FROM questions), 'D', '12 µmol/s', 0),
  ((SELECT MAX(id) FROM questions), 'E', '1.2 × 10⁻³ µmol/s', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An artificial kidney has a diffusion surface S = 1 m² and an average pore length l = 40 µm. The dialysate is constantly renewed and free of urea. The diffusion coefficient of urea in the membrane is Dm = 8 × 10⁻¹⁰ m²/s. For an initial blood urea concentration of 2 g/L, the initial mass flow rate of urea is:', 'Qᵢ = (Dm·S/l)·|ΔCᵢ| with |ΔCᵢ| = C₀ − 0 = 2 g/L = 2 × 10³ g/m³. So Qᵢ = (8 × 10⁻¹⁰ × 1 / 40 × 10⁻⁶) × 2 × 10³ = 4 × 10⁻² g/s = 40 mg/s.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 3, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4 mg/s', 0),
  ((SELECT MAX(id) FROM questions), 'B', '400 mg/s', 0),
  ((SELECT MAX(id) FROM questions), 'C', '20 mg/s', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.04 mg/s', 0),
  ((SELECT MAX(id) FROM questions), 'E', '40 mg/s', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the artificial-kidney calculation (blood at C₁ᵢ = C₀; dialysate constantly renewed, so C₂ᵢ = 0), the correct propositions are:', 'Qᵢ = P·S·|ΔCᵢ| = (Dm·S/l)·|ΔCᵢ|, and |ΔCᵢ| = C₀ − 0 = C₀ because the dialysate is urea-free. Qᵢ is proportional to S and inversely proportional to l; a urea-free dialysate only sets ΔCᵢ.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 3, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '|ΔCᵢ| = C₀', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Qᵢ = (dm/dt)ᵢ = (Dm·S/l)·C₀', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Qᵢ = (Dm·l/S)·C₀', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Because the dialysate is urea-free, Qᵢ does not depend on the pore length', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Doubling the diffusion surface S halves Qᵢ', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The initial molar flow rate of a solute across a dialysis membrane is Qᵢ = P·S·|ΔCᵢ|, with P = Dm/l. Which changes, each made alone, double Qᵢ?', 'Qᵢ is proportional to |ΔCᵢ| and S, and P = Dm/l is inversely proportional to l, so halving l doubles Qᵢ. Doubling S at a fixed pore fraction leaves P unchanged and doubles Qᵢ. Doubling η halves D (D = kT/6πηr), so it halves Qᵢ.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 1, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Doubling the concentration difference |ΔCᵢ|', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Halving the membrane thickness l', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Doubling the membrane thickness l', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Doubling the total membrane area while keeping the same pore fraction Sp/S', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Doubling the viscosity of the solvent', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About dialysis and hemodialysis, the correct propositions are:', 'Hemodialysis exchanges take place outside the body, between the blood and the dialysate, through an artificial filter called a dialyzer. Peritoneal dialysis takes place inside the body, across the peritoneum.', 'Lesson: Biophysics of solutions 6', NULL, 'generated', 1, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In medicine, dialysis purifies the blood of its waste products (urea, creatinine, excess potassium or liquid) across a membrane', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In hemodialysis, the exchanges take place inside the body', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In hemodialysis, the artificial filter is called a dialyzer', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The fluid that exchanges with the blood is called the dialysate', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Peritoneal dialysis uses an artificial filter placed outside the body', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The figure shows a dialysis technique (one label has been hidden). The correct propositions are:', 'This is peritoneal dialysis: dialysate is run into the abdominal cavity and exchanges with the blood inside the body, across the peritoneum. Hemodialysis instead sends the blood to an external dialyzer.', 'Lesson: Biophysics of solutions 6', 's1/lessons/biophysics-of-solutions-6-g1.png', 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 6'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is hemodialysis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The exchanges between the blood and the dialysate take place inside the body', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The membrane used is the peritoneum, a richly vascularized membrane that envelops the abdominal organs and the digestive tract', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The blood flows through an external dialyzer', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The dialysate is placed in the abdominal cavity', 1);
