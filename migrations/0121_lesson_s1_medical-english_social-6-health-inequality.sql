-- Generated from data/lessons/s1-medical-english-social-6-health-inequality.json — lesson "Social Sciences · Seq 6 Inequality in health access": 0 exam + 21 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Social Sciences · Seq 6 Inequality in health access', 's1/medical-english/social-6-health-inequality.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English')));

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Health inequity, as opposed to health inequality, refers to differences that are:', 'Differences due to natural variation (older vs younger adults) are inequalities, not necessarily injustices.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Due only to natural variation such as age', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Avoidable', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Unjust', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Unfair', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Older adults generally have different health needs than younger adults. According to the course, this is:', 'The course''s example of a health inequality that is not an inequity.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 1, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'An inequality, but not necessarily an injustice', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'A structural barrier', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'An example of the Inverse Care Law', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'A health inequity', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Dimensions of access to healthcare listed in the course:', 'The five dimensions: geographic, financial, cultural, timely, quality.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Genetic access — inherited ability to recover', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Cultural access — linguistically and culturally appropriate services', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Financial access — ability to afford care, medicines and transport', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Geographic access — physical distance to facilities', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The Inverse Care Law:', 'Those who need healthcare most are the least likely to receive it.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'States that the availability of good medical care tends to vary inversely with the need for it', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'States that the poorest receive the most care', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Operates more completely where medical care is most exposed to market forces', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Was first described by Julian Tudor Hart in 1971', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'People in the countries with the lowest life expectancy live, compared with those in the highest:', 'A 33-year gap, reflecting inequalities in healthcare, water, nutrition and social conditions.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '33 years less', 1),
  ((SELECT MAX(id) FROM questions), 'B', '5 years less', 0),
  ((SELECT MAX(id) FROM questions), 'C', '41 years less', 0),
  ((SELECT MAX(id) FROM questions), 'D', '17 years less', 0);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In Canada (Canadian Longitudinal Study on Aging), greater difficulty accessing specialist care was associated with:', 'Even with universal healthcare, disparities persist by income, race, immigrant status and Indigeneity.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Lacking a family physician', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Household income below $50,000', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Living in a rural area', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Having universal health coverage', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Key facts about low- and middle-income countries given in the course:', 'Over 80% of low-income countries are projected to spend less on health in 2030 than in 2024.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Low-income countries spend about $17 per capita per year on health', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Stockouts of essential NCD medicines affect up to 41% of low-income countries vs 4% of high-income ones', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Asia and Africa show the most significant intraregional inequalities in maternal and child health', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Government health spending is projected to rise in all low-income countries by 2030', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'By the end of 2021, the share of people with at least one COVID-19 vaccine dose was:', '"Vaccine nationalism" reflected policy choices favouring profit and national interest.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', '5.4% in low-income countries', 1),
  ((SELECT MAX(id) FROM questions), 'B', '64.1% in low-income countries', 0),
  ((SELECT MAX(id) FROM questions), 'C', '5.4% in high-income countries', 0),
  ((SELECT MAX(id) FROM questions), 'D', '64.1% in high-income countries', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Match the financial cost to its type:', 'Hospital fees are direct costs.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Hidden costs — healthy food and lifestyle expenses', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Indirect costs — transportation and lost wages', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Hidden costs — hospital fees', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Direct costs — consultations, medicines, hospital fees', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Social and cultural barriers to health access include:', 'Poor roads are a geographic barrier.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Stigma associated with illnesses such as HIV and mental disorders', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Immigration-related difficulties', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Poor roads and inadequate infrastructure', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Language difficulties', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Systemic and structural barriers include:', 'Also inadequate health information systems. Hidden costs are financial barriers.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Weak governance and lack of accountability', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Shortage of healthcare professionals', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Hidden lifestyle costs', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Poor coordination between healthcare services', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The "poverty trap" described among the consequences of unequal access means:', 'One of the economic and social consequences, with lost productivity and intergenerational effects.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Rich countries lose productivity', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Childhood illness has no later effects', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Illness increases poverty, while poverty limits healthcare access', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Poor people use emergency services less', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Limited access to preventive care puts pressure on healthcare systems through:', 'Section 4.3.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Greater use of emergency services', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Fewer patients reaching hospitals', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Less investment in prevention and early diagnosis', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Higher treatment costs', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the Pakistan vs Canada case study:', 'Canada''s universal healthcare reduces financial barriers, but inequalities remain.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Canada faces gaps in achieving equal access for everyone', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Pakistan struggles mainly with basic healthcare infrastructure', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Indigenous children in Canada face greater health risks', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Canada has no universal healthcare', 0);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Among older homeless adults in Chicago:', 'Age, homelessness and poverty combine to increase inequalities.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Only 66% of those needing medical assistance obtained it', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Most received dental care easily', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Arthritis, diabetes, hypertension and vision problems were frequent', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Only 18% of those needing dental assistance received it', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'In the study of women living with chronic STDs, the most frequent type of healthcare interaction was:', 'Biomedical 42% (disease rather than the person), patient-centred 31%, moral surveillance 27%.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Moral surveillance (42%)', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Moral surveillance (27%)', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The patient-centred approach (31%)', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The biomedical approach (42%)', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Health equity is based on four principles:', 'Accountability = monitoring healthcare systems; participation = involving communities in decisions.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 6, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Justice — fair distribution of resources', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Solidarity — shared responsibility', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Profitability — care driven by market forces', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Accountability and participation', 1);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the Algerian healthcare system:', 'Maternal mortality fell from 117.4 to 48.5 per 100,000 births (1999–2019).', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It is a dual system with a public and a growing private sector', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Health spending is about 5.2% of GDP', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Life expectancy reached 76 years in 2024', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Maternal mortality rose between 1999 and 2019', 0);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'The Boussemghoun study (2025) of 400 adults found that:', 'Access to mental health, dental and preventive services was particularly low.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Access to dental and mental health services was high', 0),
  ((SELECT MAX(id) FROM questions), 'B', '36.5% travelled to other regions for healthcare', 1),
  ((SELECT MAX(id) FROM questions), 'C', '52.3% did not visit a general practitioner during the previous year', 1),
  ((SELECT MAX(id) FROM questions), 'D', '39.7% had at least one chronic disease', 1);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'About the El-Chifa card:', 'Even with free public care, transport, lost wages and accommodation remain indirect barriers.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 7, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It provides health insurance coverage in Algeria', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'It removes all indirect costs such as transport', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Insurance alone does not guarantee access when local services are inadequate', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'It includes full coverage for certain chronic-disease prescriptions', 1);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English'), 'Recent Algerian policy responses cited by the course:', 'Also screening and early-diagnosis campaigns in rural areas.', 'Lesson: Social Sciences · Seq 6 Inequality in health access', NULL, 'generated', 8, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Medical English') AND title = 'Social Sciences · Seq 6 Inequality in health access'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Creation of a Ministry of Pharmaceutical Industry', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Second National Cancer Plan (2025–2030)', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Increased healthcare budget in the 2025 Finance Law', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Privatization of all public hospitals', 0);
