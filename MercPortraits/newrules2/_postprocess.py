# -*- coding: utf-8 -*-
"""Postprocess into merc-folder layout: <Id>/<Id>_<variant>_Big.png + tight UI bust."""
import subprocess
import sys
from pathlib import Path

from PIL import Image

REMBG = Path(r"C:\Users\SsAnd\AppData\Local\Programs\Python\Python312\Scripts\rembg.exe")
ROOT = Path(__file__).resolve().parent
SKILL_CROP = Path(
    r"C:\Users\SsAnd\AppData\Roaming\Jagged Alliance 3\Mods\jazz"
    r"\.agents\skills\create-jazz-merc-portraits\scripts\bust_crop_tight.py"
)
sys.path.insert(0, str(SKILL_CROP.parent))
from bust_crop_tight import bust_crop_tight  # noqa: E402


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
    bust_crop_tight(neural, mdir / f"{merc_id}_{variant}.png", size=300, head_frac=0.28)
    print(f"OK {merc_id}/{variant}")


if __name__ == "__main__":
    process(sys.argv[1], sys.argv[2], Path(sys.argv[3]))
