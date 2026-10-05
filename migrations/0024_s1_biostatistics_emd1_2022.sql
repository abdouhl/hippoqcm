-- Generated from data/s1-biostatistics-emd1-2022.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'For any A ∈ P(Ω):', 'No official answer key for this exam — answers worked out.', 'EMD1 2021-2022 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(Ā | H) = 1 − P(A | H)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'P(Ā | H) = 1 + P(A | H̄)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(Ā | H) = 1 − P(H | A)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P(Ā | H) = 1 − P(A)', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The probability density function of Student''s t distribution (tₙ) equals:', 'No official key.', 'EMD1 2021-2022 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'f(t) = (1/(σ√2π))·e^(−½((t−µ)/σ)²)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'f(t) = cₙ(1 + t²)^(−(n+1)/2)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'f(t) = cₙ(1 + t²/n)^(−(n+1)/2)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'f(t) = (1/(σ√2π))·e^(−½((x−µ)/σ)²)', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'With n and p such that 1 ≤ p ≤ n:', 'No official key — Pascal''s rule.', 'EMD1 2021-2022 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cₙᵖ = Cₙᵖ⁻¹ + Cₙ₋₁ᵖ⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cₙᵖ = Cₙᵖ⁻¹ + Cₙ₋₁ᵖ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cₙᵖ = Cₙ₋₁ᵖ + Cₙ₋₁ᵖ⁻¹', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cₙᵖ = Aₙ₋₁ᵖ⁻¹ + Cₙᵖ⁻¹', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The expectation of the chi-square distribution (n degrees of freedom) equals:', 'No official key.', 'EMD1 2021-2022 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'E(Y) = p', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'E(Y) = 2n', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'E(Y) = λ', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'E(Y) = n', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 — A statistical study gave the following 50 results:
9.5 – 12 – 14 – 10.3 – 11.3 – 9.4 – 17 – 12.4 – 13.8 – 15.5 – 12.6 – 12.3 – 10.2 – 16.2 – 14.7 – 11.3 – 9.4 – 16.1 – 10.6 – 8.9 – 19.4 – 14.7 – 18.1 – 8.4 – 13.7 – 15.7 – 18.4 – 12.6 – 13.9 – 16.7 – 12.9 – 10.5 – 13.5 – 9.6 – 10.7 – 18 – 15.2 – 17.3 – 16 – 15.8 – 10.9 – 13.4 – 12.8 – 9.6 – 11.7 – 13.9 – 15.6 – 10.5 – 12.6 – 13.5
After building the classes and the statistical table, the mean X̄ equals:', 'No official key — computed. Sturges gives 7 classes of width 1.6 starting at 8.4 (frequencies 7, 9, 9, 10, 8, 3, 4); mean of class midpoints = 13.296.', 'EMD1 2021-2022 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '14.296', 0),
  ((SELECT MAX(id) FROM questions), 'B', '13.296', 1),
  ((SELECT MAX(id) FROM questions), 'C', '12.296', 0),
  ((SELECT MAX(id) FROM questions), 'D', '13.356', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (50 values grouped into 7 classes of width 1.6 from 8.4; frequencies 7, 9, 9, 10, 8, 3, 4).
The standard deviation of X equals:', 'No official key — computed from class midpoints.', 'EMD1 2021-2022 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.8001', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.8109', 1),
  ((SELECT MAX(id) FROM questions), 'C', '2.7425', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3.0744', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (50 values grouped into 7 classes of width 1.6 from 8.4; frequencies 7, 9, 9, 10, 8, 3, 4).
The median Me equals:', 'No official key — 25th value falls in [13.2; 14.8[ at its lower bound: Me = 13.2.', 'EMD1 2021-2022 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '13.3', 0),
  ((SELECT MAX(id) FROM questions), 'B', '13.5', 0),
  ((SELECT MAX(id) FROM questions), 'C', '13.2', 1),
  ((SELECT MAX(id) FROM questions), 'D', '13.4', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (50 values grouped into 7 classes of width 1.6 from 8.4; frequencies 7, 9, 9, 10, 8, 3, 4).
The mode Mo equals:', 'No official key — modal class [13.2; 14.8[: 13.2 + 1.6 × 1/(1 + 2) = 13.7333.', 'EMD1 2021-2022 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '13.7333', 1),
  ((SELECT MAX(id) FROM questions), 'B', '13.2040', 0),
  ((SELECT MAX(id) FROM questions), 'C', '13.7222', 0),
  ((SELECT MAX(id) FROM questions), 'D', '13.8045', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (50 values grouped into 7 classes of width 1.6 from 8.4; frequencies 7, 9, 9, 10, 8, 3, 4).
The interquartile range IQR equals:', 'No official key — computed by interpolation.', 'EMD1 2021-2022 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '4.3223', 1),
  ((SELECT MAX(id) FROM questions), 'B', '4.7862', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4.2756', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4.5066', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 — An urn contains n green balls (n ≥ 1), 5 blue and 8 red. 2 balls are drawn successively without replacement.
Determine the values of n such that the probability of drawing 2 green balls is < 1/4:', 'No official key — n(n−1)/((n+13)(n+12)) < 1/4 ⇔ 3n² − 29n − 156 < 0 ⇔ n < 13.5.', 'EMD1 2021-2022 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Between 1 and 9', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Between 1 and 13', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Between 1 and 15', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Between 1 and 12', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 — To fight the coronavirus epidemic, Algerian authorities imported vaccines: 27% Johnson & Johnson, 33% Sputnik and 40% Sinovac. The probability of being infected after receiving the vaccine is 3% for J&J, 4% for Sputnik and 5% for Sinovac.
What is the probability that a randomly chosen person carries the virus given that they received the Sputnik vaccine?', 'No official key.', 'EMD1 2021-2022 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.40', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.05', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.03', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.04', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (vaccines: J&J 27% / 3%, Sputnik 33% / 4%, Sinovac 40% / 5% infection).
What is the probability of being infected by the virus?', 'No official key — 0.0081 + 0.0132 + 0.02 = 0.0413.', 'EMD1 2021-2022 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.04521', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.8102', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.0413', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.5071', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (vaccines: J&J 27% / 3%, Sputnik 33% / 4%, Sinovac 40% / 5% infection).
A randomly chosen person is found to be infected. What is the probability that they received the J&J vaccine?', 'No official key — 0.0081 / 0.0413 ≈ 0.1961.', 'EMD1 2021-2022 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.1971', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.1961', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.1951', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.1958', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 — The "Linde" plant produces oxygen bottles with a capacity of 44 dm³. X, the capacity of a bottle, follows a normal distribution with mean 44 dm³ and variance 0.04 dm⁶. A bottle is chosen at random. (Standard normal table in the figure.)
The probability that the capacity is between 43.8 and 44.3 dm³ is:', 'No official key — σ = 0.2: P(−1 < Z < 1.5) = 0.9332 − 0.1587 = 0.7745.', 'EMD1 2021-2022 Q14', 's1/biostatistics-normal-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.7822', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.7888', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.7750', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.7745', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (part II) — 5% of the bottles are under-filled and considered unfit. Distributors buy lots of 10 bottles; a lot is rejected if it contains at least two unfit bottles. Y = number of unfit bottles per lot.
The probability distribution of Y is:', 'No official key — Y ~ B(10; 0.05).', 'EMD1 2021-2022 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Poisson', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Bernoulli', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Binomial', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Normal', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (Y = number of unfit bottles per lot of 10). The type of this variable is:', 'No official key.', 'EMD1 2021-2022 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Discrete', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Continuous', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Qualitative nominal', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Qualitative ordinal', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (Y ~ B(10; 0.05); a lot is rejected if Y ≥ 2).
The probability of rejecting a lot is:', 'No official key — 1 − 0.95¹⁰ − 10 × 0.05 × 0.95⁹ ≈ 0.0861.', 'EMD1 2021-2022 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.0823', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.0862', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.0872', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.7862', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (part III) — The Consumers'' Association buys 10 lots (100 bottles, 5% unfit) to check their capacity. Y′ = number of unfit bottles in the 10 lots.
The probability distribution of Y′ is (approximately):', 'No official key. Exactly B(100; 0.05), which is approximated by Poisson P(5) (n large, p small) — the expected values in the next questions use this Poisson approximation.', 'EMD1 2021-2022 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Poisson', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Bernoulli', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Binomial', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Normal', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (Y′ ≈ Poisson P(5)).
The probability that Y′ is less than or equal to 4 is:', 'No official key — Poisson(5): P(Y′ ≤ 4) ≈ 0.4405.', 'EMD1 2021-2022 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.4208', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.4503', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.4405', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.4607', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (Y′ ≈ Poisson P(5)).
The standard deviation of Y′ equals:', 'No official key — √5 ≈ 2.2361.', 'EMD1 2021-2022 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.2351', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.2361', 1),
  ((SELECT MAX(id) FROM questions), 'C', '2.2371', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.2381', 0);
