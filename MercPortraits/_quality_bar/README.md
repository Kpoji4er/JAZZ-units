# Quality bar

| File | Meaning |
| --- | --- |
| `Highball_ideal_Big.png` | **STYLE LEVEL only** — color grade, exposure, proportions, surface cleanliness (folds/noise). **Not** clothing / head / face / kit |
| `OK_ui_portrait_framing_Blood.png` | UI Portrait 300 — face fills frame (vanilla) |
| `OK_ui_portrait_framing_Ice.png` | UI Portrait framing alt |
| `REJECT_excess_folds_Laura_pants.png` | HARD reject — dense wrinkle noise on pants |
| `REJECT_wave_fabric_Grace.png` | HARD reject — clothing like sea waves / marble swirl |
| `REJECT_small_head_Lynx.png` | HARD reject — head too small vs shoulders/torso |
| `REJECT_detached_pocket_Spider.png` | HARD reject — pocket/pouch detached from jacket/belt |
| `OK_clean_folds_Laura_pants.png` | Target cleanliness for GPT denoise (few large folds) |
| `FIX_pants_folds_before_after_Laura.png` | Left reject → right OK |

## Highball = LEVEL, not identity (anti-bleed)

`Highball_ideal_Big.png` — канон **стиля/цветогаммы/пропорций** нашей генерации (текущий preferred ship Highball).

**Брать с эталона:** JA3 color grade, экспозиция/midtones, длина ног / head-to-shoulder, чистота ткани (мало крупных складок, без AI-шума), full-body framing.

**Не брать (HARD anti-bleed):** лицо, волосы, борода, одежда, стетоскоп, трость, сумка, поза-копипаст Highball. Чужой мерк сохраняет свой sheet/`_faces`/kit.

Не класть Highball full-body в `reference_image_paths` как style-ref для других Id — иначе bleed. Сверять LEVEL через `Read` кандидата рядом с баром; в промпте — текстовый grade/proportions, не визуальный Highball-kit.

**UI Portrait:** tight headshot like Blood — not waist-up. Skill: `frame-jazz-merc-ui-portrait`.  
**Denoise:** GPT GenerateImage (keep sharp). Not OpenCV bilateral.  
**Proportions QA:** legs length **and** head-to-shoulder vs Raven / Highball LEVEL — pinhead = reject (Lynx).  
**Kit integrity:** pockets/pouches must be sewn/attached — floating pocket = reject (Spider).  
**Face:** must match JA2/`_faces` этого мерка — else reject (не лицо Highball).  
**Wave-fabric:** same denoise path; cite Grace REJECT.

## Render QA (короткий проход — похожесть на References)

Сверять с `MercPortraits/References/` (+ `Portraits/` для bust) и Highball LEVEL. Порядок: thumbnail → full → 100% zoom.

1. **Refs match** — painterly JA3 midtones/экспозиция как Raven/Buns/MD; не фотореализм, не muddy crush, не plastic beauty.
2. **Свет** — один key; тени на лице/kit/ногах согласованы; catchlights в глазах с той же стороны.
3. **Глаза** — не «плывут»: чёткий iris/зрачок, симметрия, один взгляд; нет smear / melted lids / восковых глаз. Zoom 100% на лицо.
4. **Руки** — 5 пальцев, без сросшихся; хват ремня/кармана/prop правдоподобен.
5. **Голова-seat** — шея в воротнике/плечах, не rubber-stamp; уши/hairline целые.
6. **Kit contact** — ремни вдавливают ткань; кобура/карманы пришиты (не парят).
7. **Big ↔ Portrait** — одно лицо; thumbnail hire-icon узнаваем vs `_faces`.
8. **Cut** — чистая альфа, без `#504633` fringe / дырок в силуэте.

Reject при явном провале любого пункта (или ниже Highball LEVEL / refs по гаме-пропорциям).

## Regen budget (JAZZ ≈ industry)

| Слой | Бюджет |
| --- | --- |
| First pass | **2–4** variants → pick best |
| Batch QA | **1** sequential pass (reject → regen → re-QA) |
| ~80% ok | **edit/denoise 1–3** first — not full reroll |
| Full regen | **+1–2** after pick (usually **≤4–5** total / Id) |
| Soft cap | **~g5** — change strategy (refs/prompt/pose) |
| Hard stop | **~g7** — KEEP / post / ask; **>g7** only if owner asks |

Oscillation or same prompt past g5 = upstream fail. Details: rule → Regen budget.
