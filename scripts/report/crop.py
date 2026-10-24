"""Crop a figure out of a photo for a report, correcting the projector's colour cast.

Photos of a projected slide come out washed out and blue-tinted. Each channel is scaled so the
brightest 2% of pixels (the projector's white) becomes white, then contrast is stretched slightly.

  python3 scripts/report/crop.py <photo> <out.jpg> <left> <top> <right> <bottom> [--raw]

Coordinates are pixels in the photo. --raw crops without colour correction (screenshots, scans).
"""
import sys

from PIL import Image, ImageEnhance, ImageOps


def white_balance(im):
    channels = []
    for c in im.split():
        hist, total, acc, hi = c.histogram(), im.width * im.height, 0, 255
        for v in range(255, -1, -1):
            acc += hist[v]
            if acc > total * 0.02:
                hi = v
                break
        channels.append(c.point(lambda x, hi=hi: min(255, int(x * 255 / max(hi, 1)))))
    im = ImageOps.autocontrast(Image.merge("RGB", channels), cutoff=0.5)
    return ImageEnhance.Contrast(im).enhance(1.1)


def main():
    args = [a for a in sys.argv[1:] if a != "--raw"]
    if len(args) != 6:
        sys.exit(__doc__)
    src, out, *box = args
    im = Image.open(src).convert("RGB").crop(tuple(int(float(v)) for v in box))
    if "--raw" not in sys.argv:
        im = white_balance(im)
    im.save(out, quality=90)
    print(f"wrote {out} ({im.width}×{im.height})")


if __name__ == "__main__":
    main()
