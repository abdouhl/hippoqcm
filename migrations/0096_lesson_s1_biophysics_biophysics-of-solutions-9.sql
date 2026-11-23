-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-9.json — lesson "Biophysics of solutions 9": 0 exam + 16 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 9', 's1/biophysics/biophysics-of-solutions-9.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About Poiseuille''s formula Qᵥ = (πR⁴ / 8ηL)·ΔP for a horizontal cylindrical pipe:', 'Poiseuille''s law holds only for laminar flow; ΔP = P₁ − P₂ > 0 is the pressure loss, since P decreases along the path. Qᵥ is inversely proportional to η (η is in the denominator), not proportional.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is valid only for laminar flows', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The volumetric flow rate Qᵥ is proportional to the viscosity η', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The pressure P decreases with the distance traveled by the fluid', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The pressure P increases along the direction of the flow', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'ΔP = P₁ − P₂ is called the pressure loss (overpressure)', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Laminar flow in a horizontal pipe: the radius R is halved while ΔP, the length L and the viscosity η are unchanged. The volumetric flow rate Qᵥ is:', 'Qᵥ = πR⁴ΔP / (8ηL) varies as R⁴, so halving R gives (1/2)⁴ = 1/16 of the flow. Dividing by 4 would be an R² law; a smaller radius can only lower the flow.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 1, 0, 1, 'Only the R⁴ factor changes: (1/2)⁴ = 1/16. A narrower pipe can''t increase the flow, so ''multiplied by 16'' is out straight away.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Divided by 2', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Divided by 4', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Divided by 8', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Multiplied by 16', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Divided by 16', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the hydraulic flow resistance R of a horizontal pipe of length L and radius R₀ (laminar flow):', 'R = ΔP/Qᵥ = 8ηL/(πR₀⁴): it is proportional to η and L and inversely proportional to R₀⁴. So a longer pipe or a more viscous fluid raises the resistance, and a wider pipe lowers it.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'R is proportional to the fourth power of the radius', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'R = ΔP / Qᵥ', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'R decreases when the viscosity of the fluid increases', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'R = 8ηL / (πR₀⁴)', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'R doubles when the length of the pipe doubles', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the analogy between electricity and the biophysics of fluids:', 'Current I ↔ volumetric flow rate Qᵥ, potential difference ΔV ↔ pressure difference ΔP, electrical resistance ↔ hydraulic resistance R, so ΔV = RI ↔ ΔP = RQᵥ. Viscosity is only one factor inside the hydraulic resistance.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The electric current I corresponds to the pressure P', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The electric current I corresponds to the volumetric flow rate Qᵥ', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The electrical resistance corresponds to the viscosity η of the fluid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'ΔV = V₁ − V₂ > 0 corresponds to ΔP = P₁ − P₂ > 0', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Ohm''s law ΔV = RI corresponds to ΔP = R·Qᵥ', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A fluid flows in laminar regime through a horizontal pipe with a pressure loss ΔP = 600 Pa and a volumetric flow rate Qᵥ = 2×10⁻⁶ m³/s. Its hydraulic resistance is:', 'R = ΔP/Qᵥ = 600 / (2×10⁻⁶) = 3×10⁸ Pa·s/m³. 3.3×10⁻⁹ is the inverse ratio Qᵥ/ΔP and 1.2×10⁻³ is the product ΔP·Qᵥ.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 1, 0, 1, '600/2 = 300 = 3×10², and dividing by 10⁻⁶ adds 6 to the exponent: 3×10⁸. A resistance must come out large here (big ΔP over a tiny flow), which already rules out the 10⁻⁹ and 10⁻³ options.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.3×10⁻⁹ Pa·s/m³', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.2×10⁻³ Pa·s/m³', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3×10⁵ Pa·s/m³', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3×10⁸ Pa·s/m³', 1),
  ((SELECT MAX(id) FROM questions), 'E', '3×10¹¹ Pa·s/m³', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Two compartments (1) and (2), with osmolarities ω₁ and ω₂ and pressures P₁ and P₂, are separated by a membrane. The correct propositions are:', 'A concentration difference drives a diffusive solvent flux from low to high concentration; a pressure difference drives a convective solvent flux from high to low pressure. The convective flux depends on P₁ ≠ P₂, not on the osmolarities.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'If P₁ ≠ P₂, a convective flux Jc of solvent goes from the high-pressure side to the low-pressure side', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'If ω₁ ≠ ω₂, a diffusive flux Jd of solvent goes from the high-concentration side to the low-concentration side', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'If P₁ ≠ P₂, a convective flux Jc of solvent goes from the low-pressure side to the high-pressure side', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A convective flux of solvent exists only if ω₁ ≠ ω₂', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'If ω₁ ≠ ω₂, a diffusive flux Jd of solvent goes from the low-concentration side to the high-concentration side', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A membrane of thickness l and surface area S has Nₚ pores, cylinders of radius a and length l. The correct propositions are:', 'Each pore obeys Poiseuille, qᵥ = πa⁴ΔP/(8ηl); the Nₚ pores add up, Qᵥ = Nₚqᵥ = pSqᵥ = S·(pπa⁴/8ηl)·ΔP = SLΔP. The flows are multiplied by Nₚ, not divided.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The number of pores per unit surface area is p = Nₚ / S', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The volumetric flow rate through one pore is qᵥ = πa⁴ΔP / (8ηl)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The total volumetric flow rate is Qᵥ = qᵥ / Nₚ', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The convective permeability of the membrane is L = p·πa⁴ / (8ηl)', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The total volumetric flow rate can be written Qᵥ = S·L·ΔP', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the units used for convective transport:', 'Jc = Qᵥ/S = LΔP is in m/s, so L = Jc/ΔP is in m/(Pa·s); R = ΔP/Qᵥ is in Pa·s/m³. m³/s is the unit of the volumetric flow rate Qᵥ, and m/s is the unit of Jc, not of L.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The convective flux Jc is expressed in m³/s', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The convective permeability L is expressed in m/(Pa·s)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The convective permeability L is expressed in m/s', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The convective flux Jc is expressed in m/s', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The hydraulic flow resistance R is expressed in Pa·s/m³', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About a cylindrical membrane pore of radius a and length l, crossed by a fluid of viscosity η:', '8ηl/(πa⁴) is the hydraulic resistance of a pore; its inverse πa⁴/(8ηl) is the pore''s hydraulic conductance, and multiplying by p gives L, the conductance per unit surface area. L is a conductance, not a resistance.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '8ηl / (πa⁴) is the hydraulic conductance of the pore', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'πa⁴ / (8ηl) is the hydraulic conductance of the pore', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'L = p·πa⁴ / (8ηl) is the hydraulic conductance per unit surface area of the membrane', 1),
  ((SELECT MAX(id) FROM questions), 'D', '8ηl / (πa⁴) is the hydraulic resistance of the pore', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'L is the hydraulic resistance per unit surface area of the membrane', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A membrane of convective permeability L = 2×10⁻¹¹ m/(Pa·s) and surface area S = 2 cm² is subjected to a pressure difference ΔP = 5×10³ Pa. The correct propositions are:', 'Jc = LΔP = 2×10⁻¹¹ × 5×10³ = 10⁻⁷ m/s, and Qᵥ = S·Jc = 2×10⁻⁴ m² × 10⁻⁷ = 2×10⁻¹¹ m³/s. 2×10⁻⁷ forgets to convert cm² to m²; 2.5×10⁸ divides ΔP by L.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 2, 0, 1, '2×5 = 10, exponents −11 + 3 = −8, so Jc = 10×10⁻⁸ = 10⁻⁷ m/s. Then 2 cm² = 2×10⁻⁴ m², times 10⁻⁷ gives 2×10⁻¹¹ m³/s. A flux of 2.5×10⁸ m/s is physically absurd, so that option is out at once.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The convective flux is Jc = 2.5×10⁸ m/s', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The volumetric flow rate is Qᵥ = 2×10⁻¹¹ m³/s', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The convective flux is Jc = 1×10⁻⁷ m/s', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The volumetric flow rate is Qᵥ = 2×10⁻⁷ m³/s', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The convective flux is Jc = 4×10⁻¹⁵ m/s', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About filtration and ultrafiltration:', 'Filtration is the convective solvent flux through a porous membrane: it is driven by a pressure gradient and retains the solutes (sieving). It is called ultrafiltration when the membrane is semi-permeable with pores of 0.001–0.1 µm.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Filtering a solution through a porous membrane makes the solvent move under a pressure gradient while the solute particles are retained', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Filtration is driven by the concentration gradient of the solute', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Filtration relies on the principle of sieving', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Ultrafiltration uses a semi-permeable membrane with a pore diameter between 0.001 µm and 0.1 µm', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Ultrafiltration uses a membrane with a pore diameter between 1 µm and 10 µm', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In the figure, the membrane is semi-permeable, ω₁ > ω₂, and an overpressure applied on side (1) gives P₁ > P₂ with ΔP > Δπ. The correct propositions are:', 'P₁ > P₂ pushes water (1) → (2) with Jc = LΔP; ω₁ > ω₂ pulls water (2) → (1) with Jd = LΔπ. Since ΔP > Δπ, Jc > Jd and the net flux follows Jc, from (1) to (2): this is ultrafiltration.', 'Lesson: Biophysics of solutions 9', 's1/lessons/biophysics-of-solutions-9-g1.png', 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The diffusive flux of water Jd goes from (2) to (1)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The net solvent flux goes from (2) to (1)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The convective flux of water Jc goes from (1) to (2)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The diffusive flux is given by Jd = L·ΔP', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'This situation corresponds to ultrafiltration', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a semi-permeable membrane, with ΔP = P₁ − P₂ and Δπ = (ω₁ − ω₂)RT, the correct propositions are:', 'The two fluxes are opposed, so Jnet = Jc − Jd = L(ΔP − Δπ) = L·Peff, and Q_uf = S·Jnet = S·L·Peff. The osmotic pressure works against the applied pressure, so it is subtracted, not added.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The effective filtration pressure is Peff = ΔP − Δπ', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The effective filtration pressure is Peff = ΔP + Δπ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'If ΔP > Δπ, then Jc > Jd', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The net solvent flux is Jnet = Jc − Jd = L·Peff', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The ultrafiltration rate is Q_uf = S·L·Peff', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A semi-permeable membrane (L = 10⁻¹² m/(Pa·s), S = 2 m²) separates two solutions with ω₁ − ω₂ = 0.1 osmol/L at 27 °C. An overpressure ΔP = P₁ − P₂ = 3.5×10⁵ Pa is applied on side (1). (R = 8.31 SI) The correct propositions are:', 'Δπ = ΔωRT = 100 osmol/m³ × 8.31 × 300 ≈ 2.5×10⁵ Pa; Peff = ΔP − Δπ ≈ 1×10⁵ Pa (6×10⁵ adds them). Jnet = L·Peff ≈ 10⁻⁷ m/s and Q_uf = S·Jnet ≈ 2×10⁻⁷ m³/s.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 2, 0, 1, 'Convert 0.1 osmol/L to 100 osmol/m³; RT ≈ 8.31 × 300 ≈ 2500, so Δπ ≈ 100 × 2500 = 2.5×10⁵ Pa. Then 3.5 − 2.5 = 1 → Peff = 10⁵ Pa, Jnet = 10⁻¹² × 10⁵ = 10⁻⁷ m/s, and ×2 m² gives 2×10⁻⁷ m³/s.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Δπ ≈ 2.5×10⁵ Pa', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The effective filtration pressure is Peff ≈ 6×10⁵ Pa', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The effective filtration pressure is Peff ≈ 1×10⁵ Pa', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The net solvent flux is Jnet ≈ 1×10⁻⁷ m/s', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The ultrafiltration rate is Q_uf ≈ 2×10⁻⁷ m³/s', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a dialysis membrane, the net solvent flux Jnet carries a solute (s) along with it. The correct propositions are:', 'The solute is dragged by the solvent, Jcs = Jnet·C̄s with C̄s = (C₁s + C₂s)/2 (the mean, not the sum), and it also diffuses, Jds = P|ΔCs|; the net solute flux is Jcs + Jds (vectors). L·ΔP is the convective flux of solvent.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The convective flux of solute is Jcs = Jnet·C̄s', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The mean solute concentration is C̄s = C₁s + C₂s', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The diffusive flux of solute is Jds = P·|ΔCs|', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The diffusive flux of solute is Jds = L·ΔP', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The net solute flux is the vector sum of the convective and diffusive solute fluxes', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Across a dialysis membrane, the net solvent flux is Jnet = 2×10⁻⁶ m/s. The solute concentrations are C₁s = 40 mmol/L and C₂s = 10 mmol/L. The convective flux of solute Jcs is:', 'C̄s = (40 + 10)/2 = 25 mmol/L = 25 mol/m³, so Jcs = Jnet·C̄s = 2×10⁻⁶ × 25 = 5×10⁻⁵ mol·m⁻²·s⁻¹. 1×10⁻⁴ uses the sum, 6×10⁻⁵ the difference, and 5×10⁻⁸ keeps C̄s in mol/L.', 'Lesson: Biophysics of solutions 9', NULL, 'generated', 3, 0, 1, 'mmol/L = mol/m³, so C̄s = 25 mol/m³ with no conversion. 2 × 25 = 50 → 50×10⁻⁶ = 5×10⁻⁵.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 9'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1×10⁻⁴ mol·m⁻²·s⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'B', '6×10⁻⁵ mol·m⁻²·s⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5×10⁻⁵ mol·m⁻²·s⁻¹', 1),
  ((SELECT MAX(id) FROM questions), 'D', '5×10⁻⁸ mol·m⁻²·s⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'E', '8×10⁻⁸ mol·m⁻²·s⁻¹', 0);
