-- Generated from data/s1-biostatistics-emd1-2026.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'If H₁, …, Hₙ is a finite partition of events of Ω with non-zero probabilities, then:', 'Law of total probability.', 'EMD1 2025-2026 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(A) = Σᵢ₌₁ⁿ P(A/Hᵢ)·P(Hᵢ)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'P(A) = Σⱼ₌₁ⁿ P(Hⱼ/A)·P(A)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(A) = Σᵢ₌₁ⁿ P(Hᵢ/A)·P(A)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P(A) = Σᵢ₌₁ⁿ P(Hᵢ/Ā)·P(Ā)', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Bayes'' formula is given by:', 'Official key: C. A is the same formula with the indices i and j swapped, so it is equally correct.', 'EMD1 2025-2026 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(Hᵢ/A) = P(A/Hᵢ)·P(Hᵢ) / Σⱼ₌₁ⁿ P(A/Hⱼ)·P(Hⱼ)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'P(A/Hⱼ) = P(Hⱼ/A)·P(A) / Σᵢ₌₁ⁿ P(Hᵢ/A)·P(A)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(Hⱼ/A) = P(A/Hⱼ)·P(Hⱼ) / Σᵢ₌₁ⁿ P(A/Hᵢ)·P(Hᵢ)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'P(A/Hⱼ) = P(A/Hᵢ)·P(Hᵢ) / Σⱼ₌₁ⁿ P(A/Hⱼ)·P(Hⱼ)', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'With n and p such that 1 ≤ p ≤ n:', 'Pascal''s rule.', 'EMD1 2025-2026 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cₙᵖ = Cₙᵖ⁻¹ + Cₙ₋₁ᵖ⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cₙᵖ = Cₙᵖ⁻¹ + Cₙ₋₁ᵖ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cₙᵖ = Cₙ₋₁ᵖ + Cₙ₋₁ᵖ⁻¹', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cₙᵖ = Aₙ₋₁ᵖ⁻¹ + Cₙᵖ⁻¹', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The mathematical expectation of the chi-squared distribution (n degrees of freedom) is:', 'E(χ²ₙ) = n and V(χ²ₙ) = 2n.', 'EMD1 2025-2026 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'E(Y) = p', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'E(Y) = 2n', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'E(Y) = λ', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'E(Y) = n', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'We study the number of analgesic tablets taken per day by n hospitalized patients:
xᵢ: 0 | 1 | 2 | 3 | 4
nᵢ: 40 | 36 | 28 | 16 | 6

The population under study is:', 'n = 40 + 36 + 28 + 16 + 6 = 126. ⚠ The official key says B, which does not match the printed table (Q5–Q10 of the key seem to belong to another exam variant).', 'EMD1 2025-2026 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '126 patients', 1),
  ((SELECT MAX(id) FROM questions), 'B', '40 patients', 0),
  ((SELECT MAX(id) FROM questions), 'C', '36 patients', 0),
  ((SELECT MAX(id) FROM questions), 'D', '10 patients', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'We study the number of analgesic tablets taken per day by n hospitalized patients:
xᵢ: 0 | 1 | 2 | 3 | 4
nᵢ: 40 | 36 | 28 | 16 | 6

The mean of X is equal to:', 'Official key: B. ⚠ From the printed table, mean = 164/126 ≈ 1.30, which matches none of the options — the key seems to belong to another exam variant.', 'EMD1 2025-2026 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2.55', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2.15', 1),
  ((SELECT MAX(id) FROM questions), 'C', '2.30', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2.33', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'We study the number of analgesic tablets taken per day by n hospitalized patients:
xᵢ: 0 | 1 | 2 | 3 | 4
nᵢ: 40 | 36 | 28 | 16 | 6

The standard deviation of X is equal to:', 'Σnᵢxᵢ² = 388 ⇒ V = 388/126 − 1.30² ≈ 1.385 ⇒ σ ≈ 1.18 ≈ 1.20.', 'EMD1 2025-2026 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.20', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1.43', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.60', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.30', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'We study the number of analgesic tablets taken per day by n hospitalized patients:
xᵢ: 0 | 1 | 2 | 3 | 4
nᵢ: 40 | 36 | 28 | 16 | 6

The mode is equal to:', 'The highest frequency (40) is for x = 0. ⚠ The official key says D (2), which does not match the printed table.', 'EMD1 2025-2026 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0', 1),
  ((SELECT MAX(id) FROM questions), 'B', '4', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2', 0);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'We study the number of analgesic tablets taken per day by n hospitalized patients:
xᵢ: 0 | 1 | 2 | 3 | 4
nᵢ: 40 | 36 | 28 | 16 | 6

The median is equal to:', 'n = 126; the 63rd and 64th values fall in x = 1 (cumulative 40, 76, …). ⚠ The official key says B (2), which does not match the printed table.', 'EMD1 2025-2026 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'We study the number of analgesic tablets taken per day by n hospitalized patients:
xᵢ: 0 | 1 | 2 | 3 | 4
nᵢ: 40 | 36 | 28 | 16 | 6

The third quartile is equal to:', '3n/4 = 94.5; cumulative frequencies 40, 76, 104 ⇒ Q3 = 2. ⚠ The official key says D (3), which does not match the printed table.', 'EMD1 2025-2026 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4', 0),
  ((SELECT MAX(id) FROM questions), 'D', '3', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'We study the length of hospital stay (in days) of patients admitted to cardiology. X has the density:
f(x) = a(x − 2) if 2 ≤ x < 4
f(x) = a if 4 ≤ x < 6
f(x) = ax − 6a if 6 ≤ x < 7
f(x) = 0 elsewhere

Find the value of the constant a so that f(x) is a probability density function:', '∫ = 2a + 2a + a/2 = 9a/2 = 1 ⇒ a = 2/9.', 'EMD1 2025-2026 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '2/9', 1),
  ((SELECT MAX(id) FROM questions), 'B', '2/3', 0),
  ((SELECT MAX(id) FROM questions), 'C', '4/7', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2/7', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Density (a = 2/9):
f(x) = a(x − 2) if 2 ≤ x < 4
f(x) = a if 4 ≤ x < 6
f(x) = ax − 6a if 6 ≤ x < 7
f(x) = 0 elsewhere

P(X ≤ 5) is equal to:', '2a + a = 3a = 6/9 = 2/3.', 'EMD1 2025-2026 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1/3', 0),
  ((SELECT MAX(id) FROM questions), 'B', '2/3', 1),
  ((SELECT MAX(id) FROM questions), 'C', '1/4', 0),
  ((SELECT MAX(id) FROM questions), 'D', '2/5', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Density (a = 2/9):
f(x) = a(x − 2) if 2 ≤ x < 4
f(x) = a if 4 ≤ x < 6
f(x) = ax − 6a if 6 ≤ x < 7
f(x) = 0 elsewhere

P(4.5 ≤ X ≤ 6.5) is equal to:', '1.5a + a·(0.5²/2) = 1.625a = 1.625 × 2/9 ≈ 0.36.', 'EMD1 2025-2026 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.39', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.45', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.47', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.36', 1);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Density (a = 2/9):
f(x) = a(x − 2) if 2 ≤ x < 4
f(x) = a if 4 ≤ x < 6
f(x) = ax − 6a if 6 ≤ x < 7
f(x) = 0 elsewhere

The mathematical expectation of X is equal to:', 'E(X) = a(20/3 + 10 + 10/3) = 20a = 40/9 ≈ 4.44.', 'EMD1 2025-2026 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.25', 0),
  ((SELECT MAX(id) FROM questions), 'B', '4.48', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5.55', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4.44', 1);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'A hospital obtains blood bags from five banks: 40% from Bank A, 25% from Bank B, 15% from Bank C, 10% from Bank D and 10% from Bank E. 98% of the bags from Bank A are safe; for Banks B, C, D and E the proportions of safe bags are 95%, 97%, 90% and 92%. Any bag that presents a risk is non-compliant.

The probability that a blood bag is compliant, given that it comes from Bank C, is:', NULL, 'EMD1 2025-2026 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.98', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.15', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.97', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.92', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Blood bags: 40% from Bank A, 25% B, 15% C, 10% D, 10% E. Safe proportions: 98%, 95%, 97%, 90%, 92% respectively.

The probability that a randomly chosen blood bag is non-compliant is:', '0.4×0.02 + 0.25×0.05 + 0.15×0.03 + 0.1×0.10 + 0.1×0.08 = 0.043.', 'EMD1 2025-2026 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.023', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.957', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.043', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.9244', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Blood bags: 40% from Bank A, 25% B, 15% C, 10% D, 10% E. Safe proportions: 98%, 95%, 97%, 90%, 92% respectively.

A blood bag is chosen at random and found to be non-compliant. The probability that it comes from Bank E is:', 'Bayes: (0.1 × 0.08) / 0.043 ≈ 0.186.', 'EMD1 2025-2026 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.08', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.186', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.392', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.09', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'A hospital receives sterile surgical gloves; 93% of the gloves are sterile. A package consists of 2 gloves and is sterile if both gloves are sterile. X = number of sterile packages in a batch of 10 packages.

The probability that the batch contains 7 sterile packages is:', 'p = 0.93² ≈ 0.865. X ~ B(10, 0.865): P(X = 7) = C₁₀⁷ · 0.865⁷ · 0.135³ ≈ 0.107.', 'EMD1 2025-2026 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.107', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.93', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.126', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.864', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Gloves: 93% sterile, package of 2 gloves is sterile if both are. X ~ number of sterile packages in a batch of 10.

A batch of 10 packages is accepted if at least 8 of the 10 packages are sterile. The probability that a batch is accepted is:', 'P(X ≥ 8) = P(8) + P(9) + P(10) ≈ 0.257 + 0.366 + 0.234 ≈ 0.857 ≈ 85%.', 'EMD1 2025-2026 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '93%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '85%', 1),
  ((SELECT MAX(id) FROM questions), 'C', '87%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '40%', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Gloves: package sterile with probability p = 0.93². Y = number of sterile packages in a lot of 100 packages. A lot is accepted if at least 90 of the 100 packages are sterile (use the normal table).

The probability that a lot is accepted is:', 'Normal approximation: μ = 100p ≈ 86.5, σ = √(100p(1−p)) ≈ 3.42. P(Y ≥ 90) = P(Z ≥ 1.02) = 1 − 0.8461 = 0.1539.', 'EMD1 2025-2026 Q20', 's1/biostatistics-normal-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.8461', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.5080', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.1539', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.6700', 0);
