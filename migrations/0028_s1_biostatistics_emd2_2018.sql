-- Generated from data/s1-biostatistics-emd2-2018.json — 20 questions.

-- Q1
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'The number of classes is calculated by the formula (Sturges):', NULL, 'EMD2 2017-2018 Q1', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'n_c = 1 + (10/3)·log₁₀ n', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'n_c = n + (10/3)·log₁₀ a', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'n_c = a + (10/3)·log₁₀ n', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'n_c = 1 + (10/3)·log₁₀ a', 0);

-- Q2
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'A continuous quantitative variable is represented graphically by:', NULL, 'EMD2 2017-2018 Q2', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A pie chart', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'A bar chart', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'A histogram', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A stick (bar-line) diagram', 0);

-- Q3
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'When ρ²(X, Y) > 0.9, there is a linear relation between X and Y of the form Y = aX + b, called the regression line of Y on X, which minimizes the sum:', NULL, 'EMD2 2017-2018 Q3', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'S = ΣᵢΣⱼ nᵢⱼ (xⱼ − b·yᵢ − a)²', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'S = ΣᵢΣⱼ nᵢⱼ (yⱼ − b)²', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'S = ΣᵢΣⱼ nᵢⱼ (xⱼ − a·xᵢ − b)²', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'S = ΣᵢΣⱼ nᵢⱼ (yⱼ − a·xᵢ − b)²', 1);

-- Q4
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 — Distribution of the number of absences for some medical students. The table gives decreasing cumulative frequencies (n↘):
Xᵢ: 3, 7, 12, 14
n↘: 25, 21, 13, 7
The population studied is:', 'The counts are decreasing cumulative: the first value (25) is the total. Individual frequencies: 4, 8, 6, 7.', 'EMD2 2017-2018 Q4', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '66 medical students', 0),
  ((SELECT MAX(id) FROM questions), 'B', '25 medical students', 1),
  ((SELECT MAX(id) FROM questions), 'C', '36 medical students', 0),
  ((SELECT MAX(id) FROM questions), 'D', '28 medical students', 0);

-- Q5
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7; N = 25).
The mean X̄ equals:', '(12 + 56 + 72 + 98)/25 = 238/25 = 9.52.', 'EMD2 2017-2018 Q5', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '7.21', 0),
  ((SELECT MAX(id) FROM questions), 'B', '17', 0),
  ((SELECT MAX(id) FROM questions), 'C', '9.52', 1),
  ((SELECT MAX(id) FROM questions), 'D', '13.22', 0);

-- Q6
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7; N = 25).
The variance equals:', '2664/25 − 9.52² = 106.56 − 90.6304 = 15.9296.', 'EMD2 2017-2018 Q6', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '16.9296', 0),
  ((SELECT MAX(id) FROM questions), 'B', '15.9296', 1),
  ((SELECT MAX(id) FROM questions), 'C', '14.9326', 0),
  ((SELECT MAX(id) FROM questions), 'D', '16.9396', 0);

-- Q7
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (absences, variance 15.9296).
The standard deviation equals:', NULL, 'EMD2 2017-2018 Q7', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '3.9911', 1),
  ((SELECT MAX(id) FROM questions), 'B', '4.1157', 0),
  ((SELECT MAX(id) FROM questions), 'C', '3.8642', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4.1145', 0);

-- Q8
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7).
The mode equals:', NULL, 'EMD2 2017-2018 Q8', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '14', 0),
  ((SELECT MAX(id) FROM questions), 'B', '03', 0),
  ((SELECT MAX(id) FROM questions), 'C', '12', 0),
  ((SELECT MAX(id) FROM questions), 'D', '07', 1);

-- Q9
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7).
The median equals:', '13th value: cumulative 4, 12, 18 → 12.', 'EMD2 2017-2018 Q9', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '03', 0),
  ((SELECT MAX(id) FROM questions), 'B', '07', 0),
  ((SELECT MAX(id) FROM questions), 'C', '14', 0),
  ((SELECT MAX(id) FROM questions), 'D', '12', 1);

-- Q10
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (absences: x = 3, 7, 12, 14 with frequencies 4, 8, 6, 7).
The interquartile range equals:', 'Q1 = 7, Q3 = 14 → 7.', 'EMD2 2017-2018 Q10', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '14', 0),
  ((SELECT MAX(id) FROM questions), 'B', '06', 0),
  ((SELECT MAX(id) FROM questions), 'C', '07', 1),
  ((SELECT MAX(id) FROM questions), 'D', '19', 0);

-- Q11
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 2 (absences: mean 9.52, SD 3.9911).
The coefficient of variation equals:', '3.9911 / 9.52 ≈ 41.9%.', 'EMD2 2017-2018 Q11', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '41.2%', 0),
  ((SELECT MAX(id) FROM questions), 'B', '41.5%', 0),
  ((SELECT MAX(id) FROM questions), 'C', '41%', 0),
  ((SELECT MAX(id) FROM questions), 'D', '41.9%', 1);

-- Q12
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 — The weight (X, kg) and height (Y, cm) of the pupils of a class were recorded (contingency table in the figure).
The mean X̄ is:', NULL, 'EMD2 2017-2018 Q12', 's1/biostatistics-2018-emd2-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '49', 0),
  ((SELECT MAX(id) FROM questions), 'B', '49.125', 1),
  ((SELECT MAX(id) FROM questions), 'C', '50.125', 0),
  ((SELECT MAX(id) FROM questions), 'D', '51', 0);

-- Q13
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (weight X / height Y table).
The mean Ȳ is:', NULL, 'EMD2 2017-2018 Q13', 's1/biostatistics-2018-emd2-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '160', 0),
  ((SELECT MAX(id) FROM questions), 'B', '159', 1),
  ((SELECT MAX(id) FROM questions), 'C', '161', 0),
  ((SELECT MAX(id) FROM questions), 'D', '149', 0);

-- Q14
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (weight X / height Y table).
The standard deviation of X equals:', NULL, 'EMD2 2017-2018 Q14', 's1/biostatistics-2018-emd2-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.9', 0),
  ((SELECT MAX(id) FROM questions), 'B', '5', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5.3', 1),
  ((SELECT MAX(id) FROM questions), 'D', '5.6', 0);

-- Q15
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (weight X / height Y table).
The standard deviation of Y equals:', NULL, 'EMD2 2017-2018 Q15', 's1/biostatistics-2018-emd2-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.8', 1),
  ((SELECT MAX(id) FROM questions), 'B', '4', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5', 0),
  ((SELECT MAX(id) FROM questions), 'D', '4.8', 0);

-- Q16
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (weight X / height Y table).
The covariance of the pair (Y, X) equals:', NULL, 'EMD2 2017-2018 Q16', 's1/biostatistics-2018-emd2-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '23.44', 0),
  ((SELECT MAX(id) FROM questions), 'B', '23', 0),
  ((SELECT MAX(id) FROM questions), 'C', '24.44', 1),
  ((SELECT MAX(id) FROM questions), 'D', '24', 0);

-- Q17
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (weight X / height Y table).
The linear correlation coefficient equals:', NULL, 'EMD2 2017-2018 Q17', 's1/biostatistics-2018-emd2-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '0.80', 1),
  ((SELECT MAX(id) FROM questions), 'B', '0.70', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0.81', 0),
  ((SELECT MAX(id) FROM questions), 'D', '0.71', 0);

-- Q18
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (weight X / height Y table).
The equation of the regression line of Y on X is:', NULL, 'EMD2 2017-2018 Q18', 's1/biostatistics-2018-emd2-table.png');
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'y = 0.70x + 116', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'y = 0.87x + 116.26', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'y = 0.85x + 117', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'y = 0.71x + 116.26', 0);

-- Q19
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (regression y = 0.87x + 116.26).
The estimated height for a weight of 50 kg is:', '0.87 × 50 + 116.26 ≈ 159.8 ≈ 160 cm.', 'EMD2 2017-2018 Q19', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '160 cm', 1),
  ((SELECT MAX(id) FROM questions), 'B', '151 cm', 0),
  ((SELECT MAX(id) FROM questions), 'C', '150 cm', 0),
  ((SELECT MAX(id) FROM questions), 'D', '161 cm', 0);

-- Q20
INSERT INTO questions (module_id, stem, explanation, source, image) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biostatistics'), 'Exercise 3 (weight and height). The type of the pair of characters is:', NULL, 'EMD2 2017-2018 Q20', NULL);
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'One discrete and one continuous', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'One qualitative and one quantitative', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Both qualitative', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Both quantitative', 1);
