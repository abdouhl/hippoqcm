"""Crop a lesson PDF page into a summary figure.

usage: python3 scripts/summary/figure.py <page.png> <out.jpg> <left> <top> <right> <bottom> [--dpi-of-box N --dpi N]

The box is in pixels of <page.png>. Pass --box-dpi when you measured the box on a render at a
different dpi than <page.png> (e.g. measured on an 80 dpi preview, cropping a 150 dpi render).
Output is a JPEG at most 1400 px wide, quality 85, white background.
"""
import sys
from PIL import Image

args = [a for a in sys.argv[1:] if not a.startswith("--")]
opts = dict(a[2:].split("=", 1) for a in sys.argv[1:] if a.startswith("--"))
src, out, *box = args
img = Image.open(src).convert("RGB")
scale = 1.0
if "box-dpi" in opts and "dpi" in opts:
    scale = float(opts["dpi"]) / float(opts["box-dpi"])
l, t, r, b = (round(float(v) * scale) for v in box)
crop = img.crop((l, t, min(r, img.width), min(b, img.height)))
if crop.width > 1400:
    crop = crop.resize((1400, round(crop.height * 1400 / crop.width)), Image.LANCZOS)
crop.save(out, "JPEG", quality=85, optimize=True)
print(f"wrote {out} {crop.width}x{crop.height}")
