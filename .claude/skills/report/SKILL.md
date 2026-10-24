---
name: report
description: Write a practical-work (TP) report for the Annaba medical faculty — typed cover, text, schemas and figures — from a title, the teacher's guide and photos of slides, and print pieces of it onto the student's handwritten A4 sheets (the cover, figure N or chapter N's number and underline at x/y cm). Use when the user asks for a TP/practical session report, asks to print a figure, schema, chapter title or cover for their report, or runs /report.
argument-hint: <slug> | "<title>" [files…] | print <what> at <x> <y> | calibrate
---

# /report — practical-work reports, and printing them onto handwritten sheets

The user is a first-year medical student (Annaba). Teachers ask for TP reports **handwritten** on A4 with a
**printed cover**. The workflow: the student writes the text by hand, leaving room; then feeds each written
sheet back into the printer and asks you to print a figure, a schema or a chapter number + underline at a
precise spot. Everything runs from the project root `/Users/abdou/Developer/hippoqcm`.

- A report is `data/reports/<slug>/report.json` (format at the top of `scripts/report/render.ts`) with its
  `figures/` (what gets printed) and `sources/` (what the student gave: slide photos, the teacher's guide).
- Name, group and printer offset: `data/reports/settings.json` (`bun scripts/report.ts settings name=… group=… dx=… dy=…`).
- The admin panel (`bun run admin`, "Reports (TP)") creates requests, has a sheet builder with live preview,
  and its "Generate with Claude" button runs this skill headless as `/report <slug>`. In that mode there is no
  one to ask: make reasonable choices and say what you chose in the final message.
- CLI reference: the header of `scripts/report.ts`.

Pick the mode from the argument:
- an existing slug whose `request.status` isn't `ready`, or a new title/files → **Write a report**
- "print …", "imprime …", a figure/chapter/cover with coordinates → **Print onto a sheet**
- `calibrate` → **Calibrate the printer**

## Write a report

1. **Request.** For a slug, read `report.json` (`title`, `subtitle`, `module`, `academic_year`, `request.notes`,
   `request.sources`). From chat, create the folder yourself: slug = kebab-case of the topic, copy the user's
   files into `sources/` (never move or modify their originals), fill the same fields with
   `request.status: "generating"`. Default module and year: ask in chat if unknown; headless, use what's given.
2. **Read every source.** Photos/scans: Read each image. Word: `textutil -convert txt -stdout <file>`; its images
   with `unzip -o <docx> 'word/media/*' -d <scratchpad>/docx`. PDF: `scripts/bin/pdf-tool text|render`. A
   teacher's guide sets the rules (fonts, caption style, page numbers) — the renderer already follows the
   faculty's usual ones (Times New Roman 12/14, justified, 1.5 spacing, "Figure 01." under figures, table titles
   above, page numbers bottom right without the cover); if the guide asks for something else, change
   `scripts/report/render.ts` rather than working around it.
3. **Plan.** One chapter per step/part the slides teach, in the slides' order. Each chapter needs at least one
   figure; prefer a **schema you draw** for processes, sequences, set-ups and comparisons, and a **cropped photo**
   for real equipment or micrographs.
4. **Text** (`intro`, `chapters[].html`, `conclusion`): English, first-year level, faithful to the slides — every
   number, temperature and reagent from them. Add general knowledge only to connect or explain (e.g. naming the
   usual fixatives), never to contradict the course; mention what you added in the final message. HTML:
   `<p>`, `<ul><li>`, `<b>`. Tables: `<div class="tcap"><b>Table 01.</b> …</div><table>…</table>` (title above).
   Place figures with `{{fig:id}}`, or `{{fig:a|b}}` for two side by side. Numbers follow reading order, so
   refer to them in the text only after checking `bun scripts/report.ts figures <slug>`.
   Remember the student will **copy this by hand**: keep each chapter to what fits about half a page of
   handwriting (≈120–200 words) plus its figures.
5. **Schemas** → `figures/<id>.svg`: `viewBox` only (no width/height; size comes from `width_cm`),
   `font-family="Times New Roman"`, text ≥ 12 user units at the intended width, palette blue `#1f4e79`,
   red `#b3121b`, light fills (`#dbe7f3`, `#f7d9db`, `#fdf0d5`, `#e1f2df`, `#efdcf2`), tissue `#b5534e`,
   paraffin `#f3e9a9`. Everything must stay readable in black-and-white printing (labels, not colour alone).
   Keep labels inside the viewBox; nothing crossing another label.
6. **Photos** → `python3 scripts/report/crop.py <photo> figures/<id>.jpg left top right bottom` (pixel box;
   corrects the projector's blue cast; `--raw` for clean images). Find the box by rendering/reading the photo;
   leave out slide titles and text that the caption already says. Skip photos too blurry to read.
7. **Figures map**: `"figures": { "<id>": { "file": "figures/…", "caption": "…", "width_cm": … } }`.
   Widths: 16 cm full width, 7–8 cm for a pair, 4.5–6 cm for tall photos. Pick 4–5 `cover_images`
   (the first is shown tall); reuse figures or good images from the sources.
8. **Build and look**: `bun scripts/report.ts build <slug>`, then render pages
   (`scripts/bin/pdf-tool render data/reports/<slug>/report.pdf <page> <scratchpad>/p.png 70`) and Read them.
   Fix clipped labels, overflowing boxes, figures split awkwardly. Then set `request.status` to `"ready"`.
9. **Tell the user**: chapters, the figure list with sizes (`bun scripts/report.ts figures <slug>` — the
   "w × h cm" is the room to leave when writing), what you added beyond the slides, and that the cover and pieces
   are printed from the admin panel or by asking you. Copy the typed PDF to the Desktop only if they ask.

## Print onto a sheet

The student usually gives **only y** ("figure 5 at 12", "chapter 6 at 3", "the cover"). Map it to one command
(several items on the same sheet go in one command):

```
bun scripts/report.ts print <slug> cover
bun scripts/report.ts print <slug> fig 5 y=12 [nocap]
bun scripts/report.ts print <slug> chapter 6 y=3 [title="Deparaffinization and rehydration"]
bun scripts/report.ts print <slug> fig 5 x=11 y=4 w=8          # only when they give an x or a size
bun scripts/report.ts print <slug> text "…" x=… y=… [size=12]
```

Without x, a figure prints **exactly as in the typed report**: same width, in the text column, and together
with the figure sharing its row (asking for figure 3 prints 3 and 4 side by side when they're paired — say so).
A chapter prints its number box and an underline across the text column. Give an x only when the user does.

- Which report: the one they name, else the most recently created ready one (`bun scripts/report.ts list`).
  Figures can be named by number or by what they show — match against `bun scripts/report.ts figures <slug>`
  (it lists each figure's printed height "↕" and its row partner).
- y (and x) are cm from the paper's **top** (and **left**) edge to the item's top-left corner. Chapter = red
  number box + underline the student writes the title on (`title=` prints it too, only if they ask).
- The command prints the area each piece covers and the next free line ("next free line at y ≈ …") — tell
  the student where to resume writing. If it runs off the page or would cover their writing, suggest a
  smaller y or a figure placed with x/w.
- The cover is one A4 page; `print <slug> cover` writes it to `data/reports/<slug>/print/cover.pdf`. Copy it
  where they want it (e.g. the Desktop) if they ask to download it.
- It opens the PDF in Preview. Remind them, briefly: put the written sheet in the tray the same way as the
  calibration page, print at **100% / Actual size** (not "Fit to page"). There is no printer configured on this
  Mac, so never try `lp`; the user prints from Preview or the admin panel.
- If `settings.json` still has offset 0/0 and they haven't calibrated, suggest it once.

## Calibrate the printer

`bun scripts/report.ts calibrate` opens a sheet with crosses at known positions. The student prints it on blank
paper, measures the top-left cross from the left and top edges: offset X = measured − 2, offset Y = measured − 2
(cm). Save with `bun scripts/report.ts settings dx=… dy=…` (or in the admin panel). If crosses far apart are off
by different amounts, the print was scaled — print at 100%.
