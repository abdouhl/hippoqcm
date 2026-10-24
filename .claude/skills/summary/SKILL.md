---
name: summary
description: Write a revision summary ("résumé") of a lesson PDF — the important information, definitions, classifications, mechanisms, numbers, techniques, the lesson's figures and schemas (cropped from the PDF or redrawn), the topics past exams asked and their traps, and a self-check — as a page shown in the app's "Summary" tab of that lesson. Use when the user asks for a summary/résumé/fiche of a lesson or PDF, for "all lessons", or runs /summary.
argument-hint: <lesson.pdf | lesson title | module> | all | missing
---

# /summary — lesson PDF → revision summary page

The user is a first-year medical student (Annaba) revising for EMD exams (multiple-answer MCQs). A summary must
let them revise the lesson **without reopening the PDF**: everything examinable, nothing invented, faster to read
than the slides. Everything runs from the project root `/Users/abdou/Developer/hippoqcm`.

Reference example (read it before writing a new one, and copy its structure and classes):
`public/summaries/s1/physiology/ligand-receptor-interactions.html`.

## Files

- Lesson PDF: `public/lessons/s<N>/<module>/<lesson>.pdf` (same path as `lessons.pdf` in the DB, minus `public/lessons/`).
- Summary page: `public/summaries/s<N>/<module>/<lesson>.html` — same path, `.html`.
- Its figures: `public/summaries/s<N>/<module>/<lesson>/<name>.jpg` (referenced relatively: `<lesson>/<name>.jpg`).
- Shared style: `public/summaries/summary.css` (light/dark, phone-friendly, print). Use its classes; don't add
  per-page `<style>` unless something truly new is needed, and then prefer adding it to `summary.css` for everyone.
- `bun scripts/summary.ts index` rebuilds `public/summaries/index.json`; the lesson page in the app shows a
  **Summary | PDF** switch only for lessons listed there. Run it after every new summary.
- `bun scripts/summary.ts missing` lists lesson PDFs without a summary.

## Which lessons

- A PDF path, a lesson title or a module name → those lessons (match against `public/lessons/**` and `data/lessons/*.json`).
- `all` / `missing` → every PDF from `bun scripts/summary.ts missing`, one at a time, in module order. Finish and
  check each page before starting the next. If there are many, tell the user the list first.
- A PDF that isn't in `public/lessons/` yet: summarize it anyway at the path `/lesson` would give it
  (`s<semester>/<module-slug>/<lesson-slug>`) and copy the PDF there, so the page links work. Tell the user it will
  appear in the app once the lesson is added with `/lesson`.

## 1. Read the whole lesson

- PDF tool: if `scripts/bin/pdf-tool` is missing, build it once:
  `mkdir -p scripts/bin && swiftc -O scripts/pdf-tool.swift -o scripts/bin/pdf-tool`.
- `scripts/bin/pdf-tool info <pdf>`; with a text layer, `scripts/bin/pdf-tool text <pdf>` (lines are often doubled —
  ignore duplicates). **Always also look at pages**: the Read tool can't render PDFs here (no poppler), so render
  them: `scripts/bin/pdf-tool render <pdf> <page> <scratchpad>/p<page>.png 80` and Read the PNG. Look at every page
  that has a figure, table, schema or little text, and every page of a scanned PDF.
- Note per section: the physical page number (1-based index in the file = `#page=N`), definitions, classifications,
  lists ("3 phases", "4 types"…), mechanisms step by step, examples, numbers/values/units, formulas, techniques and
  protocols (for methods lessons: principle, steps, what it shows, limits), comparisons, and every figure worth keeping.

## 2. Exam weight

- `bun scripts/lesson.ts exams <semester> <Module> > <scratchpad>/exams.txt`. If `data/lessons/<draft>.json` exists,
  its `exam_questions` are the questions linked to this lesson; otherwise pick the ones this lesson answers.
- For each topic, note which **years** asked it. Mark those sections with `<span class="exam">2023-24 · 2025-26</span>`.
- From the **wrong options** of those questions (and their official keys), write the **Exam traps** list: the false
  statement, why it's false, and how many years used it. Never contradict an official key; if the lesson seems
  to, say so in the summary and to the user.

## 3. Write the page

English, first-year level, faithful to the PDF — **every fact must come from the lesson**. Fix the slides' broken
English and OCR errors, keep their terms (and the French term in brackets when the slide uses one, e.g. "GPCR
(RCPG)"). Add nothing from outside knowledge except memory tricks, which must be labelled as such and must
not state new facts.

Structure (same order as the reference):
1. **Header**: `kicker` (S<N> · Module · Summary), title, meta line (page count, exam questions count, link to the PDF),
   `toc` of section anchors (TOC links need `target="_self"`: the page sets `<base target="_blank">` so PDF links
   open in a new tab, out of the app's iframe).
2. **`box essentials` "If you remember only this"**: 5–8 bullets that cover the most-examined facts.
3. **One `h2` per section of the lesson's plan**, keeping its numbering (I., II., …), each with a page link
   `<a class="page" href="/lessons/<pdf>#page=N">p. N</a>` and the `exam` pill when examined. Inside, prefer:
   - **tables** for anything comparable (types, classes, receptor vs receptor, technique vs technique);
   - `ol.steps` for mechanisms, sequences, protocols;
   - `.flow` chips for short chains (A → B → C);
   - `box def` for definitions, `box tip` for a memory trick / mnemonic, `box trap` for confusions;
   - `.term` for key terms, `<b>` for what an MCQ would hinge on (numbers, "only", "always", direction of change).
   Keep prose short: bullets and tables, not paragraphs.
4. **Figures** — see below.
5. **`h2#traps` Exam traps** (`box trap`): false statements past exams used, with the right fact.
6. **`h2#check` Self-check**: 8–15 `details.card` questions covering the whole lesson, weighted toward examined topics.
7. **Footer**: source course, legend (🎯 exam years, 📄 PDF page).

Length: as long as the content needs, no padding. Lesson lists and numbers must be complete (if the slide lists
5 steroid hormones, list all 5).

## 4. Figures and schemas

Keep a figure when it carries content better than text (anatomy, structures with labels, curves, pathways,
apparatus, micrographs, classification diagrams). Skip decorative pictures and figures that only repeat a sentence.

- **Crop from the PDF**: render at 150 dpi (`pdf-tool render <pdf> <page> <scratchpad>/hi<page>.png 150`), measure
  the box on the 80-dpi preview, then
  `python3 scripts/summary/figure.py <scratchpad>/hi<page>.png public/summaries/.../<lesson>/<name>.jpg L T R B --box-dpi=80 --dpi=150`
  (no `-I`: PIL lives in the user site-packages). Leave out slide titles and source lines. Read the crop to check it.
  If it's blurry or unreadable (common in scans), don't use it — redraw it.
- **Draw a schema** (inline `<svg viewBox=…>`, no width/height) for: a classification tree of the lesson, a cycle,
  a mechanism, a comparison, or any unreadable/blurry figure. Use the `summary.css` SVG classes (`s-text`,
  `s-muted`, `s-line`, `s-accent`, `s-coral`, `s-ok`, `s-violet`, `s-warn`, `s-membrane`) so it follows light/dark;
  font-size ≥ 12 at a 760-wide viewBox; give each `<marker>` a page-unique id; `role="img"` + `aria-label`.
  Keep every label inside its box and the viewBox.
- Every figure: `<figure>` (`class="small"` for photos/scans that would be huge at full width; two related ones
  side by side in `.grid2`), `alt`, a `figcaption` that says **what to learn from it** (not just its title) — translate
  French labels in the caption — and the page link.

## 5. Check it

- `bun scripts/summary.ts index`.
- Screenshot it: serve `public/` (`python3 -m http.server 8811` from `public/`, in the background) and run headless
  Chrome:
  `"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --hide-scrollbars --window-size=820,11000 --blink-settings=preferredColorScheme=1 --screenshot=<scratchpad>/s.png http://localhost:8811/summaries/<path>.html`
  (`preferredColorScheme=0` = dark; `--window-size=390,…` = phone). Slice tall screenshots with PIL into ~1800 px
  pieces and Read them. Fix overflowing SVG labels, broken images, huge figures, tables too wide for a phone.
  Stop the server afterwards.
- Re-read the page against your notes: no missing section, no fact absent from the PDF, page numbers right.

## 6. Tell the user

Which summary (path), its sections, the figures kept vs redrawn, the examined topics it highlights, anything in the
PDF that was unclear or seemed wrong, and that it's in the lesson's **Summary** tab (`bun run dev`; `bun run deploy`
publishes it). Don't paste the summary into the chat.
