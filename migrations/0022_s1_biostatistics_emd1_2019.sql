-- Generated from data/s1-biostatistics-emd1-2019.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The standard deviation of a statistical series is calculated by the formula:', NULL, 'EMD1 2018-2019 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'σx = √[(1/n)Σ nᵢxᵢ² − X̄²]', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'σx = (1/n)Σ nᵢxᵢ² − X̄²', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'σx = √[(1/n)Σ nᵢxᵢ²]', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'σx = √[(1/n)Σ nᵢxᵢ² − Ȳ²]', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The covariance of two statistical variables X and Y, Cov(X, Y), equals:', NULL, 'EMD1 2018-2019 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(1/n)ΣᵢΣⱼ nᵢⱼ xᵢyⱼ', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'ΣᵢΣⱼ nᵢⱼ (yⱼ − a·xᵢ − b)²', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(1/n)ΣᵢΣⱼ nᵢⱼ xᵢyⱼ − X̄Ȳ', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'ΣᵢΣⱼ nᵢⱼ (yⱼ − b)²', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The confidence interval for a mean when the sample size is small (n < 30) and σ is known is:', NULL, 'EMD1 2018-2019 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[x̄ − t(n−1; 1−α/2)·s/√(n−1); x̄ + t(n−1; 1−α/2)·s/√(n−1)]', 0),
  ((SELECT MAX(id) FROM questions), 'B', '[x̄ − u(1−α/2)·σ/√n; x̄ + u(1−α/2)·σ/√n]', 1),
  ((SELECT MAX(id) FROM questions), 'C', '[x̄ − u(1−α/2)·s/√n; x̄ + u(1−α/2)·s/√n]', 0),
  ((SELECT MAX(id) FROM questions), 'D', '[x̄ − t(n−1; 1−α/2)·σ/√(n−1); x̄ + t(n−1; 1−α/2)·σ/√(n−1)]', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The expectation of the Poisson distribution equals:', NULL, 'EMD1 2018-2019 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'E(X) = npq', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'E(X) = nq', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'E(X) = nλ', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'E(X) = λ', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 — Nitrogen concentration (mg/L) in the Seybouse wadi at 19 different stations:
1.37 – 1.29 – 0.87 – 2.14 – 1.1 – 1.2 – 2.42 – 0.85 – 1.35 – 1.13 – 0.48 – 1.17 – 1.55 – 1.04 – 1.01 – 0.6 – 2.02 – 0.93 – 1.98
The nature of the character is:', NULL, 'EMD1 2018-2019 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Qualitative ordinal', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Qualitative nominal', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Quantitative discrete', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Quantitative continuous', 1);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (nitrogen concentrations at 19 stations, from 0.48 to 2.42 mg/L).
The necessary number of classes is:', 'Sturges: 1 + (10/3)·log₁₀ 19 ≈ 5.26 → 5 classes.', 'EMD1 2018-2019 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5', 1),
  ((SELECT MAX(id) FROM questions), 'D', '6', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (nitrogen concentrations at 19 stations, from 0.48 to 2.42 mg/L, 5 classes).
The class width (amplitude) equals:', '(2.42 − 0.48)/5 ≈ 0.39.', 'EMD1 2018-2019 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.39', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.40', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.41', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.36', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (nitrogen concentrations grouped into 5 classes of width 0.39 starting at 0.48).
The median equals:', NULL, 'EMD1 2018-2019 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.086', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.186', 1),
  ((SELECT MAX(id) FROM questions), 'D', '1.087', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (nitrogen concentrations grouped into 5 classes of width 0.39 starting at 0.48).
The mode equals:', NULL, 'EMD1 2018-2019 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.086', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1.3', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.4', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.186', 0);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (nitrogen concentrations grouped into 5 classes of width 0.39 starting at 0.48).
The mean X̄ equals:', NULL, 'EMD1 2018-2019 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.27', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1.28', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.29', 1),
  ((SELECT MAX(id) FROM questions), 'D', '24', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (nitrogen concentrations grouped into 5 classes of width 0.39 starting at 0.48).
The variance equals:', NULL, 'EMD1 2018-2019 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.218', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.215', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.81', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.80', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 — An insurance company splits its clients into three classes R₁, R₂, R₃: good, medium and bad risks, representing 20%, 50% and 30% of the population. The probabilities of having an accident during the year are 0.05, 0.15 and 0.30 respectively.
What is the probability that a randomly chosen person has an accident during the year?', '0.2×0.05 + 0.5×0.15 + 0.3×0.30 = 0.175.', 'EMD1 2018-2019 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.175', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.160', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.165', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.170', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (R₁ 20%, R₂ 50%, R₃ 30%; accident probabilities 0.05, 0.15, 0.30).
If Mr. Martin had no accident this year, what is the probability that he is a good risk?', '0.2×0.95 / (1 − 0.175) = 0.19/0.825 ≈ 0.23.', 'EMD1 2018-2019 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.26', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.23', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.27', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.30', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 — X is a continuous random variable with f(x) = 0 if x < 1 or x > 3, and f(x) = (3/4)(x − 1)(3 − x) if x ∈ [1, 3].
The distribution function F(x) for x ≥ 3 equals:', NULL, 'EMD1 2018-2019 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 0),
  ((SELECT MAX(id) FROM questions), 'B', '1', 1),
  ((SELECT MAX(id) FROM questions), 'C', '4', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (f(x) = (3/4)(x − 1)(3 − x) on [1, 3]).
The expectation of X equals:', 'The density is symmetric about x = 2.', 'EMD1 2018-2019 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.4', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.5', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (f(x) = (3/4)(x − 1)(3 − x) on [1, 3]).
The variance of X equals:', 'With u = x − 2: V = (3/4)∫₋₁¹ u²(1 − u²) du = (3/4)(2/3 − 2/5) = 0.2.', 'EMD1 2018-2019 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.3', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.5', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.2', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.4', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 4 (variance of X = 0.2).
The standard deviation of X equals:', NULL, 'EMD1 2018-2019 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.63', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.55', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.71', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.45', 1);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 — A club has 400 members; their age follows a normal distribution with mean 40 and variance 25 (unit: years). (Standard normal table in the figure.)
What is the probability that a member''s age is between 35 and 45 years?', 'σ = 5: P(−1 < Z < 1) = 2 × 0.8413 − 1 = 0.6826.', 'EMD1 2018-2019 Q18', 's1/biostatistics-normal-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.8461', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.5636', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.8413', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.6826', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 (age ~ N(40; σ = 5)).
What is the probability that a member''s age is below 50 years?', 'P(Z < 2) = 0.9772.', 'EMD1 2018-2019 Q19', 's1/biostatistics-normal-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.6103', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.9713', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.9772', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.5160', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 5 (400 members, P(age < 50) = 0.9772).
What is the number of members younger than 50?', '400 × 0.9772 ≈ 391.', 'EMD1 2018-2019 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '389', 0),
  ((SELECT MAX(id) FROM questions), 'B', '391', 1),
  ((SELECT MAX(id) FROM questions), 'C', '244', 0),
  ((SELECT MAX(id) FROM questions), 'D', '206', 0);
