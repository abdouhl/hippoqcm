-- Generated from data/lessons/s1-biostatistics-descriptive-statistics.json — lesson "Descriptive statistics": 55 exam + 27 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Descriptive statistics', 's1/biostatistics/descriptive-statistics.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source IN (
    'EMD1 2018-2019 Q1',
    'EMD1 2018-2019 Q2',
    'EMD1 2018-2019 Q5',
    'EMD1 2018-2019 Q6',
    'EMD1 2018-2019 Q7',
    'EMD1 2018-2019 Q8',
    'EMD1 2018-2019 Q9',
    'EMD1 2018-2019 Q10',
    'EMD1 2018-2019 Q11',
    'EMD1 2021-2022 Q5',
    'EMD1 2021-2022 Q6',
    'EMD1 2021-2022 Q7',
    'EMD1 2021-2022 Q8',
    'EMD1 2021-2022 Q9',
    'EMD1 2021-2022 Q16',
    'EMD1 2022-2023 Q6',
    'EMD1 2022-2023 Q7',
    'EMD1 2022-2023 Q8',
    'EMD1 2022-2023 Q9',
    'EMD1 2022-2023 Q10',
    'EMD1 2022-2023 Q11',
    'EMD1 2023-2024 Q1',
    'EMD1 2023-2024 Q5',
    'EMD1 2023-2024 Q6',
    'EMD1 2023-2024 Q7',
    'EMD1 2024-2025 Q5',
    'EMD1 2024-2025 Q6',
    'EMD1 2024-2025 Q7',
    'EMD1 2024-2025 Q8',
    'EMD1 2024-2025 Q9',
    'EMD1 2024-2025 Q10',
    'EMD1 2025-2026 Q5',
    'EMD1 2025-2026 Q7',
    'EMD1 2025-2026 Q8',
    'EMD1 2025-2026 Q9',
    'EMD1 2025-2026 Q10',
    'EMD2 2017-2018 Q1',
    'EMD2 2017-2018 Q2',
    'EMD2 2017-2018 Q4',
    'EMD2 2017-2018 Q5',
    'EMD2 2017-2018 Q6',
    'EMD2 2017-2018 Q7',
    'EMD2 2017-2018 Q8',
    'EMD2 2017-2018 Q9',
    'EMD2 2017-2018 Q10',
    'EMD2 2017-2018 Q11',
    'EMD2 2017-2018 Q12',
    'EMD2 2017-2018 Q13',
    'EMD2 2017-2018 Q14',
    'EMD2 2017-2018 Q15',
    'EMD2 2017-2018 Q16',
    'EMD2 2017-2018 Q17',
    'EMD2 2017-2018 Q18',
    'EMD2 2017-2018 Q19',
    'EMD2 2017-2018 Q20'
  );
UPDATE questions SET calc = 1, mental = 'n = 19, log₁₀19 ≈ 1.28 (between log 10 = 1 and log 20 ≈ 1.3): nc ≈ 1 + 3.33 × 1.28 ≈ 1 + 4.3 = 5.3 → 5 classes.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q6';
UPDATE questions SET calc = 1, mental = 'Range e = 2.42 − 0.48 = 1.94; a = 1.94 / 5 = 0.388 → round up to 0.39 so the 5 classes cover the maximum.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q7';
UPDATE questions SET calc = 1, mental = 'Classes from 0.48 by 0.39 hold 3, 8, 4, 2, 2 values. n/2 = 9.5 falls in [0.87; 1.26[ (cumulative 3 → 11): Me = 0.87 + 0.39 × (9.5 − 3)/8 = 0.87 + 0.39 × 0.81 ≈ 0.87 + 0.32 = 1.19.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q8';
UPDATE questions SET calc = 1, mental = 'Modal class [0.87; 1.26[ (8 values): d₁ = 8 − 3 = 5, d₂ = 8 − 4 = 4. Mo = 0.87 + 0.39 × 5/9 ≈ 0.87 + 0.217 = 1.087. It must lie inside the modal class, which rules out 1.3 and 1.4.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q9';
UPDATE questions SET calc = 1, mental = 'Class centres 0.675, 1.065, 1.455, 1.845, 2.235 with counts 3, 8, 4, 2, 2: Σnᵢxᵢ ≈ 2.03 + 8.52 + 5.82 + 3.69 + 4.47 = 24.5, then 24.5 / 19 ≈ 1.29. Option D (24) is the sum, not the mean.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q10';
UPDATE questions SET calc = 1, mental = 'Var = Σnᵢxᵢ²/n − x̄²: Σnᵢxᵢ² ≈ 1.37 + 9.07 + 8.47 + 6.81 + 9.99 ≈ 35.7, so 35.7/19 ≈ 1.879 and 1.879 − 1.29² (1.666) ≈ 0.21. 0.80/0.81 forget to subtract x̄².' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2018-2019 Q11';
UPDATE questions SET calc = 1, mental = 'Centres 9.2, 10.8, …, 18.8 (step 1.6) with counts 7, 9, 9, 10, 8, 3, 4. Work from 14 (the middle centre): deviations in steps of 1.6 are −3,−2,−1,0,1,2,3 → Σnᵢdᵢ = −21 −18 −9 +0 +8 +6 +12 = −22, so x̄ = 14 + 1.6 × (−22/50) = 14 − 0.704 = 13.296.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2021-2022 Q5';
UPDATE questions SET calc = 1, mental = 'With the same coded deviations d (steps of 1.6 around 14): Σnᵢdᵢ² = 63 + 36 + 9 + 0 + 8 + 12 + 36 = 164, so Var(d) = 164/50 − 0.44² = 3.28 − 0.194 = 3.086 and σ = 1.6 × √3.086 ≈ 1.6 × 1.757 ≈ 2.81.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2021-2022 Q6';
UPDATE questions SET calc = 1, mental = 'n/2 = 25; cumulative counts 7, 16, 25 → Me is the upper bound of the 3rd class: 8.4 + 3 × 1.6 = 13.2.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2021-2022 Q7';
UPDATE questions SET calc = 1, mental = 'Modal class [13.2; 14.8[ (10): d₁ = 10 − 9 = 1, d₂ = 10 − 8 = 2 → Mo = 13.2 + 1.6 × 1/3 ≈ 13.733.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2021-2022 Q8';
UPDATE questions SET calc = 1, mental = 'Q1: n/4 = 12.5 in [10; 11.6[ (cum 7 → 16): 10 + 1.6 × 5.5/9 ≈ 10.98. Q3: 3n/4 = 37.5 in [14.8; 16.4[ (cum 35 → 43): 14.8 + 1.6 × 2.5/8 = 15.3. IQR ≈ 15.3 − 10.98 = 4.32.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2021-2022 Q9';
UPDATE questions SET calc = 1, mental = 'The decreasing cumulative count at the smallest value includes everybody: n = n↘(3) = 25.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q7';
UPDATE questions SET calc = 1, mental = 'Counts from the decreasing cumulatives: 25−21 = 4, 21−13 = 8, 13−7 = 6, 7. Σnᵢxᵢ = 12 + 56 + 72 + 98 = 238, and 238/25 = 9.52.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q8';
UPDATE questions SET calc = 1, mental = 'Σnᵢxᵢ² = 36 + 392 + 864 + 1372 = 2664, so 2664/25 = 106.56; 106.56 − 9.52² (90.63) = 15.93.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q9';
UPDATE questions SET calc = 1, mental = 'Recover the counts first (4, 8, 6, 7): the largest is 8, for x = 7. Don''t pick 14 just because its decreasing cumulative is listed last.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q10';
UPDATE questions SET calc = 1, mental = 'n = 25 is odd → Me = x₁₃. Cumulative counts 4, 12, 18: the 13th value is in the x = 12 group.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2022-2023 Q11';
UPDATE questions SET calc = 1, mental = 'From the table''s row totals: x̄ = Σnᵢ.xᵢ/100 and Var = Σnᵢ.xᵢ²/100 − x̄². With n = 100, dividing is just moving the decimal point. Check that the second number is a variance (≈ 36.7, σ ≈ 6), not a standard deviation.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2023-2024 Q5';
UPDATE questions SET calc = 1, mental = 'Same method with the column totals. Then check the pair is (mean; σ): √19.63 ≈ 4.43, so (24.15; 19.63) gives the variance instead of σ.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2023-2024 Q6';
UPDATE questions SET calc = 1, mental = 'ρ = cov/(σX·σY) with σX = √36.66 ≈ 6.05 and σY ≈ 4.43 (product ≈ 26.8); cov = Σnᵢⱼxᵢyⱼ/100 − x̄ȳ. ρ ≈ 0.58 corresponds to cov ≈ 15.5.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2023-2024 Q7';
UPDATE questions SET calc = 1, mental = 'x̄ = Σnᵢ.xᵢ/234, Var = Σnᵢ.xᵢ²/234 − x̄². Check: σ ≈ √208 ≈ 14.4 is plausible for ages spread over several decades, while 15.6 would mean σ ≈ 4.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q5';
UPDATE questions SET calc = 1, mental = 'Same with the sleep-time margins. Check the second number is σ: 2.38² ≈ 5.7, so options with 5.69 have confused variance and σ.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q6';
UPDATE questions SET calc = 1, mental = 'Older people sleep less, so cov must be negative, which leaves −26.13 or −11.22. cov = Σnᵢⱼxᵢyⱼ/n − x̄ȳ.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q7';
UPDATE questions SET calc = 1, mental = 'ρ = −26.13 / (√208.35 × 2.38) ≈ −26.13 / (14.43 × 2.38 ≈ 34.3) ≈ −0.76. The sign must match the covariance, which leaves −34% or −76%.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q8';
UPDATE questions SET calc = 1, mental = 'a = cov/σX² = −26.13/208.35 ≈ −0.125; b = ȳ − a·x̄ = 10.18 + 0.125 × 19.18 ≈ 10.18 + 2.4 ≈ 12.5. Only one option has a ≈ −0.12 and b ≈ 12.5.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q9';
UPDATE questions SET calc = 1, mental = 'y = −0.12 × 66 + 12.48 = −7.92 + 12.48 ≈ 4.6 → about 5 hours.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2024-2025 Q10';
UPDATE questions SET calc = 1, mental = 'n = Σnᵢ = 40 + 36 + 28 + 16 + 6 = 126.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2025-2026 Q5';
UPDATE questions SET calc = 1, mental = 'Σnᵢxᵢ = 0 + 36 + 56 + 48 + 24 = 164 and Σnᵢxᵢ² = 0 + 36 + 112 + 144 + 96 = 388. Var = 388/126 − (164/126)² ≈ 3.08 − 1.30² (1.69) ≈ 1.39, so σ ≈ 1.18 ≈ 1.20.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2025-2026 Q7';
UPDATE questions SET calc = 1, mental = 'n = 126 is even → Me = (x₆₃ + x₆₄)/2. Cumulative counts 40, 76: both the 63rd and 64th values are 1.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2025-2026 Q9';
UPDATE questions SET calc = 1, mental = '3n/4 = 94.5 → take x₉₅. Cumulative counts 40, 76, 104: the 95th value is 2.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD1 2025-2026 Q10';
UPDATE questions SET calc = 1, mental = 'The decreasing cumulative count at the smallest value includes everybody: n = n↘(3) = 25.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q4';
UPDATE questions SET calc = 1, mental = 'Counts 4, 8, 6, 7 (differences of the decreasing cumulatives): Σnᵢxᵢ = 12 + 56 + 72 + 98 = 238, and 238/25 = 9.52.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q5';
UPDATE questions SET calc = 1, mental = 'Σnᵢxᵢ² = 36 + 392 + 864 + 1372 = 2664, so 2664/25 = 106.56; 106.56 − 9.52² (90.63) = 15.93.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q6';
UPDATE questions SET calc = 1, mental = '√15.93: 4² = 16, so the answer is just under 4 → 3.99.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q7';
UPDATE questions SET calc = 1, mental = 'Largest count is 8, for x = 7.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q8';
UPDATE questions SET calc = 1, mental = 'n = 25 odd → Me = x₁₃; cumulative counts 4, 12, 18 → x₁₃ = 12.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q9';
UPDATE questions SET calc = 1, mental = 'Q1: n/4 = 6.25 → x₇ = 7 (cumulative 4, 12). Q3: 3n/4 = 18.75 → x₁₉ = 14 (cumulative 18, 25). IQR = 14 − 7 = 7.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q10';
UPDATE questions SET calc = 1, mental = 'CV = 100 × 3.99/9.52; 4/9.5 ≈ 0.42, so about 41.9%.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q11';
UPDATE questions SET calc = 1, mental = 'x̄ = Σnᵢ.xᵢ/n using the row margins of the table; it must lie between the smallest and largest weights shown.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q12';
UPDATE questions SET calc = 1, mental = 'ȳ = Σn.ⱼyⱼ/n using the column margins.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q13';
UPDATE questions SET calc = 1, mental = 'σX = √(Σnᵢ.xᵢ²/n − x̄²). Shift the values first (e.g. subtract 49) to keep the squares small; the variance doesn''t change.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q14';
UPDATE questions SET calc = 1, mental = 'Same as for X: shift heights by 159 before squaring, then take √.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q15';
UPDATE questions SET calc = 1, mental = 'cov = Σnᵢⱼxᵢyⱼ/n − x̄ȳ; with shifted values (x − 49, y − 159) the products stay small and the covariance is unchanged.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q16';
UPDATE questions SET calc = 1, mental = 'ρ = 24.44 / (5.3 × 5.8) = 24.44 / 30.7 ≈ 0.80.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q17';
UPDATE questions SET calc = 1, mental = 'a = cov/σX² = 24.44 / 5.3² (28.1) ≈ 0.87; b = ȳ − a·x̄ = 159 − 0.87 × 49.125 ≈ 159 − 42.7 = 116.3.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q18';
UPDATE questions SET calc = 1, mental = 'y = 0.87 × 50 + 116.26 = 43.5 + 116.26 ≈ 159.8 → 160 cm.' WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND origin = 'exam' AND source = 'EMD2 2017-2018 Q19';

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'A researcher measures the blood glucose of every one of the 1,200 patients hospitalized in a hospital. About this study:', 'When the observed sample is the entire population, the survey is a census; a survey (sondage) observes only a proper subset. Glucose is measured on a continuous scale.', 'Lesson: Descriptive statistics', NULL, 'generated', 14, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a census (exhaustive survey)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Each patient is a statistical unit (individual)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Blood glucose is a quantitative continuous variable', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The 1,200 patients form a sample, not the population', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Which of the following classifications is (are) correct?', 'Military rank and degree are ordered categories (qualitative ordinal). Weight, like height or age, is quantitative continuous; counts (children, rooms, admissions) are discrete.', 'Lesson: Descriptive statistics', NULL, 'generated', 17, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Military rank: qualitative nominal variable', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Number of hospital admissions per year: quantitative discrete variable', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Degree in higher education: qualitative ordinal variable', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Weight: quantitative discrete variable', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Which of these variables is (are) quantitative continuous?', 'Height, age, weight, speed and rates are continuous; number of children is discrete; marital status is qualitative nominal.', 'Lesson: Descriptive statistics', NULL, 'generated', 18, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Height', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Number of children', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Hemoglobin rate', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Marital status', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'About the frequencies of a statistical series with k classes and n individuals:', 'fᵢ = nᵢ/n, so each lies between 0 and 1 and they sum to 1; the counts sum to n (not k), and pᵢ = fᵢ × 100.', 'Lesson: Descriptive statistics', NULL, 'generated', 20, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0 ≤ fᵢ ≤ 1', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The relative frequencies fᵢ sum to 1', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The percentage is pᵢ = fᵢ / 100', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The counts nᵢ sum to k', 0);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'A variable takes the values 1, 2, 3, 4 with counts 5, 10, 15, 10. Which statement(s) is (are) correct?', 'n = 40. Increasing at 3: 5 + 10 + 15 = 30; decreasing at 3: 15 + 10 = 25; f₂ = 10/40 = 0.25. The decreasing count at the smallest value is the whole sample (40).', 'Lesson: Descriptive statistics', NULL, 'generated', 27, 3, 1, 'Add from the left for ↗ (5+10+15) and from the right for ↘ (10+15). The ↘ count at the first value is always n = 40, which rules out D.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The increasing cumulative count at x = 3 is 30', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The decreasing cumulative count at x = 3 is 25', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The relative frequency of x = 2 is 0.25', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The decreasing cumulative count at x = 1 is 5', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), '100 observations are collected. Using the lesson''s rule, the number of classes is:', 'nc = 1 + (10/3)·log₁₀(n) = 1 + (10/3) × 2 = 7.67, rounded to 8 classes.', 'Lesson: Descriptive statistics', NULL, 'generated', 22, 2, 1, 'log₁₀100 = 2 exactly, so nc = 1 + 20/3 = 1 + 6.67 = 7.67 → 8.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '6', 0),
  ((SELECT MAX(id) FROM questions), 'B', '7', 0),
  ((SELECT MAX(id) FROM questions), 'C', '8', 1),
  ((SELECT MAX(id) FROM questions), 'D', '10', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The same 100 observations range from 2.5 to 9.7. With the number of classes given by the lesson''s rule, the class width (amplitude) is:', 'Range e = 9.7 − 2.5 = 7.2; nc = 8; a = e/nc = 7.2/8 = 0.9. 1.03 divides by 7 classes, 0.72 by 10, and 7.2 is the range itself.', 'Lesson: Descriptive statistics', NULL, 'generated', 23, 2, 1, '7.2 / 8: 8 × 0.9 = 7.2 exactly. The width must be smaller than the range, which rules out 7.2.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.72', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.9', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1.03', 0),
  ((SELECT MAX(id) FROM questions), 'D', '7.2', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'About the histogram:', 'The histogram shows counts per class interval for a continuous quantitative variable, with areas proportional to frequencies; qualitative variables use bar or pie charts.', 'Lesson: Descriptive statistics', NULL, 'generated', 24, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The surface of each rectangle, not its height, is proportional to the frequency', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is used for a quantitative continuous variable', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the usual graph for a nominal qualitative variable', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The width of a class is called its amplitude', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Concerning the histogram (figure), which statement(s) is (are) correct?', 'Read the heights: 3, 10, 24, 16, 6, 11, 14, 7, 5, 2, 2. The class labelled 6 (24) is the tallest; class 13 has 2, and class 10 (14) is below class 7 (16).', 'Lesson: Descriptive statistics', 's1/lessons/descriptive-statistics-g1.png', 'generated', 25, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The modal class is the class labelled 6', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The class labelled 5 has a count of 10', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The class labelled 13 has a count of 5', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The class labelled 10 has a larger count than the class labelled 7', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Concerning the types of graphs (figure), which statement(s) is (are) correct?', '1 and 2 are bar charts (nominal, ordinal), 3 a pie chart (nominal), 4 a stick diagram (discrete quantitative), 5 a histogram (continuous), where area is proportional to frequency.', 'Lesson: Descriptive statistics', 's1/lessons/descriptive-statistics-g2.png', 'generated', 26, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Graph 1 can represent a nominal qualitative variable such as profession', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Graph 5 is a histogram, used for a continuous quantitative variable', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Graph 4 (stick diagram) is used for a continuous quantitative variable', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'In graph 5 the height of the rectangles, not their area, is proportional to the counts', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'About the mode:', 'The mode is the most frequent value (4 and 9 here, so bimodal); the middle value is the median. In C''s series, 7 appears three times, so Mo = 7.', 'Lesson: Descriptive statistics', NULL, 'generated', 30, 5, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It can be defined for a qualitative as well as a quantitative variable', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The series 2, 4, 4, 6, 9, 9 is bimodal', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is the value in the middle of the ordered series', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The series 1, 1, 4, 7, 7, 7, 15 has mode 1', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The number of medical consultations per year X takes the values 0, 1, 2, 3 with counts 10, 20, 15, 5. The arithmetic mean is:', 'x̄ = Σnᵢxᵢ/n = (0 + 20 + 30 + 15)/50 = 65/50 = 1.3. 1.5 is the plain average of the values, ignoring counts; 1.63 divides by 40.', 'Lesson: Descriptive statistics', NULL, 'generated', 35, 7, 1, 'Σnᵢxᵢ = 0 + 20 + 30 + 15 = 65; n = 10 + 20 + 15 + 5 = 50; 65/50 = 1.3.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.5', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.63', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.3', 1),
  ((SELECT MAX(id) FROM questions), 'D', '2.6', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'A continuous variable is grouped into [0; 10[ (4), [10; 20[ (10) and [20; 30[ (6). The arithmetic mean is:', 'For classes use the centres 5, 15, 25: (20 + 150 + 150)/20 = 16. Using lower bounds gives 11, upper bounds 21.', 'Lesson: Descriptive statistics', NULL, 'generated', 36, 7, 1, 'Centres 5, 15, 25 → 4×5 + 10×15 + 6×25 = 20 + 150 + 150 = 320; 320/20 = 16. The mean must lie inside the middle, heaviest class, which rules out 6.67.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '11', 0),
  ((SELECT MAX(id) FROM questions), 'B', '16', 1),
  ((SELECT MAX(id) FROM questions), 'C', '21', 0),
  ((SELECT MAX(id) FROM questions), 'D', '6.67', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'About the median Me of a discrete series of n ordered values:', 'For n even (2p), Me = (xₚ + xₚ₊₁)/2, the average of the two middle values.', 'Lesson: Descriptive statistics', NULL, 'generated', 39, 5, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The values must be arranged in increasing order', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'If n = 2p + 1, Me = xₚ₊₁', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'If n = 2p, Me = xₚ', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Me equals the second quartile Q₂', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'A variable takes the values 1, 2, 3, 4, 5 with counts 3, 5, 8, 6, 3. The median is:', 'n = 25 is odd (2p + 1 with p = 12), so Me = x₁₃. Cumulative counts 3, 8, 16: the 13th value is 3.', 'Lesson: Descriptive statistics', NULL, 'generated', 40, 5, 1, 'n = 25 → middle rank 13. Running total 3, 8, 16 passes 13 at x = 3.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.5', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3', 1),
  ((SELECT MAX(id) FROM questions), 'D', '4', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Hemoglobin classes: [10; 20[ (6), [20; 30[ (14), [30; 40[ (10). The mode Mo is about:', 'Modal class [20; 30[: d₁ = 14 − 6 = 8, d₂ = 14 − 10 = 4. Mo = 20 + 10 × 8/(8 + 4) = 26.67. 23.33 swaps d₁ and d₂; 25 is just the class centre.', 'Lesson: Descriptive statistics', NULL, 'generated', 42, 5, 1, 'Mo = 20 + 10 × 8/12 = 20 + 6.67. The mode leans toward the larger neighbour (10 above vs 6 below), so it must exceed 25.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '25', 0),
  ((SELECT MAX(id) FROM questions), 'B', '23.33', 0),
  ((SELECT MAX(id) FROM questions), 'C', '26.67', 1),
  ((SELECT MAX(id) FROM questions), 'D', '28', 0);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Same classes: [10; 20[ (6), [20; 30[ (14), [30; 40[ (10). The median Me is about:', 'n = 30, n/2 = 15 falls in [20; 30[ (cumulative 6 → 20): Me = 20 + 10 × (15 − 6)/(20 − 6) = 20 + 90/14 ≈ 26.43. 26.67 is the mode.', 'Lesson: Descriptive statistics', NULL, 'generated', 44, 5, 1, '9/14 ≈ 0.64, so Me ≈ 20 + 6.4 = 26.4.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '25', 0),
  ((SELECT MAX(id) FROM questions), 'B', '26.43', 1),
  ((SELECT MAX(id) FROM questions), 'C', '26.67', 0),
  ((SELECT MAX(id) FROM questions), 'D', '21.43', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'X takes the values 1, 2, 3 with counts 2, 4, 4. Its variance is:', 'x̄ = 22/10 = 2.2; Σnᵢxᵢ²/n = 54/10 = 5.4; V = 5.4 − 2.2² = 5.4 − 4.84 = 0.56. 5.40 forgets to subtract x̄², and 0.75 ≈ σ.', 'Lesson: Descriptive statistics', NULL, 'generated', 45, 7, 1, '2.2² = 4.84; 5.4 − 4.84 = 0.56. A variance can''t exceed the mean of squares, and here σ ≈ 0.75, so 0.75 is the standard deviation, not the variance.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.40', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.75', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3.24', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.56', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'In a group of women, hemoglobin has mean 125 g/L and standard deviation 10 g/L. The coefficient of variation is:', 'CV = 100 × σ/x̄ = 100 × 10/125 = 8%. 12.5% inverts the ratio.', 'Lesson: Descriptive statistics', NULL, 'generated', 46, 1, 1, '10/125 = 2/25 = 0.08 → 8%.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '12.5%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '8%', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.08%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '80%', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'About quartiles and quantiles:', 'All true: quartiles split into 4 parts, deciles into 10, percentiles into 100; Q₂ is the median.', 'Lesson: Descriptive statistics', NULL, 'generated', 52, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '25% of the values are below Q₁ and 75% above it', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Q₂ is the median', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The interquartile range is IQR = Q₃ − Q₁', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Percentiles (centiles) divide the distribution into 100 equal parts', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'X takes the values 1, 2, 3, 4, 5 with counts 2, 4, 6, 5, 3 (n = 20). Following the lesson''s method, the interquartile range is:', 'n/4 = 5 → Q₁ = x₅ = 2 (cumulative 2, 6); 3n/4 = 15 → Q₃ = x₁₅ = 4 (cumulative 12, 17). IQR = 4 − 2 = 2.', 'Lesson: Descriptive statistics', NULL, 'generated', 48, 3, 1, 'Running totals 2, 6, 12, 17, 20: the 5th value is 2, the 15th is 4.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2', 1),
  ((SELECT MAX(id) FROM questions), 'C', '3', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4', 0);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Classes [0; 10[ (6), [10; 20[ (20), [20; 30[ (14), n = 40. The first quartile Q₁ is:', 'n/4 = 10 falls in [10; 20[ (cumulative 6 → 26): Q₁ = 10 + 10 × (10 − 6)/(26 − 6) = 10 + 2 = 12.', 'Lesson: Descriptive statistics', NULL, 'generated', 49, 3, 1, '(10 − 6)/20 = 0.2 of the width 10 = 2, so Q₁ = 12.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '10', 0),
  ((SELECT MAX(id) FROM questions), 'B', '16.67', 0),
  ((SELECT MAX(id) FROM questions), 'C', '12', 1),
  ((SELECT MAX(id) FROM questions), 'D', '15', 0);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'About two statistical variables X and Y:', 'Independence implies zero covariance, but the converse is not true: zero covariance only means uncorrelated.', 'Lesson: Descriptive statistics', NULL, 'generated', 57, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'If X and Y are independent, Cov(X, Y) = 0', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'If Cov(X, Y) = 0, X and Y are necessarily independent', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'If Cov(X, Y) = 0, X and Y are said to be uncorrelated', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'X and Y are independent if and only if fᵢⱼ = fᵢ. × f.ⱼ for all i, j', 1);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'About the linear correlation coefficient ρ(X, Y):', 'ρ is invariant under a change of origin and unit. ρ = 0 only means uncorrelated, not independent.', 'Lesson: Descriptive statistics', NULL, 'generated', 59, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−1 ≤ ρ ≤ 1', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'ρ changes if heights are converted from centimetres to metres', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'ρ = Cov(X, Y) / (σX·σY)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'ρ = 0 implies that X and Y are independent', 0);

-- G25
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'For two variables, Cov(X, Y) = 12, σX = 4 and σY = 5. The linear correlation coefficient is:', 'ρ = 12/(4 × 5) = 0.6; its sign follows the covariance, and 2.4 is impossible since |ρ| ≤ 1.', 'Lesson: Descriptive statistics', NULL, 'generated', 58, 3, 1, '4 × 5 = 20; 12/20 = 0.6. A positive covariance rules out −0.6, and |ρ| ≤ 1 rules out 2.4.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.15', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−0.6', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.6', 1),
  ((SELECT MAX(id) FROM questions), 'D', '2.4', 0);

-- G26
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'For a two-variable series: x̄ = 10, ȳ = 50, Cov(X, Y) = 8, σX² = 4. The regression line of Y on X is:', 'a = Cov/σX² = 8/4 = 2; b = ȳ − a·x̄ = 50 − 20 = 30. The line passes through (x̄, ȳ): 2 × 10 + 30 = 50.', 'Lesson: Descriptive statistics', NULL, 'generated', 60, 2, 1, 'a = 8/4 = 2. Then check each option at x = 10: only y = 2x + 30 gives ȳ = 50.');
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'y = 0.5x + 45', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'y = 2x + 30', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'y = 2x + 50', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'y = 8x − 30', 0);

-- G27
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'In a contingency table of X (rows) and Y (columns):', 'nᵢ. is a row total (sum over j), n.ⱼ a column total (sum over i).', 'Lesson: Descriptive statistics', NULL, 'generated', 55, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics') AND title = 'Descriptive statistics'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'nᵢⱼ is the joint (partial) frequency of the couple (xᵢ, yⱼ)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'nᵢ. is the marginal frequency of xᵢ', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'nᵢ. is obtained by summing nᵢⱼ over i', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n.ⱼ is obtained by summing nᵢⱼ over i', 1);
