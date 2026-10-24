-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-5.json — lesson "Biophysics of solutions 5": 3 exam + 15 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 5', 's1/biophysics/biophysics-of-solutions-5.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND origin = 'exam' AND source IN (
    'EMD1 2023-2024 Q10',
    'EMD1 2023-2024 Q11',
    'EMD1 2024-2025 Q10'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About renal work, the correct propositions are:', 'ΔW = n₀RT·ln(ωu/ωpl), where ωu and ωpl are the solute''s osmolarities (not molar masses) in urine and plasma. If ωu = ωpl, ln(1) = 0, so the work is zero, not maximal.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ΔW = n₀RT·ln(ωu/ωpl) is the work needed to transfer n₀ osmoles of a substance from the blood to the urine', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'ωu and ωpl are the molar masses of the solute in the urine and in the plasma', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Renal work is the energy expended by the kidneys to filter the blood and to secrete or reabsorb solutes such as sodium, urea or glucose', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'When ωu = ωpl, the renal work is maximal', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'For a fixed n₀ and plasma osmolarity, a higher urinary osmolarity of the solute increases the renal work', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A patient eliminates 0.48 mol of urea per 24 h in 1.2 L of urine. His uremia (mass concentration of urea in the blood) is 0.3 g/L (M urea = 60 g/mol). The ratio ωu/ωpl of urea equals:', 'ωu = n₀/V = 0.48/1.2 = 0.4 osmol/L; ωpl = Cp/M = 0.3/60 = 0.005 osmol/L, so the ratio is 80. 1.33 comes from dividing by the mass concentration (0.3 g/L) without converting it to osmol/L.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.33', 0),
  ((SELECT MAX(id) FROM questions), 'B', '80', 1),
  ((SELECT MAX(id) FROM questions), 'C', '40', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.0125', 0),
  ((SELECT MAX(id) FROM questions), 'E', '160', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued: 0.48 mol of urea per 24 h, ωu/ωpl = 80, T = 310 K, R = 8.31 SI.) The minimum power provided by each kidney to eliminate this urea is:', 'ΔW = 0.48 × 8.31 × 310 × ln(80) ≈ 5418 J per day; per kidney P = ½ ΔW/Δt = 5418/172800 ≈ 31.4 mW. 62.7 mW is the power of both kidneys together; 13.6 mW uses log₁₀ instead of ln; 30.3 mW uses T = 300 K.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '62.7 mW', 0),
  ((SELECT MAX(id) FROM questions), 'B', '13.6 mW', 0),
  ((SELECT MAX(id) FROM questions), 'C', '30.3 mW', 0),
  ((SELECT MAX(id) FROM questions), 'D', '31.4 mW', 1),
  ((SELECT MAX(id) FROM questions), 'E', '15.7 mW', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two subjects eliminate the same number of osmoles of urea per day, with the same plasma urea osmolarity ωpl = 0.005 osmol/L and the same temperature. The urinary osmolarity of urea is 0.3 osmol/L for subject 1 and 0.6 osmol/L for subject 2:', 'W ∝ ln(ωu/ωpl): W₂/W₁ = ln(120)/ln(60) ≈ 1.17, not 2, because the work depends on the logarithm of the osmolarity ratio. Same n₀ with a higher ωu means a smaller urine volume (V = n₀/ωu), so subject 2 has the smaller volume; T appears directly in ΔW = n₀RT·ln(ωu/ωpl).', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The kidneys of subject 2 provide more work', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The renal work of subject 2 is twice that of subject 1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'W₂/W₁ ≈ 1.17', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Subject 2 has the larger urine volume', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The renal work does not depend on the temperature', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A patient with renal insufficiency is asked to drink plenty of water; the amount of urea to eliminate and the uremia remain unchanged. The correct propositions are:', 'Drinking water increases urine volume and decreases the urinary osmolarity of urea (ωu = n₀/V), so ln(ωu/ωpl) and the work imposed on the nephrons fall (e.g. 21.97 mW → 16.08 mW in the course exercise). This protects the remaining nephrons; water intake does not increase renal work.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The urine volume increases', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The urinary osmolarity of urea increases', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The ratio ωu/ωpl decreases', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The power provided by each kidney decreases', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The renal work increases because more water has to be filtered', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About transport phenomena, the correct propositions are:', 'Transport phenomena depend on the nature of the particles, the osmolarity of the solutions and the pressures on either side of the membrane. There are three types: passive, facilitated passive and active.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are exchanges of water and solutes across membranes between the intracellular and extracellular compartments', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'They depend on the nature of the transported particles (size, charge, shape)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'They depend on the osmolarity of the solutions', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'They are independent of the pressures exerted on either side of the membrane', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'There are only two types of transport: passive and active', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Passive transport occurs via thermal agitation of particles. The correct propositions are:', 'Concentration difference → diffusion; pressure difference → convection; electrical potential difference → migration. Only active transport consumes ATP.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A difference in concentrations causes diffusion', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A difference in pressures causes migration', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A difference in electrical potentials causes convection', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A difference in pressures causes convection', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Passive transport consumes chemical energy from ATP hydrolysis', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The correct propositions are:', 'Facilitated passive transport uses membrane transporters (specific channels) without energy expenditure; active transport uses membrane transporters and consumes ATP. Thermal agitation drives simple passive transport.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Facilitated passive transport requires ATP hydrolysis', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Active transport is carried out by membrane transporters and consumes chemical energy (ATP hydrolysis)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Facilitated passive transport moves certain particles through specific channels, by proteins, without energy expenditure', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Active transport is driven only by the thermal agitation of particles', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Facilitated passive transport is one of the three types of transport', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The same solute is placed in compartments (1) and (2) of the setup shown, with C₁ᵢ > C₂ᵢ and V₁ = V₂. The correct propositions are:', 'Solute diffuses from (1) to (2) (high to low concentration) until the concentrations are equal; the total number of moles is conserved, giving C∞ = (C₁ᵢ + C₂ᵢ)/2 when V₁ = V₂. By convention, solute flows occur first, then liquid flows.', 'Lesson: Biophysics of solutions 5', 's1/lessons/biophysics-of-solutions-5-g1.png', 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The solute diffuses from (2) to (1)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Diffusion continues until C₁f = C₂f', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At the final state, C∞ = (C₁ᵢ + C₂ᵢ)/2', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The total number of moles of solute decreases during diffusion', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'By convention, liquid flows are assumed to occur before solute flows', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A dialysis membrane separates compartment (1) (V₁ = 1 L, C₁ᵢ = 0.2 mol/L) and compartment (2) (V₂ = 3 L, C₂ᵢ = 0.04 mol/L) of the same solute. The final concentration C∞ is:', 'C∞ = (C₁ᵢV₁ + C₂ᵢV₂)/(V₁ + V₂) = (0.2 + 0.12)/4 = 0.08 mol/L. 0.12 mol/L is the simple mean (C₁ᵢ + C₂ᵢ)/2, valid only if V₁ = V₂; 0.32 is the total number of moles.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.12 mol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.16 mol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.32 mol/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.06 mol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.08 mol/L', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About Fick''s law Q = dn/dt = −DS′·dC/dx, the correct propositions are:', 'Q is a molar flow rate (mol/s), D the solute''s diffusion coefficient (m²/s) and dC/dx the concentration gradient in mol/m⁴ (mol/m³ per m). S′ is the permeable pore surface area, not the total membrane surface S.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[Q] = mol/s', 1),
  ((SELECT MAX(id) FROM questions), 'B', '[D] = m²/s', 1),
  ((SELECT MAX(id) FROM questions), 'C', '[dC/dx] = mol/m³', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'S′ is the total surface area of the membrane', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'D is the diffusion coefficient of the solute', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two compartments with C₁ᵢ > C₂ᵢ are separated by a membrane of width l, the x-axis going from (1) to (2) with its origin at the membrane. About the initial molar flow rate Qᵢ:', 'With dCᵢ ≡ ΔCᵢ = C₂ᵢ − C₁ᵢ < 0 and dx ≡ l, Qᵢ = −DS′ΔCᵢ/l = (DS′/l)|ΔCᵢ| > 0. Qᵢ is inversely proportional to l, and the minus sign means the solute moves down its gradient (from high to low concentration).', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ΔCᵢ = C₂ᵢ − C₁ᵢ is negative', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Qᵢ = −DS′·ΔCᵢ/l is positive: the solute flows along +x, from (1) to (2)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Qᵢ increases when the membrane is wider (larger l)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Qᵢ = (DS′/l)·|ΔCᵢ|', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The minus sign in Fick''s law means the solute moves up its concentration gradient', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A solute (D = 10⁻⁹ m²/s) diffuses through a membrane of width l = 10 µm and permeable pore area S′ = 2 cm². Initially C₁ᵢ = 50 mmol/L and C₂ᵢ = 10 mmol/L. The initial molar flow rate Qᵢ is:', 'Qᵢ = DS′|ΔCᵢ|/l = 10⁻⁹ × 2×10⁻⁴ × 40 / 10⁻⁵ = 8 × 10⁻⁷ mol/s (40 mmol/L = 40 mol/m³). 8 × 10⁻¹⁰ forgets to convert mmol/L to mol/m³; 8 × 10⁻³ leaves S′ in cm²; 1.2 × 10⁻⁶ uses the sum of concentrations instead of the difference.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '8 × 10⁻¹⁰ mol/s', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.2 × 10⁻⁶ mol/s', 0),
  ((SELECT MAX(id) FROM questions), 'C', '8 × 10⁻⁷ mol/s', 1),
  ((SELECT MAX(id) FROM questions), 'D', '8 × 10⁻³ mol/s', 0),
  ((SELECT MAX(id) FROM questions), 'E', '4 × 10⁻⁷ mol/s', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the mass flow rate and the diffusive flux of a solute, the correct propositions are:', 'Q = dm/dt = −DS′·dCp/dx in kg/s; Jd = Q/S = −D(S′/S)·dC/dx in mol/s·m². The memo is inverted in E: rate of X = X/time, flux of X = X/surface.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Written with the mass concentration Cp, Fick''s law gives the mass flow rate dm/dt, in kg/s', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The diffusive flux Jd = Q/S is the molar flow rate per unit area, S being the membrane surface', 1),
  ((SELECT MAX(id) FROM questions), 'C', '[Jd] = mol·s⁻¹·m⁻²', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Jd = −D·(S′/S)·dC/dx', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'A "rate" of X is X per unit surface, while a "flux" of X is X per unit time', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued: Qᵢ = 8 × 10⁻⁷ mol/s, S′ = 2 cm².) The total membrane surface is S = 10 cm². The initial diffusive flux Jd is:', 'Jd = Q/S = 8×10⁻⁷ / 10⁻³ m² = 8 × 10⁻⁴ mol·s⁻¹·m⁻². Dividing by S′ instead of S gives 4 × 10⁻³; leaving S in cm² gives 8 × 10⁻⁸; multiplying by S gives 8 × 10⁻¹⁰.', 'Lesson: Biophysics of solutions 5', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 5'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '8 × 10⁻⁴ mol·s⁻¹·m⁻²', 1),
  ((SELECT MAX(id) FROM questions), 'B', '8 × 10⁻⁸ mol·s⁻¹·m⁻²', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4 × 10⁻³ mol·s⁻¹·m⁻²', 0),
  ((SELECT MAX(id) FROM questions), 'D', '8 × 10⁻¹⁰ mol·s⁻¹·m⁻²', 0),
  ((SELECT MAX(id) FROM questions), 'E', '1.6 × 10⁻⁴ mol·s⁻¹·m⁻²', 0);
