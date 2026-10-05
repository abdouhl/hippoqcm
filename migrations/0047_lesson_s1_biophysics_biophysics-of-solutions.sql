-- Generated from data/lessons/s1-biophysics-biophysics-of-solutions.json — lesson "Biophysics of solutions": 8 exam + 18 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Biophysics of solutions', 's1/biophysics/biophysics-of-solutions.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q3',
    'EMD1 2022-2023 Q4',
    'EMD1 2023-2024 Q3',
    'EMD1 2023-2024 Q4',
    'EMD1 2024-2025 Q3',
    'EMD1 2024-2025 Q4',
    'EMD1 2025-2026 Q3',
    'EMD1 2025-2026 Q4'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About plasma, the correct proposition is:', 'Plasma is the 4th state of matter: an ionized gas made of electrons, ions, atoms or neutral molecules. The intermediate state used in mobile telephony is the liquid crystal, not plasma.', 'Lesson: Biophysics of solutions', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is an intermediate state combining the properties of a liquid and a crystalline solid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It is made up only of neutral atoms and molecules', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It is used in mobile telephony screens', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is an ionized gas, called the 4th state of matter', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'It has its own volume', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The liquid state:', 'A liquid has its own volume, takes the shape of its container, has a flat horizontal free surface at rest, and is condensed but fluid. Having no fixed volume and filling all available space describe the gaseous state.', 'Lesson: Biophysics of solutions', NULL, 'generated', 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has neither a fixed shape nor a fixed volume', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is condensed (particles close together) but fluid (particles weakly bound and mobile)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Has strongly bound, immobile particles', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Has a free surface that, at rest, follows the curvature of the container', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Tends to occupy all the available volume', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The gaseous state:', 'A gas has neither fixed shape nor volume, fills all available volume, is dispersed and disorganized, and is made only of atoms and molecules. Electrons and ions characterize plasma (an ionized gas).', 'Lesson: Biophysics of solutions', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Has its own volume but takes the shape of its container', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Is condensed, with particles close together', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Is made up of electrons, ions, atoms and neutral molecules', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Has a flat, horizontal free surface at rest', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is dispersed and completely disorganized, with almost independent particles', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About energy units, the correct proposition is:', '1 cal = 4.184 J. The joule is the SI unit, the erg is the CGS unit with 1 erg = 10⁻⁷ J (not 10⁷), and 1 eV = 1.6 × 10⁻¹⁹ J.', 'Lesson: Biophysics of solutions', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 erg = 10⁷ J', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The erg is the energy unit of the SI (M.K.S.A) system', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1 cal = 4.184 J', 1),
  ((SELECT MAX(id) FROM questions), 'D', '1 eV = 1.6 × 10¹⁹ J', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The joule is the energy unit of the CGS system', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'An energy of 2 cal is equal to:', '2 cal = 2 × 4.184 = 8.368 J, and since 1 erg = 10⁻⁷ J, 8.368 J = 8.368 × 10⁷ erg. Dividing instead of multiplying gives the 0.478 J and 10⁻⁷ erg traps.', 'Lesson: Biophysics of solutions', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.478 J', 0),
  ((SELECT MAX(id) FROM questions), 'B', '8.368 × 10⁻⁷ erg', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.34 × 10⁻¹⁸ eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '8.368 × 10⁷ erg', 1),
  ((SELECT MAX(id) FROM questions), 'E', '2 J', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A glass contains oil floating on water (two immiscible liquids). This system has:', 'Two immiscible liquids form two different phases (regions with different properties) but only one state of matter (liquid). Being in the same state does not make them one phase.', 'Lesson: Biophysics of solutions', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'One phase and one liquid state', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Two phases and two liquid states', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'One phase and two states', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Two phases and only one liquid state', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'A single phase, since both components are liquids', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About thermodynamic systems, the correct proposition is:', 'Open: exchanges energy and matter (open glass of milk). Closed: exchanges only energy (sealed jar). Isolated: no exchange at all (thermos flask).', 'Lesson: Biophysics of solutions', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'An open system exchanges only energy with the surrounding environment', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A closed system exchanges only energy with the surrounding environment', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A closed system exchanges energy and matter with the surrounding environment', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'An isolated system exchanges only matter with the surrounding environment', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'An open glass of milk is an example of an isolated system', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Which pairing of example and system type is correct?', 'The thermos (ideally) exchanges neither energy nor matter, so it is isolated. The sealed jar exchanges only energy (closed) and the open glass of milk exchanges energy and matter (open).', 'Lesson: Biophysics of solutions', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Open glass of milk → closed system', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Sealed jar of jam → isolated system', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Sealed jar of jam → open system', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Thermos flask → isolated system', 1),
  ((SELECT MAX(id) FROM questions), 'E', 'Thermos flask → closed system', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'The saturating vapor pressure (Psat) of a liquid placed in a closed chamber:', 'In a closed chamber at fixed temperature, molecules vaporize until the space is saturated; the pressure reached, Psat, depends only on temperature. It is defined with respect to the liquid phase, not the solid phase.', 'Lesson: Biophysics of solutions', NULL, 'generated', 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Depends on the temperature and on the volume of the chamber', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Depends on the quantity of liquid introduced', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Depends only on the temperature', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is the vapor pressure of a substance in equilibrium with its solid phase', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Is reached in an open system', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Once saturation is reached in a closed chamber at fixed temperature:', 'Equilibrium means the liquid→gas flow equals the gas→liquid flow; exchanges continue but cancel out. Because Psat depends only on temperature, adding liquid does not change it.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Molecules stop passing from the liquid to the gaseous phase', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The vapor pressure keeps rising as long as liquid remains', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Adding more liquid to the chamber raises the vapor pressure', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The space above the liquid stays at P = 0', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The flow of molecules from liquid to gas equals the flow from gas to liquid', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'Duperray''s formula for water:', 'Duperray: Psat = (t/100)⁴ with Psat in bar and t in °C, for 100°C ≤ t ≤ 200°C. Check: t = 100°C gives 1 bar, the boiling point at atmospheric pressure.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Psat = (t/100)⁴, with Psat in bar and t in °C, valid for 100°C ≤ t ≤ 200°C', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Psat = (t/100)⁴, with Psat in Pa and t in K', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Psat = (100/t)⁴, with Psat in bar and t in °C', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Psat = (t/100)⁴, valid for 0°C ≤ t ≤ 100°C', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'Psat = (t/100)², with Psat in bar and t in °C', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A sealed pressure cooker maintains a water vapor pressure of 2 bar. Using Duperray''s formula, the boiling point of water inside is approximately:', 't = 100 × (Psat)^(1/4) = 100 × 2^(1/4) ≈ 119°C. Taking the square root instead gives 141°C, and a linear relation gives 200°C.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '200°C', 0),
  ((SELECT MAX(id) FROM questions), 'B', '141°C', 0),
  ((SELECT MAX(id) FROM questions), 'C', '108°C', 0),
  ((SELECT MAX(id) FROM questions), 'D', '125°C', 0),
  ((SELECT MAX(id) FROM questions), 'E', '119°C', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'About pressure units, the correct proposition is:', '1 bar = 10⁵ Pa ≈ 1 atm = 101325 Pa = 760 mmHg, and 1 Pa = 7.5 × 10⁻³ mmHg. For a liquid column P = ρgh: S cancels out, but density matters.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 atm = 101325 mmHg', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1 bar = 10⁵ Pa ≈ 1 atm', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1 Pa = 7.5 mmHg', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The pressure exerted by a column of liquid depends on the cross-section S of the column', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The pressure exerted by a column of liquid does not depend on the liquid''s density', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'What height of a water column (ρ = 1 g/cm³, g = 9.81 m/s²) exerts a pressure of 1 atm?', 'P = ρgh ⇒ h = 101325 / (1000 × 9.81) ≈ 10.3 m. The 0.76 m value is the mercury column (ρ = 13.6 g/cm³), not water.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.76 m', 0),
  ((SELECT MAX(id) FROM questions), 'B', '10.3 m', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1.03 m', 0),
  ((SELECT MAX(id) FROM questions), 'D', '7.6 m', 0),
  ((SELECT MAX(id) FROM questions), 'E', '103 m', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A mass m = 4 g of water (M = 18 g/mol) is introduced into an initially empty container of volume V = 10 L and heated to 80°C. Psat(80°C) = 0.466 bar (R = 8.31 SI). What mass of water remains liquid?', 'The maximum vapor is n = PsatV/RT = 46600 × 0.010 / (8.31 × 353) ≈ 0.159 mol ≈ 2.86 g < 4 g, so saturation is reached and 4 − 2.86 ≈ 1.14 g stays liquid. 2.86 g is the vaporized mass, not the liquid.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.86 g', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0 g (all the water vaporizes)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.14 g', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.47 g', 0),
  ((SELECT MAX(id) FROM questions), 'E', '3.53 g', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), '(Continued: 4 g of water in the 10 L container.) The container is heated to 100°C, where Psat = 1 bar. The vapor pressure inside is:', 'If all 4 g (0.222 mol) vaporize, P = nRT/V = 0.222 × 8.31 × 373 / 0.010 ≈ 0.69 bar < Psat = 1 bar, so there is no liquid left and the vapor is unsaturated. P only equals Psat if liquid remains.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 bar (saturated vapor)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.466 bar', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.82 bar', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.69 bar (all the water is vapor, unsaturated)', 1),
  ((SELECT MAX(id) FROM questions), 'E', '0.58 bar', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A mass of 0.5 g of water (M = 18 g/mol) is introduced into an initially empty 10 L container at 80°C, where Psat = 0.466 bar (R = 8.31 SI). The correct proposition is:', 'P = nRT/V = (0.5/18) × 8.31 × 353 / 0.010 ≈ 8150 Pa ≈ 0.082 bar < Psat, so all the water vaporizes. The vapor pressure depends only on temperature only when the vapor is saturated.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Saturation is reached and the vapor pressure is 0.466 bar', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Part of the water remains liquid', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'All the water vaporizes and the vapor pressure is about 0.082 bar', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The vapor pressure is about 0.82 bar', 0),
  ((SELECT MAX(id) FROM questions), 'E', 'The vapor pressure depends only on the temperature', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics'), 'A sealed 2 L pressure cooker is heated to 120°C. Using Duperray''s formula, what maximum mass of water (M = 18 g/mol) can exist as vapor inside? (R = 8.31 SI)', 'Psat = (120/100)⁴ ≈ 2.07 bar, so n = PsatV/RT = 207360 × 0.002 / (8.31 × 393) ≈ 0.127 mol ≈ 2.29 g. Using Psat = 1 bar instead gives about 1.10 g.', 'Lesson: Biophysics of solutions', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biophysics') AND title = 'Biophysics of solutions'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.10 g', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.29 g', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1.37 g', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3.12 g', 0),
  ((SELECT MAX(id) FROM questions), 'E', '0.73 g', 0);
