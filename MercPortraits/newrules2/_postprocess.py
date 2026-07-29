# -*- coding: utf-8 -*-
"""Postprocess into merc-folder layout: <Id>/<Id>_<variant>_Big.png + bust."""
import subprocess
import sys
from pathlib import Path

from PIL import Image

REMBG = Path(r"C:\Users\SsAnd\AppData\Local\Programs\Python\Python312\Scripts\rembg.exe")
ROOT = Path(__file__).resolve().parent


def bust_crop(src: Path, dst: Path, size: int = 300) -> None:
    im = Image.open(src).convert("RGBA")
    w, h = im.size
    alpha = im.split()[-1]
    bbox = alpha.getbbox()
    if not bbox:
        im.resize((size, size), Image.Resampling.LANCZOS).save(dst)
        return
    x0, y0, x1, y1 = bbox
    bw, bh = x1 - x0, y1 - y0
    bust_h = int(bh * 0.42)
    side = max(bust_h, int(bw * 0.85))
    cx = (x0 + x1) // 2
    top = max(0, y0 - int(side * 0.04))
    left = max(0, min(w - side, cx - side // 2))
    if top + side > h:
        top = max(0, h - side)
    crop = im.crop((left, top, left + side, top + side))
    crop.resize((size, size), Image.Resampling.LANCZOS).save(dst)


def process(merc_id: str, variant: str, raw_path: Path) -> None:
    mdir = ROOT / merc_id
    mdir.mkdir(parents=True, exist_ok=True)
    neural = mdir / "_neural" / f"{merc_id}_{variant}_Big_neural.png"
    neural.parent.mkdir(parents=True, exist_ok=True)
    subprocess.check_call(
        [str(REMBG), "i", "-m", "birefnet-general", str(raw_path), str(neural)]
    )
    big = Image.open(neural).convert("RGBA").resize((2000, 2000), Image.Resampling.LANCZOS)
    big_path = mdir / f"{merc_id}_{variant}_Big.png"
    big.save(big_path)
    bust_crop(neural, mdir / f"{merc_id}_{variant}.png", 300)
    print(f"OK {merc_id}/{variant}")


if __name__ == "__main__":
    # args: merc_id variant raw_path
    process(sys.argv[1], sys.argv[2], Path(sys.argv[3]))
