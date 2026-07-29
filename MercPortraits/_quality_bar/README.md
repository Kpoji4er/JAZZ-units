# Quality bar

| File | Meaning |
| --- | --- |
| `Highball_ideal_Big.png` | Ideal LEVEL (proportions, pose, cleanliness) |
| `REJECT_excess_folds_Laura_pants.png` | HARD reject — dense wrinkle noise on pants |
| `OK_clean_folds_Laura_pants.png` | Target cleanliness for GPT denoise (few large folds) |
| `FIX_pants_folds_before_after_Laura.png` | Left reject → right OK |

**Denoise method:** GPT GenerateImage (keep sharp; strip micro-wrinkles). Do **not** use OpenCV bilateral (mushy).
