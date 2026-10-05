-- Generated from data/s1-biostatistics-emd1-2025.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'For any A ∈ P(Ω):', NULL, 'EMD1 2024-2025 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(Ā | H) = 1 − P(A | H)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'P(Ā | H) = 1 + P(A | H̄)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(Ā | H) = 1 − P(A/H) (as a fraction)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P(Ā | H) = 1 − P(A)', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The probability density function of Student''s t distribution (tₙ) equals:', NULL, 'EMD1 2024-2025 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'f(t) = (1/(σ√2π))·e^(−½((x−µ)/σ)²)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'f(t) = cₙ(1 + t²)^(−(n+1)/2)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'f(t) = cₙ(1 + t²/n)^(−(n+1)/2)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'f(t) = (1/(σ√2π))·e^(−½((n−µ)/σ)²)', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'With n and p such that 1 ≤ p ≤ n:', NULL, 'EMD1 2024-2025 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Cₙᵖ = Cₙᵖ⁻¹ + Cₙ₋₁ᵖ⁻¹', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cₙᵖ = Cₙᵖ⁻¹ + Cₙ₋₁ᵖ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Cₙᵖ = Cₙ₋₁ᵖ + Cₙ₋₁ᵖ⁻¹', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cₙᵖ = Aₙ₋₁ᵖ⁻¹ + Cₙᵖ⁻¹', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The adjusted (rectified) frequencies n′ (for classes of unequal width aᵢ) equal:', NULL, 'EMD1 2024-2025 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'xᵢ / aᵢ', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'nᵢ·xᵢ', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'nᵢ / aᵢ', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'n′ᵢ / aᵢ', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 — An experiment on 234 people studied the relation between age X and sleep time Y (contingency table in the figure).
The mean and variance of X are:', NULL, 'EMD1 2024-2025 Q5', 's1/biostatistics-2025-sleep-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(20.43; 15.6)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '(19.18; 208.35)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '(30; 36.7)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(12.3; 104.6)', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (age X / sleep time Y table). The mean and standard deviation of Y are:', NULL, 'EMD1 2024-2025 Q6', 's1/biostatistics-2025-sleep-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(10.18; 2.38)', 1),
  ((SELECT MAX(id) FROM questions), 'B', '(24.13; 4.4201)', 0),
  ((SELECT MAX(id) FROM questions), 'C', '(10.18; 5.69)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(24.12; 19.63)', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (age X / sleep time Y table). The covariance equals:', NULL, 'EMD1 2024-2025 Q7', 's1/biostatistics-2025-sleep-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '15.50', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−26.13', 1),
  ((SELECT MAX(id) FROM questions), 'C', '24.15', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−11.22', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (age X / sleep time Y table). The correlation coefficient equals:', NULL, 'EMD1 2024-2025 Q8', 's1/biostatistics-2025-sleep-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '−34%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '80%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '52%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '−76%', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (age X / sleep time Y table). The regression line Y(X) is:', NULL, 'EMD1 2024-2025 Q9', 's1/biostatistics-2025-sleep-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'y = −0.10x + 14', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'y = −0.11x + 15.35', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'y = 0.22x − 5.54', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'y = −0.12x + 12.48', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 1 (regression y = −0.12x + 12.48). The estimated sleep time of a 66-year-old person is:', '−0.12 × 66 + 12.48 ≈ 4.6 ≈ 5 hours.', 'EMD1 2024-2025 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7 hours', 0),
  ((SELECT MAX(id) FROM questions), 'B', '9 hours', 0),
  ((SELECT MAX(id) FROM questions), 'C', '8 hours', 0),
  ((SELECT MAX(id) FROM questions), 'D', '5 hours', 1);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 — X follows an exponential distribution with parameter λ = 3: f(x) = λe^(−λx) if x ≥ 0, 0 otherwise.
The probability that X = 4 equals:', 'X is continuous, so P(X = a) = 0.', 'EMD1 2024-2025 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.06', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.22', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.03', 0);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (X ~ exp(λ = 3)). The probability that X is greater than 1 equals:', 'e⁻³ ≈ 0.05.', 'EMD1 2024-2025 Q12', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.05', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.02', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.08', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.21', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (X ~ exp(λ = 3)). The expectation of X equals:', '1/λ = 1/3.', 'EMD1 2024-2025 Q13', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.44', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.33', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.35', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (X ~ exp(λ = 3)). The standard deviation of X equals:', 'Official key: A. Note: 0.11 = 1/λ² is actually the variance; the standard deviation is 1/λ ≈ 0.33 (not among the options).', 'EMD1 2024-2025 Q14', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.11', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.22', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.66', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.09', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 — An epidemiologist claims a diagnostic method detects a bacterial infection with probability 89%. Step I: the method is tested on the epidemiologist after being infected.
The probability that the infection is detected equals:', NULL, 'EMD1 2024-2025 Q15', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.77', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.03', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.89', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.11', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (step I: Bernoulli with p = 0.89). The standard deviation equals:', '√(0.89 × 0.11) ≈ 0.31.', 'EMD1 2024-2025 Q16', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.35', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.38', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.30', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.31', 1);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (step II: the method is tested on 20 infected patients, X ~ B(20; 0.89)).
The probability that the infection is detected in 17 patients equals:', NULL, 'EMD1 2024-2025 Q17', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.20', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.21', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.16', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.07', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (X ~ B(20; 0.89)). The probability that the infection is detected in at least 16 patients equals:', NULL, 'EMD1 2024-2025 Q18', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.16', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.64', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.85', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.94', 1);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (X ~ B(20; 0.89)). The standard deviation equals:', '√(20 × 0.89 × 0.11) ≈ 1.40.', 'EMD1 2024-2025 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '1.4', 1),
  ((SELECT MAX(id) FROM questions), 'B', '1.02', 0),
  ((SELECT MAX(id) FROM questions), 'C', '1.58', 0),
  ((SELECT MAX(id) FROM questions), 'D', '1.3', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (step III: 1500 infected patients, detection probability 0.89; normal approximation).
The probability of between 1320 and 1360 detected infections equals:', 'µ = 1335, σ ≈ 12.12: P(−1.24 < Z < 2.06) ≈ 0.87.', 'EMD1 2024-2025 Q20', 's1/biostatistics-normal-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.79', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.70', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.87', 1),
  ((SELECT MAX(id) FROM questions), 'D', '0.85', 0);
