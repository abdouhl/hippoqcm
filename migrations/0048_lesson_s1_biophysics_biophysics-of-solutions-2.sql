-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-2.json — lesson "Biophysics of solutions 2": 10 exam + 16 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 2', 's1/biophysics/biophysics-of-solutions-2.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q6',
    'EMD1 2022-2023 Q7',
    'EMD1 2022-2023 Q8',
    'EMD1 2023-2024 Q6',
    'EMD1 2023-2024 Q7',
    'EMD1 2024-2025 Q6',
    'EMD1 2024-2025 Q7',
    'EMD1 2024-2025 Q15',
    'EMD1 2025-2026 Q6',
    'EMD1 2025-2026 Q7'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Medical application — respiratory water loss. The correct proposition is:', 'About 2.4 L/day are eliminated, 300–400 g of it by alveolar evaporation. Saturated inspired air makes this elimination zero (Psat already reached) and dry air makes it maximal — the two distractors swap these; expired air is very rich in water vapor.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The human body eliminates about 2.4 L of water per day, of which 300 to 400 g are eliminated by the lungs', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'If the inspired air is saturated with water vapor, the elimination of water by the alveoli is maximal', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'If the inspired air is dry, the elimination of water by the alveoli is zero', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Water is eliminated by the alveoli by condensation', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Expired air contains less water vapor than inspired air', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A liquid evaporates in a closed enclosure. The correct proposition is:', 'Evaporation continues while P_vapor < P_sat; at P_vapor = P_sat the liquid and gas are at equilibrium, the enclosure is saturated and no more vapor can form. The vapor pressure is also called the partial vapor pressure, not the saturation pressure.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Evaporation persists as long as the vapor pressure is higher than the saturation pressure', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Equilibrium between the liquid and gas phases is reached when P_vapor = P_sat; the enclosure is then saturated', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Once P_vapor = P_sat, vapor molecules keep forming at a constant rate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The vapor pressure is also called the saturation pressure', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Evaporation stops as soon as P_vapor becomes lower than P_sat', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the types of solutions, the correct proposition is:', 'Colloids are relatively large particles of 10 to 1000 Å (e.g. soap in water), forming a heterogeneous mixture of more than one phase. A (true) solution is homogeneous with a single phase (sugar in water); an electrolytic solution is electrically neutral and conducts current.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A solution is a heterogeneous mixture made of several phases', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A colloidal solution consists of a single phase', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The solute particles of a colloidal solution have sizes ranging from 10 to 1000 Å', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The dissolution of sugar in water is an example of a colloidal solution', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'An electrolytic solution carries a net electric charge', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About ideal solutions, the correct propositions are:', 'In an ideal solution no single interaction predominates, and solutions are considered ideal when very dilute (C ≤ 10⁻³ mol/L), e.g. a mixture of alcohols. Soap in water is a colloidal example, and γ = 1 (not 0) for ideal solutions.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Solute–solvent interactions predominate over solvent–solvent interactions', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Solvent–solvent, solute–solute and solute–solvent interactions are approximately equal', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A solution is considered ideal when it is very dilute (C ≤ 10⁻³ mol/L)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The dispersion of soap in water is an example of an ideal solution', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The activity coefficient of a solute in an ideal solution is γ = 0', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the chemical activity aᵢ of a species i of concentration Cᵢ, the correct propositions are:', 'Activity (active concentration) aᵢ = γᵢ·Cᵢ/C₀ is dimensionless, with 0 < γᵢ ≤ 1 and γᵢ = 1 for ideal solutions, pure substances and solvents. It expresses the availability of the solute for chemical reactions (affected by solute–solvent and solute–solute interactions), not its dissociation.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'aᵢ = γᵢ·Cᵢ/C₀, with C₀ = 1 mol/L the reference concentration', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'aᵢ is expressed in mol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The activity coefficient satisfies 0 < γᵢ ≤ 1', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'γᵢ = 1 for ideal solutions, pure substances and solvents', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The activity is the ability of the solute to dissociate into ions', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Calculate the chemical activity of the Cl⁻ ion in an aqueous CaCl₂ solution at 2×10⁻³ mol/L (total dissociation, Debye–Hückel applicable).', 'C(Cl⁻) = 4×10⁻³ mol/L; I = ½[2×10⁻³×(+2)² + 4×10⁻³×(−1)²] = 6×10⁻³ mol/L; log γ = −0.5×√(6×10⁻³) ⇒ γ ≈ 0.915; a = γ·C/C₀ ≈ 3.66×10⁻³. 1.83×10⁻³ uses the salt concentration instead of [Cl⁻]; 4.37×10⁻³ divides by γ.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.83×10⁻³', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4.00×10⁻³', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3.80×10⁻³', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3.66×10⁻³', 1),
  ((SELECT MAX(id) FROM questions), 'E', '4.37×10⁻³', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the ionic strength I of a solution, the correct propositions are:', 'I = ½ΣC_k z_k² in mol/L; for NaCl at C, I = ½(C×1 + C×1) = C. z(O²⁻) = −2, and glucose is a non-electrolyte (no ions), so its ionic strength is zero.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'I = ½ Σ C_k·z_k², summed over all the ions k of the solution', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is expressed in mol/L', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'For a totally dissociated NaCl solution, I equals the molar concentration of NaCl', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The valence of O²⁻ is z = +2', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'A 10⁻³ mol/L glucose solution has an ionic strength of 10⁻³ mol/L', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'One liter of aqueous solution contains 5.85 g of NaCl (M = 58.5 g/mol) and 9.5 g of MgCl₂ (M = 95 g/mol). The electrolytes are totally dissociated. Calculate the ionic strength of the solution (mol/L).', '0.1 mol/L of each salt: Na⁺ 0.1, Mg²⁺ 0.1, Cl⁻ 0.1 + 0.2 = 0.3 mol/L. I = ½[0.1×1 + 0.1×(+2)² + 0.3×1] = 0.40 mol/L. Forgetting to square z(Mg²⁺) gives 0.30; forgetting the ½ gives 0.80.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.30', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.35', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.40', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.80', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.25', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'At the same concentration of 10⁻³ mol/L (total dissociation), the activity coefficient of the Cl⁻ ion is the lowest in a solution of:', 'LaCl₃ gives the highest ionic strength (I = 6×10⁻³ vs 3×10⁻³ for MgCl₂ and 10⁻³ for the 1:1 salts). Since I₁ < I₂ ⇒ γ₁ > γ₂, γ(Cl⁻) is lowest in LaCl₃ (0.9147 vs 0.9389 in MgCl₂).', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'NaCl', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'MgCl₂', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'HCl', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'KCl', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'LaCl₃', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Using the Debye–Hückel equation, calculate the activity coefficient of the Mg²⁺ ion in a 10⁻³ mol/L MgCl₂ solution (total dissociation).', 'I = ½[10⁻³×4 + 2×10⁻³×1] = 3×10⁻³ mol/L < 0.05; log γ = −0.5×(2)²×√(3×10⁻³) ≈ −0.110 ⇒ γ ≈ 0.777. 0.939 is γ of Cl⁻ (z = −1); 0.882 comes from not squaring z.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.939', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.777', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.882', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.864', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.896', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the chemical potential μᵢ, the correct propositions are:', 'μᵢ = μᵢ⁰ + RT·ln(aᵢ), in J/mol (not J). The standard state is the most stable state at P_atm (liquid for water at 298 K). At phase equilibrium, temperatures, pressures and chemical potentials are all equal.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'μᵢ(T) = μᵢ⁰(T) + RT·ln(aᵢ)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is expressed in joules (J)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'μᵢ⁰(T) is the potential of i in its standard state, the most stable physical state at P_atm for a given temperature', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'At 298 K, the standard state of water is vapor', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'When two phases coexist at equilibrium, their temperatures and pressures are equal but their chemical potentials differ', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Compared with pure water (μ₁), the chemical potential of water in an aqueous solution (μ₂) is:', 'γ(water) = 1 both as a pure body and as a solvent, so μ₂ − μ₁ = RT·ln(C₂/C₁); in 1 L of solution n(water) < 55.5 mol, so C₂ < C₁ and μ₂ < μ₁. Equal γ does not mean equal μ, because the concentrations differ.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Higher, because the concentration of water in the solution is higher than 55.5 mol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Lower, because the concentration of water in the solution is lower than that of pure water (55.5 mol/L)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Equal, because the activity coefficient of water is 1 in both cases', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Lower, because the activity coefficient of water as a solvent is less than 1', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Higher, because the solute increases the activity of water', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the osmolarity ω of a solution containing a single solute, the correct propositions are:', 'ω = [1 + α(β − 1)]C, in osmol/L; β is the number of ions released by an electrolyte. Urea, like glucose, is a non-electrolyte (β = 1), so ω = C, not 2C.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'ω = [1 + α(β − 1)]·C', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'ω is expressed in osmol/L and the molarity C in mol/L', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'β is the number of ions produced by the dissociation of the solute, if it is an electrolyte', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'For glucose, β = 1, so ω = C', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'For urea, ω = 2C', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An aqueous CaCl₂ solution at 0.2 mol/L has a dissociation coefficient α = 0.8. Calculate its osmolarity (osmol/L).', 'CaCl₂ → Ca²⁺ + 2Cl⁻, so β = 3; ω = [1 + 0.8×(3 − 1)]×0.2 = 2.6×0.2 = 0.52 osmol/L. 0.60 assumes total dissociation; 0.36 uses β = 2.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.60', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.36', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.52', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.48', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.20', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'One liter of aqueous solution contains 5.85 g of NaCl (M = 58.5 g/mol), 18 g of glucose (M = 180 g/mol) and 20 mL of H₂SO₄ (1 mol/L). The electrolytes are totally dissociated. Calculate the osmolarity of the solution.', 'With total dissociation ω = βC: NaCl 2×100 = 200, glucose (non-electrolyte, β = 1) 100, H₂SO₄ (2H⁺ + SO₄²⁻, β = 3) 3×20 = 60 ⇒ 360 mosm/L. Counting glucose twice gives 460; ignoring dissociation gives 220.', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '460 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '340 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '220 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '400 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '360 mosm/L', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Solutions at the same molar concentration C = 0.1 mol/L, electrolytes totally dissociated. The correct propositions are:', 'Glucose and urea are non-electrolytes (ω = C = 0.1). With total dissociation ω = βC: NaCl β = 2 (0.2, not equal to C), CaCl₂, Na₂SO₄ and MgCl₂ all β = 3 (0.3 osmol/L).', 'Lesson: Biophysics of solutions 2', NULL, 'generated', 5);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 2'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucose and urea solutions have the same osmolarity', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'NaCl and glucose solutions have the same osmolarity', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The osmolarity of the CaCl₂ solution is 0.3 osmol/L', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Na₂SO₄ and MgCl₂ solutions have the same osmolarity', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'The osmolarity of the NaCl solution equals its molarity', 0);
