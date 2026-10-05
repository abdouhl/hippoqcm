-- Generated from data/s1-biostatistics-emd1-2018.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 — A manufacturer finances a drug plant with 12 production lines: 3 made in Japan, 4 made in Germany, and the remaining lines made in India. Japanese lines have a 90% chance of not being defective, German lines 80%, and 75% of Indian lines are not defective.
The probability that a line chosen at random among the 12 is not defective is:', '(3×0.9 + 4×0.8 + 5×0.75)/12 = 9.65/12 ≈ 0.804. (The official key printed C, which does not match the calculation.)', 'EMD1 2017-2018 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.4917', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.8040', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.8942', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.6792', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (12 lines: 3 Japanese 90% OK, 4 German 80% OK, 5 Indian 75% OK).
The probability that a non-defective production line is Japanese-made is:', '2.7 / 9.65 ≈ 0.2798.', 'EMD1 2017-2018 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.2798', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.4577', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.3313', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.4576', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (12 lines: 3 Japanese 90% OK, 4 German 80% OK, 5 Indian 75% OK).
The probability that a defective line is made in India is:', '1.25 / 2.35 ≈ 0.5319.', 'EMD1 2017-2018 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.5340', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.5312', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.5319', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 — An urn contains 4 balls bearing the number "a" and 5 balls bearing the number "a − 1" (a ∈ ℕ). 3 balls are drawn at random; X is the sum of the numbers on the drawn balls.
The expectation as a function of a is:', 'X = 3(a − 1) + K with K = number of "a" balls, E(K) = 3 × 4/9 = 4/3 → E(X) = 3a − 5/3.', 'EMD1 2017-2018 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'E(X) = 3a − 14/3', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'E(X) = 3a − 5/3', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'E(X) = 2a − 3', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'E(X) = 2a − 11/3', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (urn: 4 balls "a", 5 balls "a − 1"; 3 drawn; X = sum).
The value of a such that E(X) = 13/3 is:', NULL, 'EMD1 2017-2018 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a = 11/2', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'a = 4', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'a = 2', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'a = 3', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (urn: 4 balls "a", 5 balls "a − 1"; 3 drawn; X = sum).
The pair (variance V(X); standard deviation σ(X)) is:', 'V(X) = V(K) = 3 × (4/9)(5/9) × (6/8) = 5/9.', 'EMD1 2017-2018 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(5/9; √(5/9))', 1),
  ((SELECT MAX(id) FROM questions), 'B', '(16/9; 4/3)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(2/3; √(2/3))', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(16/25; 4/5)', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 — X is a continuous random variable with density f(x) = 0 for x ∈ ]−∞, −a], f(x) = (3/2)x² for x ∈ ]−a, a[, f(x) = 0 for x ∈ [a, +∞[.
The value of a for which f is a probability density is:', '∫₋ₐᵃ (3/2)x² dx = a³ = 1 → a = 1.', 'EMD1 2017-2018 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a = −1', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'a = 2', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'a = 1/2', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'a = 1', 1);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (f(x) = (3/2)x² on ]−1, 1[).
P(X ≥ −0.5) equals:', '½[x³] from −0.5 to 1 = ½(1 + 0.125) = 0.5625.', 'EMD1 2017-2018 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.5625', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.4375', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.5077', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.5078', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (f(x) = (3/2)x² on ]−1, 1[).
The expectation of X is:', NULL, 'EMD1 2017-2018 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'E(X) = 3/2', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'E(X) = 2', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'E(X) = 2/3', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'E(X) = 0', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 — On average, one student in 20 is color-blind. Consider a class of 25 students.
The probability that there are exactly two color-blind students is:', 'C(25,2) × 0.05² × 0.95²³ ≈ 0.2305.', 'EMD1 2017-2018 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.2312', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.2304', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.2306', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.2305', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (X ~ B(25; 0.05) color-blind students).
The probability that there are at least two in a class of 25 students is:', '1 − 0.95²⁵ − 25 × 0.05 × 0.95²⁴ ≈ 0.3576.', 'EMD1 2017-2018 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.1271', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.6424', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.3576', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.8729', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (X ~ B(25; 0.05)).
The variance V(X) equals:', 'npq = 25 × 0.05 × 0.95 = 1.1875.', 'EMD1 2017-2018 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.25', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.24', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.1875', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.1874', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 — In a factory of 200 employees, the mean number of accidents per year is 5. The number of accidents follows a Poisson distribution.
The probability distribution of X is:', NULL, 'EMD1 2017-2018 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'X ~ P(√5)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'X ~ P(5; √200)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'X ~ P(200; 5)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'X ~ P(5)', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 (accidents X ~ P(5)).
The probability of more than 6 accidents during the year is:', '1 − P(X ≤ 6) = 1 − 0.7622 = 0.2378.', 'EMD1 2017-2018 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.3840', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.2378', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.7622', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.7621', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Which proposition is correct?', NULL, 'EMD1 2017-2018 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(Ā | B) = 1 − P(A | B)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'P(Ā | B) = 1 − P(A | B̄)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(Ā | B) = 1 − P(Ā | B̄)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P(Ā | B) = 1 − P(A ∩ B)', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Which proposition is correct?', NULL, 'EMD1 2017-2018 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(Ā | B̄) = 1 − P(A | B)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'P(Ā | B̄) = 1 − P(Ā | B)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(Ā | B̄) = 1 + P(A | B)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P(Ā | B̄) = 1 − P(A | B̄)', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Which proposition is correct?', NULL, 'EMD1 2017-2018 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(Ā ∩ B) = P(A) − P(Ā ∩ B)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'P(Ā ∩ B) = P(B) − P(A ∩ B̄)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(Ā ∩ B) = P(B) − P(A ∩ B)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'P(Ā ∩ B) = P(A) + P(A ∩ B)', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Two events A and B are said to be independent when:', NULL, 'EMD1 2017-2018 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(A ∩ B) = P(A) + P(B)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'P(A ∩ B) = P(A)·P(B)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'P(A ∩ B) = 0', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P(A ∩ B) = P(A) − P(B)', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Among the following properties of the binomial coefficient Cₙᵖ, indicate the correct one:', NULL, 'EMD1 2017-2018 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cₙᵖ = Cₙ₋ₚᵖ', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cₙᵖ = Cₙ₋₁ᵖ + Cₙ₋₁ᵖ⁻¹', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cₙᵖ = Cₙᵖ⁻¹ + Cₙ₋₁ᵖ⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Cₙᵖ = Cₙ₋₁ᵖ + Cₙᵖ⁻¹', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Let X be a continuous random variable following a uniform distribution (on [a, b]). Its variance is:', NULL, 'EMD1 2017-2018 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'V(X) = (b − a)²/12', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'V(X) = (a + b)²/4', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'V(X) = (n² − 1)/12', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'V(X) = n²/12', 0);
