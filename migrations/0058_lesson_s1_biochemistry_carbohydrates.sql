-- Generated from data/lessons/s1-biochemistry-carbohydrates.json — lesson "Carbohydrates": 20 exam + 35 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Carbohydrates', 's1/biochemistry/carbohydrates.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q1',
    'EMD1 2022-2023 Q2',
    'EMD1 2022-2023 Q3',
    'EMD1 2022-2023 Q4',
    'EMD1 2022-2023 Q5',
    'EMD1 2022-2023 Q6',
    'EMD1 2022-2023 Q7',
    'EMD1 2023-2024 Q1',
    'EMD1 2023-2024 Q2',
    'EMD1 2023-2024 Q3',
    'EMD1 2024-2025 Q1',
    'EMD1 2024-2025 Q2',
    'EMD1 2024-2025 Q3',
    'EMD1 2025-2026 Q1',
    'EMD1 2025-2026 Q2',
    'EMD1 2025-2026 Q3',
    'EMD1 2025-2026 Q4',
    'EMD1 2025-2026 Q5',
    'EMD1 2025-2026 Q6',
    'EMD1 2025-2026 Q7'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The disaccharide shown in the figure is:', 'An α-D-glucopyranose (top) is linked through its C1 to C2 of a β-D-fructofuranose (five-membered ring, bottom): this is sucrose, α-D-glucopyranosyl (1→2) β-D-fructofuranoside. Trehalose is two glucopyranoses linked (1→1).', 'Lesson: Carbohydrates', 's1/lessons/carbohydrates-g1.png', 'generated', 53);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Maltose', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Lactose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Sucrose', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Trehalose', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the disaccharide shown in the figure:', 'Sucrose links both anomeric carbons (C1 of glucose, C2 of fructose), so it has no free aldehyde or keto group and is non-reducing. It is +66.5° while its hydrolysate is −28.2° (sucrose inversion), and invertase or α-D-glucosidase hydrolyses it.', 'Lesson: Carbohydrates', 's1/lessons/carbohydrates-g1.png', 'generated', 54);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is an α-D-glucopyranosyl (1→2) β-D-fructofuranoside', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It reduces Fehling''s solution', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Its hydrolysis products are levorotatory although the disaccharide itself is dextrorotatory', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Its hydrolysis can be catalysed by β-D-fructosidase (invertase)', 1);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the disaccharide shown in the figure:', 'This is β-lactose: β-D-galactopyranosyl (1→4) β-D-glucopyranose, so the left unit is galactose, not glucose. The glucose C1 stays free, which makes lactose reducing; it occurs in milk and nowhere else (≈75 g/L human, 48 g/L cow).', 'Lesson: Carbohydrates', 's1/lessons/carbohydrates-g2.png', 'generated', 53);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The left unit is a β-D-glucopyranose', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Its two units are galactose and glucose joined by a β(1→4) glycosidic bond', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a non-reducing disaccharide', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is found only in milk, at about 75 g/L in human milk', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the disaccharide shown in the figure:', 'Two α-D-glucopyranoses linked through both anomeric carbons (1→1) form trehalose. Because neither anomeric carbon is free it is non-reducing, like sucrose.', 'Lesson: Carbohydrates', 's1/lessons/carbohydrates-g3.png', 'generated', 54);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is trehalose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its two glucose units are joined by an α(1→1) bond', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'It is a reducing disaccharide', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Fungi and bacteria accumulate it in response to cold or desiccation', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'The two aldohexoses shown in the figure (Fischer projections) are:', 'Left is D-galactose, right is D-mannose: both have the C5 –OH on the right (D-series). They differ at two carbons (C2 and C4), so they are diastereomers, not epimers; they are not mirror images, so not enantiomers.', 'Lesson: Carbohydrates', 's1/lessons/carbohydrates-g4.png', 'generated', 16);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Both of the D-series', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'C4 epimers', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Diastereomers', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Enantiomers', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the two aldohexoses shown in the figure:', 'Left = D-galactose (C4 epimer of glucose), right = D-mannose (C2 epimer). Galactose + nitric acid gives mucic acid, inactive because of its plane of symmetry. Mannose is reduced to D-mannitol; D-sorbitol comes from glucose.', 'Lesson: Carbohydrates', 's1/lessons/carbohydrates-g4.png', 'generated', 15);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The left one is the C4 epimer of D-glucose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The right one is the C2 epimer of D-glucose', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Strong oxidation of the left one by nitric acid gives an optically inactive aldaric acid', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Reduction of the right one gives D-sorbitol', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the cyclic structure shown in the figure:', 'With the ring oxygen at the upper right, the C1 –OH pointing down defines the α anomer (up would be β). C1 is the anomeric (hemiacetal) carbon; a pyranose of an aldose closes C1–C5, not C1–C4 (that would be a furanose).', 'Lesson: Carbohydrates', 's1/lessons/carbohydrates-g5.png', 'generated', 22);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is α-D-glucopyranose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is β-D-glucopyranose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'C1 is a hemiacetal carbon', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The ring is closed between C1 and C4', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the monosaccharide shown in the figure:', 'This is D-fructofuranose: a ketohexose whose five-membered ring forms between C2 and C5. Its anomeric (hemiketal) carbon is C2, and D-fructose is levorotatory (−92.2°).', 'Lesson: Carbohydrates', 's1/lessons/carbohydrates-g6.png', 'generated', 23);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a ketohexose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Its ring is closed between C2 and C5', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its anomeric carbon is C1', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its solution turns polarized light to the right', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About carbohydrates in general:', 'Deoxyribose (C₅H₁₀O₄) does not fit (CH₂O)n, so carbohydrates are not always ''hydrates of carbon''. Monosaccharides are the simplest units and cannot be hydrolysed further.', 'Lesson: Carbohydrates', NULL, 'generated', 3);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'They are polyhydroxy-aldehydes or ketones, or compounds that produce them on hydrolysis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'All of them satisfy the formula (CH₂O)n', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Monosaccharides have the formula (CH₂O)n with n = 3 to 7', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Monosaccharides can be hydrolysed into simpler carbohydrates', 0);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the biological roles of carbohydrates:', 'Cellulose is a linear polymer of β-D-glucose (β(1→4) bonds), which is why humans cannot digest it. The other three are stated in the lesson''s list of roles.', 'Lesson: Carbohydrates', NULL, 'generated', 4);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'One gram of carbohydrate provides about 4 kcal', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glycogen is stored mainly in the liver and muscles', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'ABO blood group antigens are carbohydrate structures on the red blood cell surface', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Cellulose is a linear polymer of α-D-glucose', 0);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the classification of monosaccharides:', 'Ribulose is the ketopentose (ribose is the aldopentose). Oligosaccharides contain 2–10 units; more than 10 makes a polysaccharide.', 'Lesson: Carbohydrates', NULL, 'generated', 9);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Glyceraldehyde is an aldotriose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ribulose is an aldopentose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Sedoheptulose is a ketoheptose', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Oligosaccharides contain more than 10 monosaccharide units', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About asymmetric carbons (C*) of monosaccharides:', 'The number of isomers is N = 2ⁿ (n = number of C*): 2² = 4 for erythrose, 2⁴ = 16 for aldohexoses (8 D + 8 L). Dihydroxyacetone is achiral — it has no asymmetric carbon.', 'Lesson: Carbohydrates', NULL, 'generated', 17);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A carbon is asymmetric when it is attached to four different atoms or groups', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Dihydroxyacetone has one asymmetric carbon', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'D-erythrose has 2 C* and therefore 4 stereoisomers', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A linear aldohexose has 4 C* and therefore 16 stereoisomers', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the D and L series:', 'For glucose the reference carbon is C5 (–OH right = D, left = L). D- and L-glucose are mirror images at every C*, so they are enantiomers, not epimers.', 'Lesson: Carbohydrates', NULL, 'generated', 13);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The series is set by the –OH on the asymmetric carbon adjacent to the terminal primary alcohol', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'For glucose, this reference carbon is C4', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Most sugars of higher animals, including man, are of the D configuration', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'D-glucose and L-glucose are C5 epimers', 0);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About Kiliani–Fischer synthesis and the D-aldose family:', 'D-glucose is the aldose that predominates in nature; fructose is a ketose, not an aldose.', 'Lesson: Carbohydrates', NULL, 'generated', 18);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It lengthens the chain of an aldose by one carbon at a time', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'There are 8 D-aldohexoses', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucose, mannose and galactose are the most familiar D-aldohexoses', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'D-fructose is the only aldose that predominantly occurs in nature', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which of the following are ketoses?', 'D-Xylulose (5C) and D-sedoheptulose (7C) are among the physiologically important ketoses (with dihydroxyacetone, D-ribulose, D-fructose). Erythrose and ribose are aldoses.', 'Lesson: Carbohydrates', NULL, 'generated', 19);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'D-Xylulose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'D-Erythrose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'D-Ribose', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'D-Sedoheptulose', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the cyclization of monosaccharides:', 'Aldoses: pyranose C1–C5, furanose C1–C4. Ketoses: pyranose C2–C6, furanose C2–C5. The chair form of glucose is more stable than the boat form.', 'Lesson: Carbohydrates', NULL, 'generated', 24);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The pyranose ring of an aldose is formed between C1 and C5', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The furanose ring of a ketose is formed between C1 and C4', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The pyranose ring of a ketose is formed between C2 and C5', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The chair form is the most stable conformation of glucose', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Pure α-D-glucose is dissolved in water and its specific rotation is followed with a polarimeter:', 'α-D-glucose (+111°) and β-D-glucose (+19.2°) interconvert until an equilibrium mixture of both anomers at +52.5° is reached — not pure β.', 'Lesson: Carbohydrates', NULL, 'generated', 34);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The initial specific rotation is about +111°', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The rotation falls until it stabilizes at about +52.5°', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'At equilibrium the solution contains only the β-form', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'This spontaneous change is called mutarotation', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the measurement of optical activity:', 'A racemic (equimolar D/L) mixture is optically inactive because the rotations cancel. The sign of rotation has no relationship with D/L configuration — D-fructose is levorotatory.', 'Lesson: Carbohydrates', NULL, 'generated', 31);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is measured with a polarimeter at 20 °C using the sodium D-line (589 nm)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'In Biot''s law, concentration is in g/mL and tube length in decimeters', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A racemic mixture is dextrorotatory', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Whether a sugar is (+) or (−) follows directly from its D or L configuration', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'A solution contains D-glucose ([α] = +52°) and L-glucose at exactly the same concentration. Its observed rotation is:', 'Enantiomers rotate light by equal amounts in opposite directions (L-glucose = −52°), and rotations are additive, so this racemic mixture shows no optical activity.', 'Lesson: Carbohydrates', NULL, 'generated', 33);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '+52°', 0),
  ((SELECT MAX(id) FROM questions), 'B', '−52°', 0),
  ((SELECT MAX(id) FROM questions), 'C', '0°', 1),
  ((SELECT MAX(id) FROM questions), 'D', '+104°', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About the oxidation of monosaccharides:', 'Mild oxidation attacks only the aldehyde (aldonic acid) and ketoses do not react under these conditions. Strong oxidation of both ends → aldaric acid; of the CH₂OH only → uronic acid.', 'Lesson: Carbohydrates', NULL, 'generated', 37);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Mild oxidation of an aldose gives an aldonic acid', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Ketoses are oxidized under the same mild conditions', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Oxidation of the terminal CH₂OH alone gives a uronic acid', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Oxidation of both the aldehyde and the primary alcohol gives an aldaric acid', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'In the liver, bilirubin, hormones and drugs are made water-soluble for urinary or biliary elimination by conjugation with:', 'Uronic acids (glucuronic acid) conjugate these substances into soluble glucuronides — hepatic detoxification. Gluconic acid is the aldonic acid and glucaric acid the aldaric acid of glucose.', 'Lesson: Carbohydrates', NULL, 'generated', 39);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Gluconic acid', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Glucuronic acid', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glucaric acid', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Sorbitol', 0);

-- G22
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'A sugar solution heated with Fehling''s solution in alkaline medium gives a red precipitate:', 'Cupric oxide oxidizes the aldose (to an aldonic acid) and is reduced to red cuprous oxide, so the sugar is ''reducing''. Sucrose has no free anomeric carbon and is non-reducing.', 'Lesson: Carbohydrates', NULL, 'generated', 40);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The precipitate is cuprous oxide', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The sugar has been oxidized', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Sucrose would give this result', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The sugar is called a reducing sugar', 1);

-- G23
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'In poorly controlled diabetes, a sugar alcohol accumulates in the lens and nerves, contributing to cataract and neuropathy. About the reduction of monosaccharides:', 'Sorbitol and dulcitol cause osmotic swelling of cells when they accumulate. D-ribose gives D-ribitol, and mannitol is used to lower intracranial tension by forced diuresis.', 'Lesson: Carbohydrates', NULL, 'generated', 42);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Reduction of D-glucose gives D-sorbitol', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Reduction of D-galactose gives D-dulcitol', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Reduction of D-ribose gives D-mannitol', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Mannitol raises intracranial pressure and is avoided in brain oedema', 0);

-- G24
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About other chemical reactions of monosaccharides:', 'All four are taught: enolization (p43), dehydration losing three water molecules (p44), and esterification by phosphoric acid with ATP as donor (p45).', 'Lesson: Carbohydrates', NULL, 'generated', 44);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In dilute alkali, glucose, fructose and mannose interconvert through a common 1,2-enediol', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Concentrated acid dehydrates pentoses into furfural', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Dehydration of hexoses gives 5-hydroxymethylfurfural (HMF)', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'ATP donates the phosphate in the formation of glucose 6-phosphate', 1);

-- G25
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Methylation of the anomeric –OH of glucose:', 'Blocking the anomeric –OH removes the reducing property. Complete methylation identifies which –OH groups are engaged in bonds (and protects them in synthesis); glucose 1-phosphate is a phosphate ester, not a methylation product.', 'Lesson: Carbohydrates', NULL, 'generated', 47);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Makes the sugar non-reducing', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Makes the sugar more strongly reducing', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Complete methylation helps locate glycosidic linkages in polysaccharides', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Is the reaction that forms glucose 1-phosphate', 0);

-- G26
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About monosaccharide derivatives:', 'Fucose is 6-deoxy-L-galactose; rhamnose is 6-deoxy-L-mannose. Sialic acid (9C) comes from pyruvic acid (3C) + D-mannosamine (6C).', 'Lesson: Carbohydrates', NULL, 'generated', 49);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Deoxyribose carries a CH₂ group at carbon 2', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Rhamnose is 6-deoxy-L-galactose', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'In amino sugars, the –OH at C2 is replaced by –NH₂', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Sialic acid (NANA) is formed from pyruvic acid and D-glucosamine', 0);

-- G27
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About vitamin C (ascorbic acid):', 'Humans cannot synthesize ascorbic acid, which is why it is a water-soluble vitamin. Deficiency weakens collagen and vessel walls (scurvy).', 'Lesson: Carbohydrates', NULL, 'generated', 49);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Only the L-form is biologically active', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It is characterized by an ene-diol function', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Humans synthesize it from glucose', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Its deficiency causes scurvy through abnormal collagen synthesis', 1);

-- G28
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'Which of the following disaccharides are reducing?', 'Maltose and cellobiose (both glucose (1→4) glucose) keep a free anomeric carbon. Sucrose (1→2) and trehalose (1→1) link both anomeric carbons and are non-reducing.', 'Lesson: Carbohydrates', NULL, 'generated', 52);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Maltose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cellobiose', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Sucrose', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Trehalose', 0);

-- G29
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'A patient with hepatic encephalopathy (raised plasma ammonia) is treated with lactulose:', 'Lactulose (galactose + fructose) is neither digested nor absorbed; trapping ammonia as NH₄⁺ in the lumen lowers plasma NH₃.', 'Lesson: Carbohydrates', NULL, 'generated', 52);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lactulose is a synthetic disaccharide of galactose and fructose', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Lactulose is absorbed in the small intestine', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It converts NH₃ in the intestinal lumen into poorly absorbed NH₄⁺', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Lactulose is made of two glucose units', 0);

-- G30
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About starch and glycogen:', 'Amylose is water-soluble and only 15–20% of starch; amylopectin (80–85%) is insoluble. Glycogen resembles amylopectin but with more branches; glycogenin initiates its synthesis.', 'Lesson: Carbohydrates', NULL, 'generated', 58);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Amylose is the water-insoluble, predominant component of starch', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Glycogen has α(1→4) bonds with α(1→6) bonds at branch points', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Glycogen contains a small protein, glycogenin, at its core', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Glycogen is less branched than amylopectin', 0);

-- G31
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About homopolysaccharides:', 'Humans lack the enzyme that cleaves β-glycosidic bonds, so cellulose is indigestible fiber. Polysaccharides, with their high molecular weight, form colloidal solutions rather than dissolving readily.', 'Lesson: Carbohydrates', NULL, 'generated', 59);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Chitin is made of N-acetyl-D-glucosamine units joined by β(1→4) bonds', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Glucans are polymers of glucose and fructosans polymers of fructose', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Humans digest cellulose using their amylases', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Polysaccharides dissolve readily in water, forming true solutions', 0);

-- G32
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About heterosides (glycosides):', 'Heterosides are classed by the atom bonding sugar to aglycone: O (amygdalin, digitalin, rutin), N (purine/pyrimidine bases in nucleosides), S (sinigrin). Amygdalin is cyanogenic.', 'Lesson: Carbohydrates', NULL, 'generated', 63);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'In O-heterosides the aglycone is linked to the sugar through an oxygen atom', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Nucleosides are N-heterosides', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Sinigrin of black mustard seeds is an S-heteroside', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Amygdalin can release hydrocyanic acid on enzymatic hydrolysis', 1);

-- G33
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About glycoproteins and proteoglycans:', 'Proteoglycans are dominated by their GAG chains (> 90% carbohydrate); it is glycoproteins whose carbohydrate content varies (1–90%).', 'Lesson: Carbohydrates', NULL, 'generated', 66);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'O-glycosidic linkages bind the carbohydrate to a serine or threonine –OH', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'N-glycosidic linkages bind the carbohydrate to the amide nitrogen of asparagine', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'In proteoglycans the carbohydrate part is less than 10%', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Heparin is a secretory glycosaminoglycan', 1);

-- G34
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About glycosaminoglycans (GAGs):', 'L-iduronic acid (C5 inversion of D-glucuronic acid) characterizes dermatan sulfate. Hyaluronidase cleaves the β(1→4) linkages, helping sperm penetration.', 'Lesson: Carbohydrates', NULL, 'generated', 69);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hyaluronic acid is made of D-glucuronic acid and N-acetylglucosamine', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Chondroitin sulfate contains L-iduronic acid', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Keratan sulfate keeps the cornea transparent', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Hyaluronidase breaks α(1→4) linkages of hyaluronic acid around the ovum', 0);

-- G35
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry'), 'About monosaccharides of biological interest:', 'L-arabinose (and D-arabinose) are not metabolized by humans and are excreted in the urine without pathological consequences.', 'Lesson: Carbohydrates', NULL, 'generated', 27);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Biochemistry') AND title = 'Carbohydrates'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Normal glycemia is about 0.80 g/L', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Fructose in seminal fluid is an energy substrate for spermatozoa', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'L-arabinose is fully metabolized by humans', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Galactose is a constituent of lactose', 1);
