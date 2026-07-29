# -*- coding: utf-8 -*-
"""NPC Big only: rembg + resize 2000."""
import subprocess
import sys
from pathlib import Path

from PIL import Image

REMBG = Path(r"C:\Users\SsAnd\AppData\Local\Programs\Python\Python312\Scripts\rembg.exe")
ROOT = Path(__file__).resolve().parent


def process(npc_id: str, raw_path: Path) -> None:
    neural = ROOT / "_neural" / f"{npc_id}_Big_neural.png"
    neural.parent.mkdir(parents=True, exist_ok=True)
    subprocess.check_call(
        [str(REMBG), "i", "-m", "birefnet-general", str(raw_path), str(neural)]
    )
    big = Image.open(neural).convert("RGBA").resize((2000, 2000), Image.Resampling.LANCZOS)
    out = ROOT / f"{npc_id}_Big.png"
    big.save(out)
    print(f"OK {out}")


if __name__ == "__main__":
    process(sys.argv[1], Path(sys.argv[2]))
