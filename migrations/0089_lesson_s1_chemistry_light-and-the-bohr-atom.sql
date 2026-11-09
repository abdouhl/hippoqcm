-- Generated from data/lessons/s1-chemistry-light-and-the-bohr-atom.json — lesson "Light and the Bohr atom": 32 exam + 27 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Light and the Bohr atom', 's1/chemistry/light-and-the-bohr-atom.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source IN (
    'EMD1 2017-2018 Q1',
    'EMD1 2018-2019 Q1',
    'EMD1 2018-2019 Q2',
    'EMD1 2018-2019 Q3',
    'EMD1 2018-2019 Q4',
    'EMD1 2018-2019 Q22',
    'EMD1 2019-2020 Q1',
    'EMD1 2019-2020 Q10',
    'EMD1 2020-2021 Q5',
    'EMD1 2020-2021 Q16',
    'EMD1 2020-2021 Q17',
    'EMD1 2020-2021 Q18',
    'EMD1 2020-2021 Q19',
    'EMD1 2021-2022 Q7',
    'EMD1 2021-2022 Q8',
    'EMD1 2021-2022 Q9',
    'EMD1 2021-2022 Q10',
    'EMD1 2022-2023 Q20',
    'EMD1 2022-2023 Q21',
    'EMD1 2022-2023 Q22',
    'EMD1 2022-2023 Q23',
    'EMD1 2022-2023 Q29',
    'EMD1 2023-2024 Q15',
    'EMD1 2023-2024 Q17',
    'EMD1 2023-2024 Q18',
    'EMD1 2024-2025 Q1',
    'EMD1 2024-2025 Q5',
    'EMD1 2024-2025 Q6',
    'EMD1 2024-2025 Q7',
    'EMD1 2025-2026 Q4',
    'EMD1 2025-2026 Q5',
    'EMD1 2025-2026 Q6'
  );
UPDATE questions SET calc = 1, mental = 'λ = h/mv. Denominator: 3.31×0.25 ≈ 0.83, with 10⁻³¹⁺⁶ = 10⁻²⁵, so mv ≈ 8.3×10⁻²⁶. Then 6.62×10⁻³⁴ / 8.3×10⁻²⁶ ≈ 0.8×10⁻⁸ m = 8 nm.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2017-2018 Q1';
UPDATE questions SET calc = 1, mental = 'ΔE = E₂ − E₁ with E₂ = −13.6/4 = −3.4 eV: −3.4 + 13.6 = 10.2 eV.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q1';
UPDATE questions SET calc = 1, mental = 'n = 2 is −13.6/4 = −3.4 eV and the ionized state is 0, so it needs 3.4 eV.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q2';
UPDATE questions SET calc = 1, mental = 'ΔE = 3.4 eV. Shortcut: hc/e = (6.62×10⁻³⁴ × 3×10⁸)/(1.6×10⁻¹⁹) ≈ 1240 eV·nm, so λ ≈ 1240/3.4 ≈ 365 nm. Only 367.8 nm is near it.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q3';
UPDATE questions SET calc = 1, mental = 'ΔE = 10.2 eV, so λ ≈ 1240/10.2 ≈ 122 nm (1240/10 = 124, then a little less). Take the closest option, 122.6 nm.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q4';
UPDATE questions SET calc = 1, mental = 'λ(nm) ≈ 1240/E(eV). Absorbed: 1240/97.28 ≈ 12.75 eV, and −13.6 + 12.75 = −0.85 eV, which is n = 4. Emitted: 1240/1879 ≈ 0.66 eV, and −0.85 − 0.66 = −1.51 eV, which is n = 3.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q22';
UPDATE questions SET calc = 1, mental = 'ΔE = −3.03 − (−5.14) = 2.11 eV. λ ≈ 1240/2.11 ≈ 590 nm = 5.9×10⁻⁷ m. A photon in the 10⁻²⁶ m range is absurd, so D goes first.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2019-2020 Q1';
UPDATE questions SET calc = 1, mental = 'Final energy = −13.6 + 10.2 = −3.4 eV = −13.6/4, so n = 2.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2019-2020 Q10';
UPDATE questions SET calc = 1, mental = 'Per atom: 2370×10³ / 6×10²³ ≈ 4×10⁻¹⁸ J. λ = hc/E ≈ 2×10⁻²⁵ / 4×10⁻¹⁸ = 5×10⁻⁸ m; with the exact 6.02 the value rounds to 5.04×10⁻⁸.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2020-2021 Q5';
UPDATE questions SET calc = 1, mental = '1215.7 Å = 121.57 nm, and E ≈ 1240/121.57 ≈ 10.2 eV. Check: −3.4 + 13.6 = 10.2.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2020-2021 Q16';
UPDATE questions SET calc = 1, mental = '102.56 nm: 1240/102.56 ≈ 12.1 eV. Check: −1.51 + 13.6 = 12.09.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2020-2021 Q17';
UPDATE questions SET calc = 1, mental = '97.26 nm: 1240/97.26 ≈ 12.75 eV. Check: −0.85 + 13.6 = 12.75.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2020-2021 Q18';
UPDATE questions SET calc = 1, mental = '94.99 nm: 1240/95 ≈ 13.05 eV. Check: −0.54 + 13.6 = 13.06.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2020-2021 Q19';
UPDATE questions SET calc = 1, mental = '1240/97.28 ≈ 12.75 eV; −13.6 + 12.75 = −0.85 eV = −13.6/16, so n = 4.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2021-2022 Q7';
UPDATE questions SET calc = 1, mental = '1240/1879 ≈ 0.66 eV; −0.85 − 0.66 = −1.51 eV = −13.6/9, so n = 3.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2021-2022 Q8';
UPDATE questions SET calc = 1, mental = 'ΔE = 24.6 − 21.4 = 3.2 eV. λ ≈ 1240/3.2 ≈ 388 nm.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2021-2022 Q10';
UPDATE questions SET calc = 1, mental = '1240/97.28 ≈ 12.75 eV; −13.6 + 12.75 = −0.85 eV = −13.6/16, so n = 4.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q20';
UPDATE questions SET calc = 1, mental = '1240/1879 ≈ 0.66 eV; −0.85 − 0.66 = −1.51 eV = −13.6/9, so n = 3.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q21';
UPDATE questions SET calc = 1, mental = 'ΔE = 24.6 − 21.4 = 3.2 eV. λ ≈ 1240/3.2 ≈ 388 nm.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q23';
UPDATE questions SET calc = 1, mental = 'ΔE = 13.6(1/4 − 1/36) = 13.6 × 2/9 ≈ 3.02 eV. ν = E/h = (3 × 1.6×10⁻¹⁹)/(6.6×10⁻³⁴) ≈ 7.3×10¹⁴ s⁻¹. The exponent removes D (10⁴).' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q29';
UPDATE questions SET calc = 1, mental = '56.8 Å = 5.68 nm, and E ≈ 1240/5.68 ≈ 218 eV (1240/6 ≈ 207, so a bit above that).' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2023-2024 Q15';
UPDATE questions SET calc = 1, mental = '1240/97.28 ≈ 12.75 eV; −13.6 + 12.75 = −0.85 eV = −13.6/16, so n = 4.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2023-2024 Q17';
UPDATE questions SET calc = 1, mental = '1240/1879 ≈ 0.66 eV; −0.85 − 0.66 = −1.51 eV = −13.6/9, so n = 3.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2023-2024 Q18';
UPDATE questions SET calc = 1, mental = 'v = h/(mλ). mλ = 9.1×10⁻³¹ × 3.63×10⁻¹⁰ ≈ 33×10⁻⁴¹ = 3.3×10⁻⁴⁰. v ≈ 6.62×10⁻³⁴ / 3.3×10⁻⁴⁰ = 2×10⁶ m/s.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q1';
UPDATE questions SET calc = 1, mental = '12.1 eV lifts the electron from −13.6 to −1.5 eV at most, which is n = 3. n = 2 (10.2 eV) and n = 3 (12.09 eV) are reachable; n = 4 (12.75 eV) is not.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q5';
UPDATE questions SET calc = 1, mental = 'Gaps: 2→1 = 10.2 eV, 3→1 = 12.09 eV, 3→2 = 1.89 eV. λ ≈ 1240/E gives about 122, 103 and 656 nm.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q6';
UPDATE questions SET calc = 1, mental = 'Ec = 100 × 1.6×10⁻¹⁹ = 1.6×10⁻¹⁷ J. λ = h/√(2mEc), and 2mEc = 2 × 1.67×10⁻²⁷ × 1.6×10⁻¹⁷ ≈ 5.3×10⁻⁴⁴, whose root is ≈ 2.3×10⁻²². λ ≈ 6.62×10⁻³⁴ / 2.3×10⁻²² ≈ 2.9×10⁻¹² m.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q7';
UPDATE questions SET calc = 1, mental = '−13.6 + 12.09 = −1.51 eV = −13.6/9, so n = 3.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2025-2026 Q4';
UPDATE questions SET calc = 1, mental = '1240/657.7 ≈ 1.89 eV; −1.51 − 1.89 = −3.40 eV = −13.6/4, so n = 2.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2025-2026 Q5';
UPDATE questions SET calc = 1, mental = 'Count the pairs among levels 4, 3, 2, 1: 3 + 2 + 1 = 6 lines.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND origin = 'exam' AND source = 'EMD1 2025-2026 Q6';

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About the physical quantities that characterize a wave:', 'λ is the length of one cycle and ν = 1/T, in Hz. The period is a time (the time for one cycle), and the number of cycles per unit of time is the frequency. The wave number is the inverse of the wavelength, not of the frequency.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The wavelength is the distance between two successive peaks', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The period is the number of cycles per unit of time', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The frequency is the inverse of the period and is expressed in hertz', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The wave number is the inverse of the frequency', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About an electromagnetic wave:', 'E and B oscillate at the same frequency and are perpendicular, not parallel. The speed depends on the medium and equals 3×10⁸ m/s in a vacuum, not 3×10⁶.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The electric field E and the magnetic field B are parallel to each other', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'E and B oscillate at the same frequency', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its propagation speed depends on the medium', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its speed in a vacuum is 3×10⁶ m/s', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A radiation has a wavelength λ = 500 nm in a vacuum (c = 3×10⁸ m/s). For this radiation:', 'ν = c/λ = 3×10⁸ / 5×10⁻⁷ = 6×10¹⁴ Hz, T = 1/ν ≈ 1.7×10⁻¹⁵ s, and 1/λ = 2×10⁶ m⁻¹. The value 2×10⁻³ is correct only in nm⁻¹, so option C has the wrong unit.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 3, 1, 1, 'Convert first: 500 nm = 5×10⁻⁷ m. Then 3×10⁸ / 5×10⁻⁷ = 0.6×10¹⁵ = 6×10¹⁴ Hz, and T = 1/(6×10¹⁴) ≈ 0.17×10⁻¹⁴ s. The wave number is 1/(5×10⁻⁷) = 0.2×10⁷ = 2×10⁶ m⁻¹.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The frequency is ν = 6×10¹⁴ Hz', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The period is T ≈ 1.7×10⁻¹⁵ s', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The wave number is 2×10⁻³ m⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The wave number is 2×10⁶ m⁻¹', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which ranking of these radiations is in order of increasing wavelength?', 'Gamma rays have the shortest wavelengths, and the sequence runs through X-rays, ultraviolet, visible and infrared. Option A is the same list reversed, so it ranks by decreasing wavelength.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Infrared < visible < ultraviolet < X-rays < gamma rays', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'X-rays < gamma rays < ultraviolet < visible < infrared', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Gamma rays < X-rays < ultraviolet < visible < infrared', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Gamma rays < X-rays < visible < ultraviolet < infrared', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About the visible part of the electromagnetic spectrum:', 'The visible range is about 390–760 nm, a narrow portion of a mostly invisible spectrum. Violet borders the ultraviolet and red merges into the infrared, so B and C swap the two ends.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It covers wavelengths from about 390 nm to about 760 nm', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Violet appears just after infrared', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Red merges into ultraviolet', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is a narrow portion located roughly in the middle of the spectrum', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Compare a photon of violet light (λ = 400 nm) with a photon of red light (λ = 700 nm):', 'E = hν = hc/λ, so energy is proportional to frequency and inversely proportional to wavelength. The shorter-wavelength violet photon therefore has both the higher frequency and the higher energy.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 6, 8, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The violet photon carries more energy', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The energy of a photon is proportional to its frequency', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The energy of a photon is proportional to its wavelength', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The red photon has the higher frequency', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A photon has a wavelength λ = 620 nm. Its energy is: (h = 6.62×10⁻³⁴ J·s; c = 3×10⁸ m/s; 1 eV = 1.6×10⁻¹⁹ J)', 'E = hc/λ = (6.62×10⁻³⁴ × 3×10⁸) / (6.2×10⁻⁷) = 3.2×10⁻¹⁹ J = 2.0 eV. Option C comes from leaving λ in nm instead of converting to metres.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 6, 8, 1, 'hc ≈ 2×10⁻²⁵ J·m, so E ≈ 2×10⁻²⁵ / 6.2×10⁻⁷ ≈ 3.2×10⁻¹⁹ J. Divide by 1.6×10⁻¹⁹ to get 2 eV. The shortcut λ(nm) ≈ 1240/E(eV) gives the same: 1240/620 = 2.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.5 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.0 eV', 1),
  ((SELECT MAX(id) FROM questions), 'C', '3.2×10⁻²⁸ J', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3.2×10⁻¹⁹ J', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'An electron transition releases a photon of energy 3.10 eV. The wavelength of this photon and its spectral region are: (h = 6.62×10⁻³⁴ J·s; c = 3×10⁸ m/s; 1 eV = 1.6×10⁻¹⁹ J)', 'λ = hc/E ≈ 1240/3.10 = 400 nm, which lies inside the visible range (about 390–760 nm), at the violet end. Infrared starts beyond about 760 nm.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 6, 8, 1, 'λ(nm) ≈ 1240/E(eV), because hc/e = (6.62×10⁻³⁴ × 3×10⁸)/(1.6×10⁻¹⁹) ≈ 1240 eV·nm. So 1240/3.1 = 400 nm. Options B and D fail immediately: 40 nm is not visible and 4000 nm is not ultraviolet.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '400 nm; infrared', 0),
  ((SELECT MAX(id) FROM questions), 'B', '40 nm; visible', 0),
  ((SELECT MAX(id) FROM questions), 'C', '400 nm; visible', 1),
  ((SELECT MAX(id) FROM questions), 'D', '4000 nm; ultraviolet', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'An electron (m = 9.1×10⁻³¹ kg) moves at v = 2.18×10⁶ m/s. The wavelength of the associated De Broglie wave is: (h = 6.62×10⁻³⁴ J·s)', 'λ = h/mv = 6.62×10⁻³⁴ / (9.1×10⁻³¹ × 2.18×10⁶) ≈ 3.3×10⁻¹⁰ m = 3.3 Å. Option C is the ratio inverted (mv/h).', 'Lesson: Light and the Bohr atom', NULL, 'generated', 7, 2, 1, 'mv ≈ 9 × 2.2 ≈ 20, with 10⁻³¹⁺⁶ = 10⁻²⁵, so mv ≈ 2×10⁻²⁴. Then 6.6×10⁻³⁴ / 2×10⁻²⁴ = 3.3×10⁻¹⁰ m = 3.3 Å.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.33 Å', 0),
  ((SELECT MAX(id) FROM questions), 'B', '33 Å', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3×10⁹ m', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3.3 Å', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A particle of mass m = 6.62×10⁻²⁷ kg travels at v = 10³ m/s. Its De Broglie wavelength is: (h = 6.62×10⁻³⁴ J·s)', 'λ = h/mv = 6.62×10⁻³⁴ / (6.62×10⁻²⁷ × 10³) = 10⁻¹⁰ m, and 1 Å = 10⁻¹⁰ m.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 7, 2, 1, 'The 6.62 cancels, leaving only powers of ten: 10⁻³⁴ / 10⁻²⁴ = 10⁻¹⁰ m = 1 Å.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1 Å', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.1 Å', 0),
  ((SELECT MAX(id) FROM questions), 'C', '10 Å', 0),
  ((SELECT MAX(id) FROM questions), 'D', '100 Å', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About De Broglie''s relation:', 'λ = h/mv makes the wavelength inversely proportional to both mass and speed, so doubling v halves λ. The standing-wave condition is 2πr = nλ.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 7, 2, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A wave of wavelength λ = h/mv can be associated with any moving material particle', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Doubling the speed of a particle doubles its wavelength', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'At the same speed, the heavier particle has the shorter wavelength', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'For an electron in orbit, the total length of the orbit is an integer multiple of its wavelength', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'In the De Broglie model, an electron of the hydrogen atom is on the orbit n = 2, of radius r = 2.12 Å. Its wavelength λ is:', 'The standing-wave condition is 2πr = nλ, so λ = 2πr/n = 2π × 2.12 / 2 ≈ 6.66 Å. Option C forgets to divide by n = 2.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 7, 0, 1, 'With n = 2 the 2 cancels, so λ = πr ≈ 3.14 × 2.12: 3 × 2.12 = 6.36, plus about 0.3, gives about 6.66 Å.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.33 Å', 0),
  ((SELECT MAX(id) FROM questions), 'B', '6.66 Å', 1),
  ((SELECT MAX(id) FROM questions), 'C', '13.3 Å', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.12 Å', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The figure shows the spectra obtained when two different light sources are passed through a glass prism (upper and lower panels). Which statements are correct?', 'White light (sunlight, incandescent solids) gives a continuous spectrum, while a low-pressure gas discharge gives discrete lines. Sunlight would therefore look like the upper panel, not the lower one.', 'Lesson: Light and the Bohr atom', 's1/lessons/light-and-the-bohr-atom-g1.png', 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The upper spectrum is continuous, as produced by light from an incandescent tungsten bulb', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The lower spectrum is a line spectrum, as produced by an electrical discharge in low-pressure hydrogen', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Sunlight dispersed by a prism would give a spectrum like the lower one', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The prism separates the radiation into its characteristic wavelengths', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About Rutherford''s planetary model of the atom:', 'The emitted radiation carries energy away, so the electron should lose energy and spiral inward, not gain energy and move away. Since atoms exist, this is a contradiction, which Bohr''s model addressed.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 10, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The orbiting electron gains energy and moves away from the nucleus', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'According to electrodynamics, the orbiting electron should emit electromagnetic radiation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The electron should end up falling into the nucleus, which contradicts the existence of the atom', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Bohr resolved this contradiction in 1913 with a model based on the quantization of energy', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About Bohr''s postulates for the hydrogen atom:', 'The first postulate describes stationary circular orbits of constant energy. Radiation is absorbed or emitted only during a transition between orbits, with ΔE = hν.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 11, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'First postulate: the electron moves on elliptical orbits whose energy varies', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Second postulate: the angular momentum mvr is an integer multiple of h/2π', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Third postulate: during a transition between two orbits, ΔE = |En₁ − En₂| = hν', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Third postulate: the electron radiates continuously while it stays on an orbit', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Consider the levels n = 2 and n = 4 of the hydrogen atom. According to Bohr''s model:', 'Moving up absorbs and moving down emits, and both transitions have the same ΔE = |E₄ − E₂| = hν, so the same frequency and wavelength. On a stationary orbit the energy stays constant, so there is no emission.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 11, 7, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Going from n = 2 to n = 4, the electron absorbs radiation', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Going from n = 4 to n = 2, the electron emits radiation', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The radiation absorbed in 2→4 and the radiation emitted in 4→2 have the same wavelength', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'While it stays on n = 4, the electron continuously emits radiation', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The radius of the orbit n = 3 of the hydrogen atom is: (a₀ = 0.53 Å)', 'rₙ = a₀n², so r₃ = 9 × 0.53 = 4.77 Å. Option A multiplies by n instead of n², and D is the radius of n = 2.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 14, 3, 1, '9 × 0.53 = 10 × 0.53 − 0.53 = 5.3 − 0.53 = 4.77 Å.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.59 Å', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4.77 Å', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.059 Å', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.12 Å', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The electron of a hydrogen atom moves from n = 1 to n = 2. (a₀ = 0.53 Å; E₁ = −13.6 eV) In the new orbit:', 'The radius grows as n² (rₙ = a₀n², ×4 here, giving 2.12 Å). The speed falls as 1/n (vₙ = v₀/n) and the energy goes as 1/n² (−13.6/4 = −3.4 eV).', 'Lesson: Light and the Bohr atom', NULL, 'generated', 15, 3, 1, 'Use the scaling with n = 2: radius × 4 (0.53 × 4 = 2.12 Å), speed ÷ 2, energy ÷ 4 (13.6/4 = 3.4 eV).');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The radius is multiplied by 2', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'The speed of the electron is divided by 2', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The energy of the electron is −3.4 eV', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The radius is 2.12 Å', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About the energy of the electron in a stationary orbit of radius r:', 'Ep = −Ke²/r and Ec = Ke²/2r, so E_T = −Ke²/r + Ke²/2r = −Ke²/2r = −Ec. Option C gives the potential energy, not the total energy.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 16, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The total energy is the sum of the kinetic energy and the potential energy', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The kinetic energy is Ec = Ke²/2r', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The total energy is E_T = −Ke²/r', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The total energy equals the opposite of the kinetic energy', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Combining the balance of forces with the quantization of angular momentum gives the radius of the Bohr orbit:', 'The boxed result is r = n²h²/(4Kmₑπ²e²), which is a₀n²; for n = 1 it gives about 0.53 Å. Option A has n instead of n², and B is the fraction inverted.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 17, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'r = n · h² / (4Kmₑπ²e²)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'r = n² · 4Kmₑπ²e² / h²', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'r = n² · h / (2πmₑe²)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'r = n² · h² / (4Kmₑπ²e²)', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The energy of the level n = 2 of the hydrogen atom is: (E₁ = −13.6 eV = −21.76×10⁻¹⁹ J)', 'Eₙ = E₁/n², so E₂ = E₁/4 = −3.40 eV = −5.44×10⁻¹⁹ J. Options C and D divide by n instead of n².', 'Lesson: Light and the Bohr atom', NULL, 'generated', 17, 7, 1, 'Divide by n² = 4 by halving twice: 13.6 → 6.8 → 3.4, and 21.76 → 10.88 → 5.44. One halving only is the trap in C and D.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−3.40 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '−5.44×10⁻¹⁹ J', 1),
  ((SELECT MAX(id) FROM questions), 'C', '−6.8 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−10.88×10⁻¹⁹ J', 0);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Using the energy diagram of the hydrogen atom in the figure (energies in eV), the smallest energy that an electron on level n = 2 must absorb to reach level n = 5 is:', 'ΔE = E₅ − E₂ = −0.54 − (−3.40) = 2.86 eV. Option B adds the two magnitudes instead of taking the difference.', 'Lesson: Light and the Bohr atom', 's1/lessons/light-and-the-bohr-atom-g2.png', 'generated', 18, 7, 1, 'Take the difference of the magnitudes when both levels are negative: 3.40 − 0.54 = 2.86 eV.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.54 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '3.94 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '2.86 eV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '2.06 eV', 0);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'A hydrogen atom in its ground state (E₁ = −13.6 eV; E₂ = −3.40 eV; E₃ = −1.51 eV; E₄ = −0.85 eV) receives photons of various energies. Which photons can it absorb?', 'A photon is absorbed only if hν equals a gap between two levels: 10.2 eV reaches n = 2 and 12.75 eV reaches n = 4. A photon of 11.0 or 5.0 eV matches no gap, because energy is quantized.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 18, 7, 1, 'Add each photon energy to −13.6 and see if a real level appears: 10.2 gives −3.40 (n = 2), 12.75 gives −0.85 (n = 4), 11.0 gives −2.6 and 5.0 gives −8.6, which are not levels.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10.2 eV', 1),
  ((SELECT MAX(id) FROM questions), 'B', '11.0 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '12.75 eV', 1),
  ((SELECT MAX(id) FROM questions), 'D', '5.0 eV', 0);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The smallest energy needed to ionize a hydrogen atom whose electron is on level n = 3 is: (E₃ = −1.51 eV)', 'The ionized state has E∞ = 0, so ΔE = 0 − (−1.51) = 1.51 eV. The value 13.6 eV applies from the ground state, and 12.09 eV is the gap from n = 1 to n = 3.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 18, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '12.09 eV', 0),
  ((SELECT MAX(id) FROM questions), 'B', '13.6 eV', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3.40 eV', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.51 eV', 1);

-- G25
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'The electrons of a hydrogen sample are excited to level n = 5. Counting every possible return path to the ground state, how many different lines can the emission spectrum show?', 'Each pair of levels among n = 5, 4, 3, 2, 1 gives one line: 4 + 3 + 2 + 1 = 10. The value 4 counts only single-step returns.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 18, 1, 1, 'Add from the top: 4 + 3 + 2 + 1 = 10, which is n(n − 1)/2 with n = 5.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5', 0),
  ((SELECT MAX(id) FROM questions), 'C', '10', 1),
  ((SELECT MAX(id) FROM questions), 'D', '25', 0);

-- G26
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'Which transitions of the hydrogen atom emit visible radiation (about 390–760 nm)? (E₁ = −13.6 eV; E₂ = −3.40 eV; E₃ = −1.51 eV; E₄ = −0.85 eV; h = 6.62×10⁻³⁴ J·s; c = 3×10⁸ m/s; 1 eV = 1.6×10⁻¹⁹ J)', 'With λ = hc/ΔE: 3→2 (1.89 eV) gives about 657 nm and 4→2 (2.55 eV) gives about 487 nm, both visible. 2→1 (10.2 eV) gives about 122 nm, in the ultraviolet, and 4→3 (0.66 eV) gives about 1880 nm, in the infrared.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 18, 8, 1, 'With λ(nm) ≈ 1240/E(eV), visible light means E from about 1240/760 ≈ 1.6 eV to 1240/390 ≈ 3.2 eV. Just check which gaps fall in that window: 1.89 and 2.55 do, 10.2 and 0.66 don''t.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n = 2 → n = 1', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n = 3 → n = 2', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'n = 4 → n = 3', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n = 4 → n = 2', 1);

-- G27
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry'), 'About the energy diagram of the hydrogen atom:', 'n = 1 is the ground state, and the excited states start at n = 2. The levels crowd together toward E∞ = 0: the gap is 10.2 eV for 1→2 but only 0.31 eV for 4→5.', 'Lesson: Light and the Bohr atom', NULL, 'generated', 18, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Chemistry') AND title = 'Light and the Bohr atom'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The ionized state corresponds to E∞ = 0', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The first excited state is the level n = 1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The gaps between successive levels get smaller as n increases', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The ground state has an energy of −13.6 eV, which is −21.76×10⁻¹⁹ J', 1);
