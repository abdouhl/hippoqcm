-- Generated from data/s1-biostatistics-emd1-2020.json — 10 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Let X be a discrete random variable. If x < y, then:', NULL, 'EMD1 2019-2020 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(x < X ≤ y) = Fx(y) − Fx(x)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'P(x < Y ≤ y) = Fx(x) − Fy(x)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(x < Y ≤ y) = Fx(x) − Fx(y)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'P(x < X ≤ y) = Fx(Y) − Fy(X)', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Bayes'' formula is given by:', NULL, 'EMD1 2019-2020 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'P(Hᵢ|A) = P(A|Hᵢ)P(Hᵢ) / Σⱼ P(A|Hⱼ)P(Hᵢ)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'P(A|Hⱼ) = P(Hⱼ|A)P(A) / Σᵢ P(Hᵢ|A)P(A)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'P(Hⱼ|A) = P(A|Hⱼ)P(Hⱼ) / Σᵢ P(A|Hᵢ)P(Hᵢ)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'P(A|Hⱼ) = P(A|Hᵢ)P(Hᵢ) / Σⱼ P(A|Hⱼ)P(Hⱼ)', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The confidence interval for a mean when the sample size is large (n > 30) and σ is unknown is:', NULL, 'EMD1 2019-2020 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[x̄ − t(n−1; 1−α/2)·s/√(n−1); x̄ + t(n−1; 1−α/2)·s/√(n−1)]', 0),
  ((SELECT MAX(id) FROM questions), 'B', '[x̄ − Z(1−α/2)·s/√(n−1); x̄ + Z(1−α/2)·s/√(n−1)]', 0),
  ((SELECT MAX(id) FROM questions), 'C', '[x̄ − Z(1−α/2)·s/√n; x̄ + Z(1−α/2)·s/√n]', 1),
  ((SELECT MAX(id) FROM questions), 'D', '[x̄ − t(n−1; 1−α/2)·s/√n; x̄ + t(n−1; 1−α/2)·s/√n]', 0);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The expectation of the chi-square distribution (with n degrees of freedom) equals:', NULL, 'EMD1 2019-2020 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'E(Y) = p', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'E(Y) = 2n', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'E(Y) = λ', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'E(Y) = n', 1);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The weight (X, kg) and height (Y, cm) of medical students in the same group were recorded (contingency table in the figure).
The pair of means (X̄; Ȳ) equals:', NULL, 'EMD1 2019-2020 Q5', 's1/biostatistics-2018-emd2-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '(49; 160)', 0),
  ((SELECT MAX(id) FROM questions), 'B', '(49.125; 159)', 1),
  ((SELECT MAX(id) FROM questions), 'C', '(50.125; 161)', 0),
  ((SELECT MAX(id) FROM questions), 'D', '(51; 149)', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Developmental psychology studies show that at 12 months, 50% of normal babies walk. A study on developmental delay of premature babies observes a sample of 80 premature babies; at 12 months, 35 of them walk.
Give a (95%) confidence interval for the proportion of premature babies who walk at 12 months:', 'p = 35/80 = 0.4375; 0.4375 ± 1.96·√(0.4375 × 0.5625 / 80) = 0.4375 ± 0.1087.', 'EMD1 2019-2020 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '[0.3287; 0.5462]', 1),
  ((SELECT MAX(id) FROM questions), 'B', '[0.495; 0.731]', 0),
  ((SELECT MAX(id) FROM questions), 'C', '[0.780; 0.578]', 0),
  ((SELECT MAX(id) FROM questions), 'D', '[0.3904; 0.6095]', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'In a nursery, 90% of seedlings are assumed virus-free. A packet of two seedlings is healthy if both seedlings are virus-free.
The probability p of having a healthy packet is:', NULL, 'EMD1 2019-2020 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.90', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.81', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.95', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.84', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), '(Nursery: healthy packet probability p = 0.81.) Let X be the number of healthy packets in a lot of 10 packets. The distribution of X is:', NULL, 'EMD1 2019-2020 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'X ~ B(10; 0.84)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'X ~ B(10; 0.90)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'X ~ B(10; 0.95)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'X ~ B(10; 0.81)', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), '(X ~ B(10; 0.81) healthy packets.) A lot of 10 packets is accepted by the buyer if at least 9 of them are healthy. The probability that a lot is accepted is:', '0.81¹⁰ + 10 × 0.81⁹ × 0.19 ≈ 0.1216 + 0.2852 = 0.4067.', 'EMD1 2019-2020 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.5067', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.6067', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.0012', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.4067', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), '(Healthy packet probability 0.81.) Let Y be the number of healthy packets in a lot of 50 packets. A lot of 50 is accepted if at least 45 of the 50 are healthy. The probability that a lot is accepted is:', NULL, 'EMD1 2019-2020 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.0556', 0),
  ((SELECT MAX(id) FROM questions), 'B', '0.0526', 1),
  ((SELECT MAX(id) FROM questions), 'C', '0.0485', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.9427', 0);
