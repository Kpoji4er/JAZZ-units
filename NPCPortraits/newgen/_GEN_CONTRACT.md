# NPC newgen contract

## Output
- Only **one** full-body: `NPCPortraits/newgen/<Id>_Big.png` (2000×2000 RGBA)
- Raw before cut: `newgen/_raw/<Id>_Big.png`
- **No** 300 bust required

## Pipeline
1. GenerateImage 1:1 opaque on `#504633`
2. `reference_image_paths`: **existing** `NPCPortraits/<Id>_Big.png` first (style+identity lock), plus optional `MercPortraits/References/` for proportions
3. SETTING in prompt: hot African climate (Arulco) — heat-appropriate clothes; no winter gear unless style-ref shows it
4. Save to `_raw/` → rembg birefnet-general → resize 2000 → `newgen/<Id>_Big.png`
5. Sequential QA vs old NPC Big + Highball quality bar proportions → regen rejects once

## Role by Id prefix (NOT AIM mercenaries)
| Prefix | Role |
| --- | --- |
| `Rebels_` | повстанцы / irregular fighters |
| `Adonis_` | Adonis corporate/contract force |
| `Local_` | local civilians |

Preserve existing look hard — appearance presets already match current portraits. Do not restyle into AIM merc kit.

## Current queue
- Adonis_Alvarez
- Local_Man
- Local_Woman
- Rebels_Burda
- Rebels_Ghost

## Weapons / kit
Match the existing NPC portrait: keep signature kit (e.g. Alvarez rifle, Burda blue armband+bandolier, Ghost shemagh+binoculars, Locals civilian clothes). Combat NPC may keep weapons shown in style-ref.
