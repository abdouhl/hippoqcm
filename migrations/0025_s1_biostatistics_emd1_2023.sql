-- Generated from data/s1-biostatistics-emd1-2023.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Two events A and B are said to be independent when:', 'No official answer key for this exam — answers worked out.', 'EMD1 2022-2023 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(A ∩ B) = P(A) + P(B)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'P(A ∩ B) = P(A)·P(B)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'P(A ∩ B) = P(A) − P(B)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P(A ∩ B) = 0', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The correct formula for the expectation of the (observed) sample variance is:', 'No official key.', 'EMD1 2022-2023 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'E(S²) = 1/n', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'E(S²) = σ/(n − 1)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'E(S²) = ((n − 1)/n)·σ²', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'E(S²) = σ²/n', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The probability density function of Student''s t distribution (tₙ) is:', 'No official key.', 'EMD1 2022-2023 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'f(t) = (1 + t²/n)^(−(n−1)/2)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'f(t) = (1/(σ√2π))·e^(−½((t−µ)/σ)²)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'f(t) = (1/√2π)·e^(−½((t−µ)/σ)²)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'f(t) = cₙ(1 + t²/n)^(−(n+1)/2)', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The variance of a random variable following the chi-square distribution (n degrees of freedom) equals:', 'No official key.', 'EMD1 2022-2023 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2n', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'n', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'np', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'σ²', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Cₙᵖ, the number of combinations of p elements taken from n, equals:', 'No official key.', 'EMD1 2022-2023 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n!', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n! / (p!(n − p)!)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'n! / (n − p)!', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'p! / (n!(n − p)!)', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'In general, if X is a discrete variable taking the ordered values x₁, x₂, …, xₚ, xₚ₊₁, …, xₙ, then if n = 2p + 1 the median equals:', 'No official key.', 'EMD1 2022-2023 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'xₚ₊₁', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'xₚ + xₚ₊₁', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(xₚ + xₚ₊₁)/2', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'xₚ', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 — Distribution of the number of absences for some medical students. The table gives decreasing cumulative frequencies (n↘):
Xᵢ: 3, 7, 12, 14
n↘: 25, 21, 13, 7
The population studied is:', 'No official key — the counts are decreasing cumulative: total 25; individual frequencies 4, 8, 6, 7.', 'EMD1 2022-2023 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '25 medical students', 1),
  ((SELECT MAX(id) FROM questions), 'B', '66 medical students', 0),
  ((SELECT MAX(id) FROM questions), 'C', '36 medical students', 0),
  ((SELECT MAX(id) FROM questions), 'D', '14 medical students', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7; N = 25).
The mean X̄ equals:', 'No official key — 238/25 = 9.52.', 'EMD1 2022-2023 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7.21', 0),
  ((SELECT MAX(id) FROM questions), 'B', '9.52', 1),
  ((SELECT MAX(id) FROM questions), 'C', '7.02', 0),
  ((SELECT MAX(id) FROM questions), 'D', '13.22', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7; N = 25).
The variance equals:', 'No official key — 106.56 − 9.52² = 15.9296.', 'EMD1 2022-2023 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '16.9296', 0),
  ((SELECT MAX(id) FROM questions), 'B', '15.9296', 1),
  ((SELECT MAX(id) FROM questions), 'C', '14.9326', 0),
  ((SELECT MAX(id) FROM questions), 'D', '16.9396', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7).
The mode equals:', 'No official key.', 'EMD1 2022-2023 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '14', 0),
  ((SELECT MAX(id) FROM questions), 'B', '03', 0),
  ((SELECT MAX(id) FROM questions), 'C', '12', 0),
  ((SELECT MAX(id) FROM questions), 'D', '07', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7).
The median equals:', 'No official key — the 13th value is 12. The original exam printed "12" twice (options B and D).', 'EMD1 2022-2023 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '03', 0),
  ((SELECT MAX(id) FROM questions), 'B', '12', 1),
  ((SELECT MAX(id) FROM questions), 'C', '07', 0),
  ((SELECT MAX(id) FROM questions), 'D', '12 (repeated)', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 — A second-hand mobile phone shop has 2500 phones: 650 made in Europe, 780 made in China and the rest local. 3% of European phones and 5% of Chinese phones are returned for a defect after being sold. The probability that a sold phone is not returned is 93.38%.
What is the probability that a customer does not return a phone given that it is locally made?', 'No official key — 1070 local phones; 0.0662 × 2500 = 165.5 returns = 19.5 + 39 + 1070p → p(return | local) = 0.1, so not returned = 0.9.', 'EMD1 2022-2023 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.1', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.9', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.03', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.04', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (2500 phones: 650 European 3% returned, 780 Chinese 5% returned, 1070 local 10% returned).
A customer bought a phone and returned it a week later for a battery defect. What is the probability that it is locally made?', 'No official key — 107 / 165.5 ≈ 0.6465.', 'EMD1 2022-2023 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.03564', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.9338', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.00', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.6465', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 — X represents a family''s monthly expenses (10³ monetary units), with density f(x) = C(x − 1) if 1 ≤ x < 2; C if 2 ≤ x < 3; 2 − Cx if 3 ≤ x ≤ 4; 0 elsewhere.
Find the constant C so that f(x) is a probability density.', 'No official key — C/2 + C + (2 − 3.5C) = 2 − 2C = 1 → C = 0.5.', 'EMD1 2022-2023 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.5', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.25', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.02', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.22', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (density with C = 0.5 on [1, 4]).
Calculate the probability that a family''s monthly expenses do not exceed 2.5 (10³ monetary units).', 'No official key — 0.25 + 0.5 × 0.5 = 0.5.', 'EMD1 2022-2023 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.3', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.5', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.02', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.8', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (density with C = 0.5 on [1, 4]).
Out of 1000 families, how many are likely to spend between 2.5 and 3.5 (10³ monetary units)?', 'No official key — 0.25 + ∫₃^3.5 (2 − 0.5x)dx = 0.25 + 0.1875 = 0.4375 → ≈ 438 families.', 'EMD1 2022-2023 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '350', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1000', 0),
  ((SELECT MAX(id) FROM questions), 'C', '250', 0),
  ((SELECT MAX(id) FROM questions), 'D', '438', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (density with C = 0.5 on [1, 4]).
Calculate the standard deviation of X.', 'No official key — E(X) = 2.5, E(X²) = 6.667, V = 0.4167, σ ≈ 0.6455. The original exam printed this value twice (B and C).', 'EMD1 2022-2023 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7.21', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.6455', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.6455 (repeated)', 1),
  ((SELECT MAX(id) FROM questions), 'D', '13.22', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 — A few weeks into the year, the biostatistics teacher gives a 10-question single-choice quiz with four possible answers each (answers given at random). A response sheet is chosen at random.
What is the probability that the sheet contains 3 correct answers?', 'No official key — X ~ B(10; 0.25): C(10,3) × 0.25³ × 0.75⁷ ≈ 0.2503.', 'EMD1 2022-2023 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.2222', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.7066', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.2503', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.3477', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (X ~ B(10; 0.25) correct answers).
What is the probability that a sheet contains at least two correct answers?', 'No official key — 1 − 0.0563 − 0.1877 ≈ 0.756.', 'EMD1 2022-2023 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.214', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.853', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.145', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.756', 1);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (part II) — The final exam is a single-choice quiz of 50 questions with four possible answers each. A response sheet is chosen at random.
What is the probability that the sheet contains more than 20 correct answers?', 'No official key — normal approximation of B(50; 0.25): µ = 12.5, σ ≈ 3.06; P(Z > (20 − 12.5)/3.06 ≈ 2.45) ≈ 0.0071.', 'EMD1 2022-2023 Q20', 's1/biostatistics-normal-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.4501', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.0071', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.0025', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.9122', 0);
