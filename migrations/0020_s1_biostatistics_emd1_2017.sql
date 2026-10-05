-- Generated from data/s1-biostatistics-emd1-2017.json — 19 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 — In the manufacture of a type of lens, each lens undergoes two treatments T₁ and T₂. A lens is drawn at random. A study showed: 10% of lenses have a defect for treatment T₁; 20% have a defect for treatment T₂; the probability that a lens has neither defect is 0.75.
The probability that a randomly drawn lens has a defect for at least one of the two treatments T₁ or T₂ is:', 'P(T₁ ∪ T₂) = 1 − 0.75 = 0.25.', 'EMD1 2016-2017 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.30', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.50', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.75', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.25', 1);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (lenses: P(T₁) = 0.10, P(T₂) = 0.20, P(no defect) = 0.75).
The probability that a lens has a defect for both treatments T₁ and T₂ is:', 'P(T₁ ∩ T₂) = 0.10 + 0.20 − 0.25 = 0.05.', 'EMD1 2016-2017 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.03', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.06', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.05', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.02', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (lenses: P(T₁) = 0.10, P(T₂) = 0.20, P(no defect) = 0.75).
The events T₁ and T₂ are:', 'P(T₁ ∩ T₂) = 0.05 ≠ P(T₁)·P(T₂) = 0.02, and ≠ 0.', 'EMD1 2016-2017 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Incompatible (mutually exclusive)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Independent', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Dependent', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Nothing can be said', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (lenses: P(T₁) = 0.10, P(T₂) = 0.20, P(no defect) = 0.75).
The probability that a lens has a defect for only one of the two treatments is:', '0.25 − 0.05 = 0.20.', 'EMD1 2016-2017 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.35', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.10', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.25', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.20', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (lenses: P(T₁) = 0.10, P(T₂) = 0.20, P(no defect) = 0.75).
The probability that a lens has a defect for treatment T₂ given that it has a defect for treatment T₁ is:', 'P(T₂|T₁) = 0.05 / 0.10 = 0.50.', 'EMD1 2016-2017 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.60', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.50', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.20', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.30', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 — In a population, two diseases M₁ and M₂ are present in 10% and 20% of people respectively; the number suffering from both is negligible. A screening test reacts in 90% of M₁ patients, 70% of M₂ patients and 10% of individuals with neither disease. An individual is chosen at random.
The probability that the test reacts is:', '0.1×0.9 + 0.2×0.7 + 0.7×0.1 = 0.09 + 0.14 + 0.07 = 0.30.', 'EMD1 2016-2017 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.10', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.40', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.20', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.30', 1);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (M₁ 10%, M₂ 20%; test reacts in 90% of M₁, 70% of M₂, 10% of healthy). Given that the test reacted for an individual:
The probability that it reacted because of disease M₁ is:', '0.09 / 0.30 = 0.30.', 'EMD1 2016-2017 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.20', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.30', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.10', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.40', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (M₁ 10%, M₂ 20%; test reacts in 90% of M₁, 70% of M₂, 10% of healthy). Given that the test reacted:
The probability that it reacted because of disease M₂ is:', '0.14 / 0.30 ≈ 0.47.', 'EMD1 2016-2017 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.48', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.47', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.49', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.50', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (M₁ 10%, M₂ 20%; test reacts in 90% of M₁, 70% of M₂, 10% of healthy). Given that the test reacted:
The probability that it reacted while the individual has neither M₁ nor M₂ is:', '0.07 / 0.30 ≈ 0.23.', 'EMD1 2016-2017 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.23', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.20', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.24', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.00', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 — Let X be a random variable with X(Ω) = {0, 2, 3, 4, 5} and distribution function F, such that: F(0) = 0.50; F(4) = 15/16; P(X = 2) = P(X = 5); and P(X = 3) = P((X = 2) ∪ (X = 5)).
F(2) equals:', NULL, 'EMD1 2016-2017 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1', 0),
  ((SELECT MAX(id) FROM questions), 'B', '8/16', 0),
  ((SELECT MAX(id) FROM questions), 'C', '9/16', 1),
  ((SELECT MAX(id) FROM questions), 'D', '11/16', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (X(Ω) = {0, 2, 3, 4, 5}; F(0) = 0.50; F(4) = 15/16; P(X = 2) = P(X = 5); P(X = 3) = P((X = 2) ∪ (X = 5))).
The pair (expectation E(X); variance V(X)) is:', NULL, 'EMD1 2016-2017 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(1.8125; 3.6523)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '(1.8125; 3.5523)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(1.8145; 3.6523)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(1.8125; 3.6524)', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 — X is a continuous random variable with density f(x) = 0 if x < −1 or x > 1, and f(x) = m(x + 1)(1 − x) if x ∈ [−1, 1].
The value of m for which f is a probability density is:', '∫₋₁¹ (1 − x²) dx = 4/3, so m = 3/4.', 'EMD1 2016-2017 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4/3', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2/3', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3/4', 1),
  ((SELECT MAX(id) FROM questions), 'D', '1/3', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (f(x) = (3/4)(1 − x²) on [−1, 1], 0 elsewhere).
P(X ≤ 0.5) equals:', '(3/4)[x − x³/3] from −1 to 0.5 = (3/4)(11/24 + 2/3) = 27/32.', 'EMD1 2016-2017 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '11/32', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2/9', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5/8', 0),
  ((SELECT MAX(id) FROM questions), 'D', '27/32', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 — In a nursery, 95% of seedlings are assumed virus-free. A packet of two seedlings is called healthy if both seedlings are virus-free.
The probability p of having a healthy packet is:', '0.95² ≈ 0.90.', 'EMD1 2016-2017 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.90', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.91', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.95', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.92', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 (healthy packet probability p ≈ 0.90). Let X be the number of healthy packets in a lot of 10 packets. The probability distribution of X is:', NULL, 'EMD1 2016-2017 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'X ~ B(10; 0.91)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'X ~ B(10; 0.90)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'X ~ B(9; 0.95)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'X ~ B(10; 0.92)', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 (X ~ B(10; 0.90) healthy packets). A lot of 10 packets is accepted by the buyer if at least 9 of the 10 packets are healthy. The probability that the lot is accepted is:', '0.9¹⁰ + 10 × 0.9⁹ × 0.1 ≈ 0.3487 + 0.3874 = 0.7361.', 'EMD1 2016-2017 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.7362', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.7364', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.7361', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.7363', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 (each packet healthy with p = 0.90). The number of packets n to choose so that the probability of getting at least one healthy packet is strictly greater than 90%:', '1 − 0.1ⁿ > 0.9 ⇔ 0.1ⁿ < 0.1 ⇔ n ≥ 2.', 'EMD1 2016-2017 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n ≥ 10', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'n ≥ 1', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n ≥ 2', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'n ≥ 0', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 6 — In a screening center for a disease M, the mean number of patients arriving for a consultation is λ = 5. Let X be the number of arrivals.
The probability distribution of X is:', NULL, 'EMD1 2016-2017 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'X ~ P(√5)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'X ~ P(1/5)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'X ~ P(5)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'X ~ P(5; √5)', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 6 (arrivals X ~ Poisson P(5)).
The probability that at least one person shows up during the day is:', '1 − e⁻⁵ ≈ 0.9933.', 'EMD1 2016-2017 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.9966', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.9938', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.9933', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.9940', 0);
