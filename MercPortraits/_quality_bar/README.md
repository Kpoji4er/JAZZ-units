# Quality bar

| File | Meaning |
| --- | --- |
| `Highball_ideal_Big.png` | Ideal LEVEL (proportions, pose, cleanliness) |
| `OK_ui_portrait_framing_Blood.png` | UI Portrait 300 — face fills frame (vanilla) |
| `OK_ui_portrait_framing_Ice.png` | UI Portrait framing alt |
| `REJECT_excess_folds_Laura_pants.png` | HARD reject — dense wrinkle noise on pants |
| `OK_clean_folds_Laura_pants.png` | Target cleanliness for GPT denoise (few large folds) |
| `FIX_pants_folds_before_after_Laura.png` | Left reject → right OK |

**UI Portrait:** tight headshot like Blood — not waist-up. Skill: `frame-jazz-merc-ui-portrait`.  
**Denoise:** GPT GenerateImage (keep sharp). Not OpenCV bilateral.
