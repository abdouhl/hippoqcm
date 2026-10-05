---
name: lesson
description: Turn a completed lesson PDF into practice MCQs — links the module's past exam questions that the lesson covers, writes new exam-style questions weighted by how often each topic was examined, shows them for review, then adds the lesson (marked done, with its PDF) to the web app. Also fixes questions flagged from the study screen. Use when the user says they finished/completed/studied a lesson and gives a PDF, or runs /lesson.
argument-hint: <lesson.pdf> [module] | fix
---

# /lesson — lesson PDF → practice MCQs

The user is a first-year medical student (Annaba). They just finished studying a lesson and want to practice exactly it.
The app is English; lesson PDFs are English and mostly **scanned** (no text layer). Everything below runs from the
project root `/Users/abdou/Developer/hippoqcm`.

If the argument is `fix`, skip to **Fixing flagged questions**.

## 1. Set up and identify the lesson

- PDF tool (macOS PDFKit): if `scripts/bin/pdf-tool` is missing, build it once:
  `mkdir -p scripts/bin && swiftc -O scripts/pdf-tool.swift -o scripts/bin/pdf-tool`
  (never run it with `swift scripts/pdf-tool.swift` — that compiles on every call and takes minutes).
- `scripts/bin/pdf-tool info <pdf>` → page count, size, whether there is a text layer.
- **Module**: from the argument, else from the path (French folder names map: Anatomie→Anatomy, Biochimie→Biochemistry,
  Biophysique→Biophysics, Biostatistique→Biostatistics, Chimie→Chemistry, Cytologie→Cytology, Embryologie→Embryology,
  Physiologie→Physiology, Histologie→Histology, Informatique→Computer Science, SSH→Humanities & Social Sciences),
  else infer from the content. Ask only if truly ambiguous. Semester: S1 unless the module/path says S2.
- **Title**: short lesson title from the PDF's cover/heading (e.g. "Plasma membrane"). Slug = kebab-case of it.

## 2. Publish the PDF as a static asset

- Destination: `public/lessons/s<semester>/<module-slug>/<lesson-slug>.pdf` (e.g. `s1/cytology/plasma-membrane.pdf`);
  the draft's `pdf` field is that path without `public/lessons/`.
- Cloudflare static assets are capped at **25 MiB per file**. If the PDF is over ~24 MB:
  `scripts/bin/pdf-tool shrink <in> <out> 110 0.6` (re-rasterizes pages as JPEG; lower dpi/quality if still too big,
  but check a rendered page stays legible). Otherwise copy it as-is. Never modify the user's original file.

## 3. Read the whole lesson

- Scanned PDFs: read every page with the Read tool (`pages: "1-20"`, then `"21-40"`, … — max 20 per call).
  Text-layer PDFs: `scripts/bin/pdf-tool text <pdf>` is cheaper; still look at pages that hold figures/tables.
- Build a working outline (keep it in your head or the scratchpad, not the repo): for each section → the **physical
  page number** (1-based index in the file, which is what `#page=N` links use — not the printed page number), the key
  facts, numbers, classifications, mechanisms, and comparisons.

## 4. Link the past exam questions this lesson covers

- `bun scripts/lesson.ts exams <semester> <Module> > <scratchpad>/exams.txt` and read it. Keys look like
  `EMD1 2024-2025 Q3`; `→ ?` means no official key.
- Link a question only if **this lesson teaches what's needed to answer it**. Be strict: same chapter-ish topic isn't
  enough. A question can belong to several lessons — link it even if another lesson already has it.
- Tally which lesson topics were examined and in how many different years. This is the "exam weight" for step 5.

## 5. Write the new questions

**How many** (your call within this): roughly one per content-dense page, typically **15–30**, hard cap 40.
Distribute by exam weight:
- Topic examined in ≥2 years → 2–4 new questions, each attacking the fact from a different angle
  (definition ↔ example, cause ↔ effect, compare/contrast, number/value, clinical or experimental scenario).
- Examined once → 1–2. Never examined but central to the lesson → 1. Pure trivia (history, names of discoverers,
  slide decorations) → 0 unless the module's exams actually ask that kind of thing.
- Don't duplicate a linked exam question; test the same knowledge differently instead.

**Style** — match this module's real exams (look at `exams.txt`):
- Same option count as the module's exams (usually 4, A–D; 5 if that module uses A–E), multiple-answer,
  all-or-nothing. Vary the number of correct answers (1 to all) — don't let a pattern form.
- Mirror the stem style the module uses (e.g. Cytology 2025-2026 uses lab/clinical scenarios; others are
  "About X:" statement lists).
- Distractors come from the same lesson: swapped values, the wrong organelle/structure, inverted direction
  (increases/decreases, inside/outside), a true statement about a neighbouring concept. No "all of the above",
  no joke options, no double negatives.
- Every correct answer and every distractor must be decidable **from the PDF alone**. If the lesson is vague or
  you'd need outside knowledge to justify the key, drop the question. Never contradict an official exam key;
  if the lesson seems to, mention it to the user.
- `explanation`: 1–3 sentences — the fact from the lesson, and why the tempting distractor is wrong.
- `page`: physical page where the answer is taught.
- Figures (optional, only when a diagram/table question is genuinely high-yield): render with
  `scripts/bin/pdf-tool render <pdf> <page> <scratchpad>/p.png 200`, crop with Python PIL, save to
  `public/images/s<semester>/lessons/<lesson-slug>-g<N>.png`, set `"image": "s1/lessons/<lesson-slug>-g<N>.png"`.
  Crop out any labels that give the answer away.

## 6. Draft and review — nothing is imported before the user approves

- Write `data/lessons/s<semester>-<module-slug>-<lesson-slug>.json` (format documented at the top of
  `scripts/lesson.ts`).
- `bun scripts/lesson.ts review <draft>` validates it and prints the review. Bash output isn't reliably visible to the
  user, so **paste the full review into your reply**, followed by a short summary: which exam topics drove the weighting,
  anything you skipped or found contradictory.
- Ask for approval: they can say "ok", or e.g. "drop G4 G9", "G12 answer is BC", "more on transport", "unlink EMD1 2023-2024 Q5".
  Apply edits to the draft and show only what changed. Repeat until approved.

## 7. Import

- Next migration number: highest `NNNN` in `migrations/` + 1.
- `bun scripts/lesson.ts migrate <draft> migrations/NNNN_lesson_s<semester>_<module-slug>_<lesson-slug>.sql`
- Apply locally: `bunx wrangler d1 migrations apply DB --local` (it can take a minute or two — run in background if needed).
- Re-running for an existing lesson title appends questions to that lesson (the lesson row is `INSERT OR IGNORE`).
- Tell the user: lesson added as ✓ done under the module, N exam + M generated questions, open it from the module page
  (`bun run dev`); `bun run deploy` pushes the PDF and migration live.

## Fixing flagged questions (`/lesson fix`)

- `bunx wrangler d1 execute DB --local --command "SELECT q.id, q.source, q.stem, q.pdf_page FROM questions q WHERE flagged = 1"`
  plus their options.
- For each, re-check against the lesson PDF page (generated) or the exam source (exam), and propose a fix or deletion.
- After the user agrees, write a new migration with `UPDATE options …`/`UPDATE questions … SET flagged = 0` or
  `DELETE FROM questions WHERE id = …`, also update the matching draft/bank JSON in `data/` so it stays the source of
  truth, and apply locally.
