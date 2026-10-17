-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions-3.json — lesson "Biophysics of solutions 3": 5 exam + 12 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions 3', 's1/biophysics/biophysics-of-solutions-3.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q6',
    'EMD1 2022-2023 Q7',
    'EMD1 2023-2024 Q6',
    'EMD1 2024-2025 Q6',
    'EMD1 2025-2026 Q6'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About the Van''t Hoff dissociation coefficient α, the correct propositions are:', 'α = n(dissociated)/n(initial), so 0 ≤ α ≤ 1. HCl (strong) dissociates completely: α = 1; HCOOH (weak) dissociates partially: α < 1; glucose (non-electrolyte) does not dissociate at all: α = 0, not 1.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'α = number of dissociated moles / initial number of moles', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'For HCOOH, a weak electrolyte, α = 1', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0 ≤ α ≤ 1', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'For glucose, α = 1 because all its molecules stay intact', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'For HCl, a strong electrolyte, α = 1', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Which solute – β pairing is correct?', 'β is the number of ions released: Na₂SO₄ → 2Na⁺ + SO₄²⁻ gives β = 3. NaCl → Na⁺ + Cl⁻ and HCOOH → H⁺ + HCOO⁻ give β = 2; non-electrolytes (urea, glucose) have β = 1, not 0 or 2.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'NaCl – β = 1', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Na₂SO₄ – β = 3', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Urea – β = 2', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'HCOOH – β = 3', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Glucose – β = 0', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'For an aqueous glucose solution of molarity C, the correct propositions are:', 'Glucose is a non-electrolyte: no moles dissociate (α = 0) and β = 1, so ω = [1 + α(β − 1)]C = C. Not dissociating does not make ω zero — each intact molecule still counts as one osmole.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glucose is a weak electrolyte', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'α = 0', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'ω = 0, since glucose does not dissociate', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'β = 1', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'ω = C', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An aqueous solution of formic acid HCOOH (weak electrolyte) at 0.1 mol/L has a dissociation coefficient α = 0.2. Calculate its osmolarity.', 'HCOOH → H⁺ + HCOO⁻, β = 2: ω = [1 + 0.2×(2 − 1)]×0.1 = 1.2×0.1 = 0.12 osmol/L. 0.20 assumes total dissociation (strong electrolyte); 0.10 ignores dissociation.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.20 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.10 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.12 osmol/L', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.14 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.02 osmol/L', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An aqueous Na₂SO₄ solution at 0.2 mol/L has an osmolarity of 0.5 osmol/L. What is its dissociation coefficient α?', 'Na₂SO₄ → 2Na⁺ + SO₄²⁻, β = 3: 0.5 = [1 + 2α]×0.2 ⇒ 1 + 2α = 2.5 ⇒ α = 0.75. Using β = 2 gives 1.5, which is impossible since 0 ≤ α ≤ 1.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.50', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.25', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.5', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.75', 1),
  ((SELECT MAX(id) FROM questions), 'E', '0.60', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About osmolarity and osmolality, the correct propositions are:', 'Osmolarity and molarity are per volume of solution (osmol/L, mol/L); osmolality and molality are per mass of solvent (osmol/kg, mol/kg). The same formula ω = [1 + α(β − 1)]C applies to both.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Osmolality is used when the concentration C is expressed as a molality', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Molality = number of moles of solute / mass of solvent, expressed in mol/kg', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Osmolality is expressed in osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Osmolarity = number of osmoles of solute / volume of solution', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Molarity = number of moles of solute / mass of solution', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'One liter of aqueous solution contains 0.1 mol of NaCl (totally dissociated) and 0.2 mol of HCOOH (α = 0.1). Calculate the total osmolarity.', 'ω = Σ[1 + αᵢ(βᵢ − 1)]Cᵢ: NaCl 2×0.1 = 0.20; HCOOH [1 + 0.1×1]×0.2 = 0.22 ⇒ 0.42 osmol/L. 0.60 treats HCOOH as totally dissociated; 0.40 ignores its dissociation.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.60 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.40 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.32 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.22 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.42 osmol/L', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'In 1 L of water there are 11.7 g of NaCl (M = 58.5 g/mol) and 9 g of glucose (M = 180 g/mol). NaCl is totally dissociated. Calculate the osmolarity of the solution.', 'C(NaCl) = 11.7/58.5 = 0.2 mol/L ⇒ ω = 2×0.2 = 0.4; C(glucose) = 9/180 = 0.05 mol/L ⇒ ω = 0.05 (non-electrolyte). Total 0.45 osmol/L = 450 mosmol/L. 250 forgets NaCl dissociation; 500 doubles glucose.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '250 mosmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '450 mosmol/L', 1),
  ((SELECT MAX(id) FROM questions), 'C', '500 mosmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '400 mosmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'E', '300 mosmol/L', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'One liter of aqueous solution contains 14.2 g of Na₂SO₄ (M = 142 g/mol) and 25 mL of H₃PO₄ (2 mol/L). The electrolytes are totally dissociated. Calculate the osmolarity of the solution.', 'Na₂SO₄: 0.1 mol/L × β = 3 ⇒ 300 mosm/L. H₃PO₄: 0.025 L × 2 mol/L = 0.05 mol in 1 L, → 3H⁺ + PO₄³⁻ so β = 4 ⇒ 200 mosm/L. Total 500 mosm/L; 450 uses β = 3 for H₃PO₄.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '400 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '350 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'C', '450 mosm/L', 0),
  ((SELECT MAX(id) FROM questions), 'D', '500 mosm/L', 1),
  ((SELECT MAX(id) FROM questions), 'E', '600 mosm/L', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About blood vessels, the correct propositions are:', 'Blood goes heart → (arteries) → organs → (veins) → heart; exchanges blood ↔ tissues happen across the capillaries, not the arterioles. The 5 vessel types are arteries, arterioles, capillaries, veins and venules.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Veins carry blood from the heart to the organs', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'There are 5 types of blood vessels: arteries, arterioles, capillaries, veins and venules', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Gases and nutrients are exchanged between blood and tissues through the capillaries', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Gases and nutrients are exchanged between blood and tissues through the arterioles', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Arteries carry blood from the heart to the organs', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'For a single-solute solution, the osmolarity ω equals the molarity C when:', 'ω = [1 + α(β − 1)]C equals C only when α(β − 1) = 0, i.e. β = 1 (non-electrolyte) or α = 0. Any dissociating electrolyte (α > 0, β ≥ 2) gives ω > C — e.g. totally dissociated NaCl gives ω = 2C.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The solute is a non-electrolyte (β = 1)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The solute is a strong electrolyte (α = 1)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The solute is NaCl, totally dissociated', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The solute is a weak electrolyte (0 < α < 1, β = 2)', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'No solute molecule dissociates (α = 0)', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An aqueous CaCl₂ solution has a molality of 0.3 mol/kg; CaCl₂ is totally dissociated. Its osmolality is:', 'CaCl₂ → Ca²⁺ + 2Cl⁻, β = 3, α = 1: ω = 3×0.3 = 0.9. Since C is a molality (mol/kg), ω is an osmolality in osmol/kg, not osmol/L.', 'Lesson: Biophysics of solutions 3', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions 3'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.9 osmol/L', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.6 osmol/kg', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.9 osmol/kg', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.3 osmol/kg', 0),
  ((SELECT MAX(id) FROM questions), 'E', '1.2 osmol/kg', 0);
