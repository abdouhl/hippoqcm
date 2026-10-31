---
name: exercises
description: Turn a TD (travaux dirigés / exercise set) PDF of a module into an exercises page in the app — every exercise transcribed, with a hint and a worked step-by-step solution that uses only the laws and formulas taught in that module's lessons (each one linked to its lesson PDF page), numbers computed and checked. Shown under "Exercises" on the module page. Use when the user gives a TD / série / set / exercise PDF (or a Drive TD file), asks to solve or add exercises, or runs /exercises.
argument-hint: <td.pdf | td.docx | Drive TD name> [module]
---

# /exercises — TD sheet → worked exercises page

The user is a first-year medical student (Annaba). TDs are the module's exercise sheets (Biophysics, Chemistry,
Biochemistry, Biostatistics…), posted in the Drive folder (`1iS8w65Fcoi09LImHrLqWTva6R5n4QvuV`, under
`Annual modules/<Module>/<semester>/TDs/`). They want each exercise solved **the way their course solves it**:
with the laws, formulas, units and conventions of the module's lessons — not a textbook's. Everything runs from the
project root `/Users/abdou/Developer/hippoqcm`.

## Files

- Page: `public/exercises/s<N>/<module-slug>/set-<n>.html` (`set-<n>` from the sheet's number: "Série 2", "Set 2",
  "TD N°2" → `set-2`; a sheet without a number → kebab-case of its title).
- Original sheet: `public/exercises/s<N>/<module-slug>/set-<n>.pdf` (the page's "TD sheet" tab; a `.docx` sheet is
  converted to PDF, see step 1). Figures: `public/exercises/s<N>/<module-slug>/set-<n>/<name>.jpg`, referenced relatively.
- Style: `public/summaries/summary.css` (shared with summaries; its "Exercise (TD) pages" section has the classes below).
- `bun scripts/exercises.ts index` rebuilds `public/exercises/index.json`; the module page lists the sets in it.
  Run it after every new or edited page. The page's `<title>` is the name shown in the app, and its
  `<meta name="lessons">` the lessons it uses.
- `bun scripts/exercises.ts laws s<N> <module-slug>` prints every formula of the module's lesson summaries with
  its section and lesson-PDF page, and lists the lessons that have no summary yet.
- Module slugs are the folder names under `public/lessons/s<N>/` (kebab-case of the app's module name).

## 1. Get the sheet

- A local path → use it. A Drive name or link → find its id in `scripts/admin/drive-seen.json` (`path` field) and
  download `https://drive.google.com/uc?export=download&id=<id>` into a new empty folder in the scratchpad.
  When the same set exists in English and French, use the **English** one and keep the French one only to
  resolve unclear wording.
- PDF tool: if `scripts/bin/pdf-tool` is missing, build it once:
  `mkdir -p scripts/bin && swiftc -O scripts/pdf-tool.swift -o scripts/bin/pdf-tool`.
  `pdf-tool info`, `pdf-tool text` when there's a text layer, and **always** render every page
  (`pdf-tool render <pdf> <page> <scratchpad>/t<page>.png 110`) and Read it: exponents, units, fractions, Greek
  letters, tables and figures are often lost or garbled in the text layer.
- `.docx`: `textutil -convert txt` for the text, `unzip -o <docx> 'word/media/*' -d <scratchpad>/docx` for its
  images, and make the PDF copy with `textutil -convert html` + headless Chrome `--print-to-pdf` (check it renders).
- Module: from the argument, the Drive path (`Annual modules/Biophysics …` → Biophysics) or the content. Semester S1
  unless the path says otherwise.
- Copy the sheet to `public/exercises/s<N>/<module-slug>/set-<n>.pdf` (over ~24 MB:
  `pdf-tool shrink <in> <out> 110 0.6`). Never modify the user's original.

## 2. Gather the module's laws

The solutions may only use what the module's lessons teach. Build a law sheet before solving anything:
- `bun scripts/exercises.ts laws s<N> <module-slug>` — a starting index, not the source of truth: open the lesson
  PDF page of each law you will use (`pdf-tool render` + Read) and check the formula, the **units the course uses**
  (osmol/L vs osmol/kg, °C vs K, Pa vs atm vs mmHg, L vs m³), the constants it gives (R, K_cr, …), validity
  conditions (dilute, ideal, Debye–Hückel range…) and sign conventions (ΔT < 0, flux direction).
- Lessons without a summary: read their PDF for the laws (they're in `public/lessons/s<N>/<module-slug>/`).
- Also look at how the lessons' own worked examples solve things ("Exercise 1" inside a lesson is the best
  model of the expected method) and copy that method and rounding style.
- Keep for each law: name, formula, variables + units, lesson title, PDF path and physical page (`#page=N`).

## 3. Solve every exercise

For each exercise and each sub-question:
1. **Transcribe** the statement faithfully in English (fix OCR/typos, keep every number and unit; translate a French
   sheet). Keep its numbering (1., a), b)…). List the **given data** and what's asked.
2. **Pick the law(s)** from the law sheet. If a question needs something no lesson of the module teaches
   (a lesson not added yet, or outside the course), still solve it, but name the law in a `.unsure` note
   ("not in your lessons yet — from <where>") and tell the user. Never pass outside knowledge off as the course's.
3. **Compute with code, never in your head**: write the calculation in a scratchpad script
   (`python3 -I <scratchpad>/ex<k>.py`) with units converted explicitly, print every intermediate value, and
   copy those values into the page. Round only at the end, to the precision of the data (usually 2–3 significant
   figures), the way the lesson's examples do.
4. **Check** each result: units (dimensional analysis), order of magnitude and sign (plasma ≈ 0.3 osmol/L,
   ΔT_cr of blood ≈ −0.56 °C, 0 ≤ α ≤ 1, 0 ≤ σ ≤ 1, pH 0–14, probabilities 0–1…), consistency between sub-questions,
   and the sheet's own answers if it gives any (if yours differ, recheck; if the sheet looks wrong, show both and
   explain in a `.unsure` note).
5. Note the **classic mistakes** this exercise invites (forgetting β for an electrolyte, °C instead of K in RT, L instead
   of m³, mmol vs mol, wrong sign of ΔT…) — they go in the exercise's trap box.

If an exercise is ambiguous (missing data, unclear wording), state the assumption you made in a `.unsure` note.

## 4. Write the page

English, first-year level. Skeleton:

```html
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Set 2 — Colligative properties</title>
<meta name="lessons" content="s1/biophysics/biophysics-of-solutions-3.pdf s1/biophysics/biophysics-of-solutions-4.pdf">
<link rel="stylesheet" href="/summaries/summary.css">
<base target="_blank">
</head>
<body>
<main>
<div class="kicker">S1 · Biophysics · Exercises</div>
<h1>Set 2 — Colligative properties</h1>
<p class="meta">TD 2026-2027 · 6 exercises · solved with the lessons <a href="/lessons/…pdf">Biophysics of solutions 3</a>, … ·
  <a href="/exercises/s1/biophysics/set-2.pdf">TD sheet</a></p>
<ul class="toc"><li><a target="_self" href="#laws">Laws used</a></li><li><a target="_self" href="#ex1">Ex. 1</a></li>…</ul>

<div class="box essentials" id="laws"><span class="label">Laws used in this set</span>
  <div class="law"><span class="label">Osmolarity</span> <a class="page" href="/lessons/…pdf#page=1">Solutions 3 · p. 1</a>
    <div class="formula">ω = [1 + α(β − 1)] · C<span class="where">ω osmol/L · C mol/L · β ions per molecule</span></div></div>
  …
</div>

<section class="exercise" id="ex1">
  <h2><span class="num">Exercise 1</span> — Osmolarity of a NaCl solution <a class="page" href="/exercises/…/set-2.pdf#page=1">sheet p. 1</a></h2>
  <div class="statement"><p>…the statement…</p><ol type="a"><li>…</li></ol></div>
  <ul class="given"><li>m = 5.85 g</li><li>V = 1 L</li><li>α = 1</li></ul>
  <details class="hint"><summary>Hint</summary><p>Which law, and what to find first — no numbers.</p></details>
  <details class="solution"><summary>Solution</summary>
    <h3>a) …</h3>
    <ol class="steps">
      <li><div class="law"><span class="label">Law</span> Osmolarity <a class="page" href="/lessons/…pdf#page=1">p. 1</a>
          <div class="formula">ω = [1 + α(β − 1)] · C</div></div>
        <p>NaCl → Na⁺ + Cl⁻, so β = 2; α = 1 (strong electrolyte).</p>
        <div class="calc">ω = [1 + 1 × (2 − 1)] × 0.1 = 0.2 osmol/L</div></li>
    </ol>
    <span class="answer">ω = 0.2 osmol/L</span>
    <div class="box trap"><span class="label">Trap</span> Forgetting β: ω = C only for non-electrolytes.</div>
  </details>
</section>
…
<footer>Exercises from the TD sheet …; solutions written with the module's lessons (📄 = lesson PDF page). Check
  them against your TD corrections.</footer>
</main>
</body>
</html>
```

Rules:
- Every solution step that applies a law has its `.law` block with the **lesson page link**
  (`/lessons/<pdf>#page=N`); the app opens those links in its PDF tab. Use the course's notation and variable names.
- Write the substitution with units in `.calc` (`π = ω R T = 300 × 8.314 × 310 = 7.73 × 10⁵ Pa`), one line per
  step; use `<sub>`, `<sup>`, Unicode (× · − √ Σ Δ α β γ π ω ≤ ≈ ⁻¹ ²) and `.frac` for fractions — no LaTeX, no
  external scripts (the page must work offline).
- One `.answer` per sub-question, with unit and the course's precision.
- The hint stays above and separate from the solution (both collapsed), so the student can try first.
- Figures of the sheet (diagrams, tables, graphs): crop like `/summary` does
  (`python3 scripts/summary/figure.py <hi.png> public/exercises/…/set-<n>/<name>.jpg L T R B --box-dpi=110 --dpi=150`,
  no `-I`) or redraw as inline SVG with the `summary.css` `s-*` classes; put them in the statement.
- A small SVG in the solution is welcome when it makes the setup clear (two compartments and a membrane, flux
  direction, a tree of probabilities).

## 5. Check it

- `bun scripts/exercises.ts index` (it warns when a `lessons` path doesn't exist).
- Screenshot it as `/summary` does: `python3 -m http.server 8811` from `public/` in the background, then
  `"/Applications/Google Chrome.app/Contents/MacOS/Google Chrome" --headless=new --hide-scrollbars --window-size=820,9000 --blink-settings=preferredColorScheme=1 --screenshot=<scratchpad>/e.png http://localhost:8811/exercises/<path>.html`
  — `<details>` are collapsed, so also screenshot a copy with every `<details` turned into `<details open` (put the
  copy in the scratchpad's served folder, not in `public/`), at 820 wide, light and dark. Slice tall
  screenshots into ~1800 px pieces with PIL and Read them. Headless Chrome won't go narrower than ~500 px, so check
  the phone layout by loading the page in a 390-px `<iframe>` of a scratch page and listing elements whose `scrollWidth >
  clientWidth` (`.calc` lines wrap on their own; formulas, tables and SVGs don't). Fix broken figures and links. Stop the server.
- Re-read every solution against your scripts' output: every number on the page must match it.

## 6. Tell the user

The page path, the exercises and their final answers in a short table, the laws used (and from which lessons),
anything solved with a law not in their lessons or with an assumption, any disagreement with the sheet's own answers,
and that it's under **Exercises** on the module page (`bun run dev`; `bun run deploy` publishes it).
Offer to fix any solution they find differs from their TD correction — then edit the page, rerun the scripts and the index.
