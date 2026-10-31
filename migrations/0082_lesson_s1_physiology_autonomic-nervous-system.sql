-- Generated from data/lessons/s1-physiology-autonomic-nervous-system.json — lesson "Autonomic nervous system": 8 exam + 21 generated questions.
INSERT OR IGNORE INTO lessons (module_id, title, pdf, position) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Autonomic nervous system', 's1/physiology/autonomic-nervous-system.pdf', (SELECT COALESCE(MAX(position), 0) + 1 FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology')));

-- Past exam questions covered by this lesson
INSERT OR IGNORE INTO question_lessons (question_id, lesson_id)
  SELECT id, (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system') FROM questions
  WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND origin = 'exam' AND source IN (
    'EMD1 2022-2023 Q22',
    'EMD1 2022-2023 Q23',
    'EMD1 2022-2023 Q24',
    'EMD1 2022-2023 Q25',
    'EMD1 2023-2024 Q13',
    'EMD1 2023-2024 Q15',
    'EMD1 2023-2024 Q16',
    'EMD1 2024-2025 Q7'
  );

-- G1
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the autonomic nervous system:', 'The ANS is predominantly involuntary but not independent of the brain: autonomic = automatic, not autonomous. Its centres lie in the CNS.', 'Lesson: Autonomic nervous system', NULL, 'generated', 2, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Its activity is predominantly voluntary', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'It regulates cardiac muscle, smooth muscle and glands', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Its control centres lie in the CNS', 1),
  ((SELECT MAX(id) FROM questions), 'D', '"Autonomic" means independent of the brain', 0);

-- G2
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Somatic versus autonomic motor systems:', 'Somatic effects are always excitatory; autonomic effects can be excitatory or inhibitory, through ACh or NE depending on the pathway.', 'Lesson: Autonomic nervous system', NULL, 'generated', 2, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The somatic transmitter is ACh acting on nicotinic muscle (Nm) receptors', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The somatic pathway uses one neuron from the CNS to the muscle', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The autonomic pathway usually uses two neurons relayed in a peripheral ganglion', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The effect of the somatic system on its target is excitatory or inhibitory', 0);

-- G3
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the components of the ANS:', 'Sympathetic preganglionic neurons lie in the lateral horn of the spinal cord from T1 to L2.', 'Lesson: Autonomic nervous system', NULL, 'generated', 3, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The parasympathetic division has a craniosacral origin and supports "rest and digest"', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The enteric nervous system is an intrinsic gut network that can work on its own and is modulated by both divisions', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The sympathetic division has a thoracolumbar origin and mobilizes the body for "fight or flight"', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Sympathetic preganglionic neurons lie in the lateral horn of the spinal cord from T1 to L2', 1);

-- G4
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which sympathetic ganglion — target pairs are correct?', 'The eye and salivary glands are supplied through the sympathetic chain; the superior mesenteric ganglion supplies the small intestine and proximal colon.', 'Lesson: Autonomic nervous system', NULL, 'generated', 3, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sympathetic chain (paravertebral) — heart, lungs, sweat glands and blood vessels', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Coeliac ganglion — stomach, liver, pancreas, spleen', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Superior mesenteric ganglion — eye and salivary glands', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Inferior mesenteric ganglion — distal colon, rectum, pelvic organs', 1);

-- G5
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The adrenal medulla:', 'The preganglionic fibre reaches the adrenal medulla directly (no postganglionic neuron); it releases adrenaline (~80 %) and noradrenaline (~20 %) into the blood.', 'Lesson: Autonomic nervous system', NULL, 'generated', 4, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Releases about 80 % noradrenaline and 20 % adrenaline', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Has chromaffin cells stimulated by preganglionic ACh through Nn receptors', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Receives a postganglionic sympathetic fibre', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Behaves like a modified sympathetic ganglion', 1);

-- G6
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the parasympathetic outflow:', 'Ciliary ganglion → eye; pterygopalatine → lacrimal and nasal glands; submandibular ganglion → submandibular and sublingual glands; otic ganglion → parotid.', 'Lesson: Autonomic nervous system', NULL, 'generated', 4, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The vagus nerve carries most parasympathetic outflow', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The otic ganglion supplies the submandibular gland', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'It arises from cranial nerves III, VII, IX, X and the sacral cord S2–S4', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The ciliary ganglion supplies the lacrimal glands', 0);

-- G7
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Comparing the two divisions:', 'Sympathetic ganglia lie near the vertebral column or abdominal arteries, with high divergence (widespread effects). Parasympathetic ganglia lie near/in organs: long pre, short post, localized effects.', 'Lesson: Autonomic nervous system', NULL, 'generated', 5, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Parasympathetic: ganglia near or within the target organs', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sympathetic: usually short preganglionic and long postganglionic fibres', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Parasympathetic: high divergence with widespread effects', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Sympathetic: ganglia within the target organs', 0);

-- G8
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About transmission in the autonomic ganglia:', 'Rule 1: every autonomic ganglion, sympathetic or parasympathetic, uses ACh on Nn receptors (fast ligand-gated channels).', 'Lesson: Autonomic nervous system', NULL, 'generated', 6, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The preganglionic neuron releases ACh in both divisions', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Sympathetic ganglia use NE acting on α receptors', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The Nn receptor is a fast ligand-gated cation channel with no second messenger', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'ACh acts on neuronal nicotinic (Nn) receptors', 1);

-- G9
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'At the target organ:', 'Rule 2: parasympathetic ACh → M; most sympathetic NE → α/β. Eccrine sweat glands are the exception: sympathetic but cholinergic.', 'Lesson: Autonomic nervous system', NULL, 'generated', 6, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sympathetic postganglionic fibres always release NE, without exception', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Parasympathetic fibres act on nicotinic muscle (Nm) receptors', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Most sympathetic postganglionic fibres release NE onto α or β receptors', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Parasympathetic postganglionic fibres release ACh onto muscarinic receptors', 1);

-- G10
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'A patient taking a drug that blocks M₃ receptors notices that they sweat less. Which statements explain this?', 'Sweating is the key cholinergic exception of the sympathetic system (ACh → M₃). Sweat glands have no parasympathetic innervation.', 'Lesson: Autonomic nervous system', NULL, 'generated', 6, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Sweat glands receive parasympathetic innervation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Sweat glands respond to NE acting on α₁ receptors', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Eccrine sweat glands receive sympathetic cholinergic fibres', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Sympathetic postganglionic fibres to sweat glands release ACh onto M₃ receptors', 1);

-- G11
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About the special cases of sympathetic transmission:', 'Kidney (β₁) and adipose tissue (β₃) are not exceptions, just particular subtypes. The cholinergic exception is the eccrine sweat gland.', 'Lesson: Autonomic nervous system', NULL, 'generated', 6, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Adipose tissue uses NE normally, through β₃ receptors, for lipolysis', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Eccrine sweat glands are the key cholinergic exception', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'The kidney uses NE normally, through β₁ receptors, to release renin', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Bronchi depend mainly on circulating adrenaline acting on β₂ receptors', 1);

-- G12
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Which receptor — signalling pairs are correct?', 'α₁ is coupled to Gq (IP₃/DAG → ↑ Ca²⁺); α₂ and M₂/M₄ to Gi/o. Memory aid: Gs = Stimulates cAMP, Gi = Inhibits cAMP, Gq = Ca²⁺.', 'Lesson: Autonomic nervous system', NULL, 'generated', 7, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'β₁, β₂, β₃ — mainly Gs → ↑ cAMP', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'M₂ — Gi/o, ↓ cAMP, and opening of K⁺ channels in the heart', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'α₂ — Gs → ↑ cAMP', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'α₁ — Gi/o → ↓ cAMP', 0);

-- G13
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Where are these receptors mainly located?', 'Presynaptic α₂ receptors reduce NE release (negative feedback); α₂ is also found on pancreatic β-cells.', 'Lesson: Autonomic nervous system', NULL, 'generated', 7, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'β₁ — heart and kidney', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'β₃ — adipose tissue and detrusor', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'α₂ — presynaptic terminals, where they increase NE release', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'M₃ — smooth muscle of the gut, bronchi, bladder and iris, and glands', 1);

-- G14
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'The same receptor can have different effects depending on the tissue:', 'Endothelial M₃ acts indirectly: it releases NO, which relaxes the smooth muscle of the vessel wall.', 'Lesson: Autonomic nervous system', NULL, 'generated', 7, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Endothelial M₃ contracts the vessels directly', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'M₃ contracts the iris sphincter', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Endothelial M₃ relaxes vascular smooth muscle by releasing nitric oxide', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'The organ response depends on the transmitter, the receptor subtype and the tissue', 1);

-- G15
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About visceral reflexes:', 'Short reflexes are fast and local (small part of one organ, e.g. gut wall stretch); long reflexes go through the CNS and can coordinate several organs (bladder emptying).', 'Lesson: Autonomic nervous system', NULL, 'generated', 7, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'A short reflex is integrated in the enteric plexus or an autonomic ganglion without passing through the CNS', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Urination is an example of a long reflex', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'A long reflex passes through the spinal cord or brainstem', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'A short reflex coordinates several organs', 0);

-- G16
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'During an exam, a student''s heart speeds up and digestion slows. About the central control of the ANS:', 'The ANS is controlled by a hierarchy: cortex/limbic system → hypothalamus → brainstem → spinal cord. Bladder and bowel emptying reflexes are spinal; the brainstem handles heart rate, blood pressure and breathing.', 'Lesson: Autonomic nervous system', NULL, 'generated', 8, 1);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'The cortex and limbic system adapt autonomic responses to emotions', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'The brainstem is the centre of the bladder and bowel emptying reflexes', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'The ANS has no central control: it is autonomous', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'The hypothalamus is the main coordinator of autonomic responses and homeostasis', 1);

-- G17
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Autonomic effects on the heart and vessels:', 'Parasympathetic slowing of the heart uses ACh → M₂ (Nn receptors are in the ganglia). Most blood vessels receive only sympathetic fibres: their tone is set by ↑ or ↓ sympathetic activity. Skeletal-muscle vessels dilate with circulating adrenaline (β₂).', 'Lesson: Autonomic nervous system', NULL, 'generated', 9, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Most vessels have a rich parasympathetic innervation', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Sympathetic: ↑ heart rate, via NE → β₁', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Most vessels constrict through NE → α₁', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Parasympathetic: ↓ heart rate, via ACh → Nn on the cardiac cells', 0);

-- G18
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'Autonomic effects on the eye and bronchi:', 'Near-vision accommodation is parasympathetic (ciliary muscle contraction, ACh → M₃); sympathetic β₂ causes slight ciliary relaxation for far vision.', 'Lesson: Autonomic nervous system', NULL, 'generated', 9, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Accommodation for near vision is sympathetic', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Pupil constriction is parasympathetic: ACh → M₃ on the sphincter', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Bronchodilation is due mainly to circulating adrenaline acting on β₂', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Pupil dilation is sympathetic: NE → α₁ on the radial dilator muscle', 1);

-- G19
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About autonomic effects on the viscera:', 'Storage is sympathetic, emptying parasympathetic. In the pancreas, sympathetic NE → α₂ decreases insulin; parasympathetic ACh → M₃ increases it.', 'Lesson: Autonomic nervous system', NULL, 'generated', 9, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Bladder storage: the detrusor relaxes (NE → β₃) and the internal sphincter contracts (NE → α₁)', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Bladder emptying: the detrusor contracts through ACh → M₃', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Parasympathetic activity increases insulin and enzyme secretion through M₃', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Bladder storage is a parasympathetic effect', 0);

-- G20
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About salivary secretion:', 'Parasympathetic: abundant watery secretion (ACh → M₃); sympathetic: scant, protein-rich secretion. Both stimulate secretion with different composition: complementary, not opposing, effects.', 'Lesson: Autonomic nervous system', NULL, 'generated', 9, 2);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Parasympathetic stimulation gives a scant, protein-rich secretion', 0),
  ((SELECT MAX(id) FROM questions), 'B', 'Salivation is an example of opposing effects of the two divisions', 0),
  ((SELECT MAX(id) FROM questions), 'C', 'Salivation is an example of complementary effects of the two divisions', 1),
  ((SELECT MAX(id) FROM questions), 'D', 'Sympathetic stimulation gives an abundant watery secretion through ACh → M₃', 0);

-- G21
INSERT INTO questions (module_id, stem, explanation, source, image, origin, pdf_page, exam_weight) VALUES ((SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology'), 'About sexual function and single innervation:', '"Point and Shoot": parasympathetic = point (erection), sympathetic = shoot. The sympathetic system decreases gut motility; the parasympathetic increases it.', 'Lesson: Autonomic nervous system', NULL, 'generated', 9, 0);
INSERT INTO question_lessons (question_id, lesson_id) VALUES ((SELECT MAX(id) FROM questions), (SELECT id FROM lessons WHERE module_id = (SELECT id FROM modules WHERE semester = 1 AND name = 'Physiology') AND title = 'Autonomic nervous system'));
INSERT INTO options (question_id, label, text, is_correct) VALUES
  ((SELECT MAX(id) FROM questions), 'A', 'Most blood vessels, sweat glands, the adrenal medulla and the kidney receive only sympathetic fibres', 1),
  ((SELECT MAX(id) FROM questions), 'B', 'Erection is parasympathetic, through vasodilation via NO', 1),
  ((SELECT MAX(id) FROM questions), 'C', 'Gut motility is increased by sympathetic activity', 0),
  ((SELECT MAX(id) FROM questions), 'D', 'Emission and ejaculation are sympathetic, through NE → α₁', 1);
