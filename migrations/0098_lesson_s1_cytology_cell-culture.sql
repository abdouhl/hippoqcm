-- Generated from data/lessons/s1-cytology-cell-culture.json — lesson "Cell culture": 4 exam + 17 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Cell culture', 's1/cytology/cell-culture.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q9',
    'EMD1 2023-2024 Q12',
    'EMD1 2023-2024 Q35',
    'EMD1 2024-2025 Q26'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About cell culture:', 'Cell culture keeps living cells outside the organism, where they still proliferate and differentiate, but they are not organized into tissues. It is central to vaccines, cancer research and therapeutic protein production.', 'Lesson: Cell culture', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'It maintains living cells outside their original organism.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Cultured cells keep the capacity to proliferate and differentiate in vitro.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Cultured cells are organized into tissues, as in the organism.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'It is used in vaccine development and therapeutic protein production.', 1);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You receive a fresh liver biopsy and want to obtain isolated living hepatocytes. The correct order of steps is:', 'For adherent cells: biopsy, mechanical dissociation (physical disruption), enzymatic dissociation, then debris removal by filtration and washing. A blood sample is only enough for circulating cells.', 'Lesson: Cell culture', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'biopsy → mechanical dissociation → enzymatic dissociation → debris removal.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'biopsy → enzymatic dissociation → debris removal → mechanical dissociation.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'biopsy → debris removal → mechanical dissociation → enzymatic dissociation.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'blood sample → enzymatic dissociation → debris removal.', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'During the isolation of adherent cells, enzymatic dissociation is used to:', 'Enzymatic dissociation removes the extracellular matrix, breaks intercellular junctions and releases single cells. Removing fragments by filtration and washing is the later debris-removal step.', 'Lesson: Cell culture', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'eliminate the extracellular matrix.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'break intercellular junctions.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'release individual cells.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'remove tissue fragments by filtration.', 0);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You want to culture a patient''s lymphocytes:', 'Blood and lymphatic cells are circulating cells, easy to obtain with a simple blood sample. Biopsy and mechanical/enzymatic dissociation are needed for adherent cells from solid tissues.', 'Lesson: Cell culture', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'lymphocytes are adherent cells derived from a solid tissue.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'a simple blood sample is sufficient to obtain them.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'a biopsy followed by mechanical and enzymatic dissociation is mandatory.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'lymphocytes are circulating cells.', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About a primary culture:', 'A primary culture is the first population isolated from a tissue and the closest to the physiological state. It contains all the cell types of the tissue (not homogeneous) and has a short lifespan.', 'Lesson: Cell culture', NULL, 'generated', 2, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'it is a homogeneous population of a single cell type.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'its cells divide indefinitely.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'it is the initial population of cells isolated directly from a tissue.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'it is the closest cellular state to the cells in their natural environment.', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'A primary culture of normal human skin fibroblasts is kept for several weeks:', 'DNA polymerase cannot fully replicate chromosome ends, so telomeres shorten at each division until replicative senescence and then apoptosis. Normal somatic cells lack telomerase; it is expressed by cell lines, germ cells, some stem cells and most cancer cells.', 'Lesson: Cell culture', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'its telomeres shorten with each division.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'when telomeres become critically short, cells enter permanent cell-cycle arrest (replicative senescence).', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'fibroblasts express telomerase, so the culture divides indefinitely.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'the arrested cells finally undergo apoptosis.', 1);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About cell lines:', 'Cell lines are homogeneous, derived from a primary culture, and immortalized, usually by introducing viral genes. They bypass the Hayflick limit (40–60 divisions) that applies to primary cultures.', 'Lesson: Cell culture', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'like primary cultures, they stop dividing after roughly 40 to 60 divisions.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'they are homogeneous populations derived from a primary culture.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'they have acquired resistance to apoptosis and divide indefinitely (immortalization).', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'immortalization usually results from a genetic modification, most often by viral transduction.', 1);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You want to establish a cell line of normal human kidney epithelial cells for a long-term project. Which protocol do you use?', 'Normal cells must be sorted by flow cytometry to keep the desired type, then immortalized with viral genes. Sorting alone is enough only for tumor cells, which already resist apoptosis; kidney cells are adherent, so a blood sample won''t do.', 'Lesson: Cell culture', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'biopsy + primary culture.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'biopsy + primary culture + flow cytometry sorting.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'biopsy + primary culture + flow cytometry sorting + immortalization by introducing viral genes.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'blood sample + flow cytometry sorting + immortalization by introducing viral genes.', 0);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Establishing a tumor cell line requires only cell sorting, with no immortalization step, because tumor cells:', 'Tumor cells are intrinsically resistant to apoptosis because of accumulated mutations, so they need no extra immortalization. Most cancer cells actually express telomerase, and post-mitotic G0 cells describe mature neurons.', 'Lesson: Cell culture', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'lack telomerase.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'are post-mitotic cells in G0 phase.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'are by definition resistant to apoptosis.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'have accumulated multiple mutations enabling uncontrolled proliferation.', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About flow cytometry:', 'Cells in suspension pass one by one through a LASER beam; the cytometer measures relative size, granularity and fluorescence, up to 1,000 cells per second. It uses a laser, not an electron beam, and cells pass individually.', 'Lesson: Cell culture', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'it measures the relative size of each cell.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'it measures the internal complexity (granularity) of each cell.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'cells pass in groups through an electron beam.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'modern cytometers can analyze up to 1,000 cells per second.', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'From a primary culture, you want to keep only the cells carrying a surface marker labeled with a fluorochrome, before immortalizing them. Which step do you use?', 'Flow cytometry sorts cells according to predefined parameters, including fluorescence intensity of a labeled marker. Immortalization comes after sorting and does not select cells; dissociation and debris removal belong to cell isolation.', 'Lesson: Cell culture', NULL, 'generated', 3, 3, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'enzymatic dissociation.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'debris removal by filtration and washing.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'flow cytometry sorting according to fluorescence intensity.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'immortalization by introducing viral genes.', 0);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'About the evolution of cells once placed in culture:', 'Cells adapt during the lag phase, then divide actively in the exponential phase. Normal somatic cells are capped at about 40–60 divisions (Hayflick limit); active division belongs to the exponential, not the lag, phase.', 'Lesson: Cell culture', NULL, 'generated', 3, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'they first go through a lag phase, during which they adjust to the new environment.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'a phase of exponential growth with active cell division follows.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'the lag phase is characterized by active cell division.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'normal human somatic cells divide only about 40 to 60 times: the Hayflick limit.', 1);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Which cells express telomerase, allowing them to bypass the Hayflick limit?', 'Telomerase is expressed by cell lines, germ cells, certain stem cells and most cancer cells. Normal somatic cells lack it and senesce; mature neurons don''t divide at all, so the Hayflick limit doesn''t apply to them.', 'Lesson: Cell culture', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'normal human somatic cells in primary culture.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'germ cells.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'mature neurons.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'most cancer cells.', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Two adherent cell lines are grown in flasks well past confluence. Which observation identifies the tumor cell line?', 'Normal adherent lines keep contact inhibition and stop dividing at confluence (monolayer). Tumor adherent lines lack it and keep dividing, forming multilayered aggregates; neither line senesces, both being immortal.', 'Lesson: Cell culture', NULL, 'generated', 4, 1, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'a single layer of cells that has stopped dividing.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'cells floating in suspension in the medium.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'cells entering senescence after about 50 divisions.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'cells piled up in multilayered aggregates.', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'You want to study healthy adult human neurons in culture:', 'Mature neurons do not divide, so the Hayflick limit doesn''t apply and they cannot be subcultured: no continuous line can be made from them directly. They must be isolated from fresh tissue or obtained by differentiating expanded neural progenitors.', 'Lesson: Cell culture', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'mature neurons are terminally differentiated, post-mitotic cells in G0 phase.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'the Hayflick limit does not apply to them.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'you can establish a continuous cell line directly from healthy adult neurons.', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'you can expand neural progenitors and induce them to differentiate into mature neurons.', 1);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'Concerning the maintenance of a culture of adherent cells:', 'Culture needs aseptic conditions, a medium change every 2–3 days, and passaging into new flasks at confluence. A monthly change would deplete nutrients.', 'Lesson: Cell culture', NULL, 'generated', 4, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'the work requires aseptic conditions.', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'the culture medium is changed once a month.', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'the culture medium must be changed every 2–3 days to prevent nutrient depletion.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'at confluence, cells must be subcultured (passaged) into new flasks.', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight, calc, mental) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology'), 'In clinical practice (as opposed to medical research), cell culture is used for:', 'The lesson lists artificial skin, pharmaceutical production and stem cell preparation for transplantation under clinical practice. Toxicological testing and implanting cells into animals are medical-research uses.', 'Lesson: Cell culture', NULL, 'generated', 5, 0, 0, NULL);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Cytology') AND title = 'Cell culture'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'toxicological testing of new drugs in vitro.', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'preparation of artificial skin for burn treatment.', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'production of antibodies, hormones, vaccines and insulin.', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'implantation of cultured cells into animals for in vivo studies.', 0);
