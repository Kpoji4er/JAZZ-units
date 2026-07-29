# Shared generation contract — newrules2

## Layout
```text
newrules2/<Id>/<Id>_<variant>.png          # 300 bust
newrules2/<Id>/<Id>_<variant>_Big.png      # 2000 full-body
newrules2/<Id>/_raw/<Id>_<variant>_Big.png # opaque before cut
```

Variants (filename suffix): `appearance` | `appearance_backstory` | `appearance_backstory_bio` | `bio` | `bio_backstory`

## Paths
- Face: `newrules2/_faces/<slug>.png`
- Style refs ONLY: `MercPortraits/References/` (+ `Portraits/`)
- Quality bar: `MercPortraits/_quality_bar/Highball_ideal_Big.png`
- Folds reject/ok: `_quality_bar/REJECT_excess_folds_Laura_pants.png` / `OK_clean_folds_Laura_pants.png`

## Hard rules
1. BG: solid `#504633`. Opaque gen → `_raw/` then rembg.
2. Holstered pistol OK; no gun in hands / rifles.
3. PMC/merc patches OK; no army rank.
4. Face recognizable from face_png; slightly more realistic JA3.
5. SETTING: hot African climate (Arulco) — heat-appropriate kit; no winter/arctic gear unless sheet says so.
6. PROPORTIONS: ~7.5–8 heads; legs ≈ half height; NO short legs / dwarf. Endomorph = wider, not shorter legs.
7. Interesting pose; Big framing head-to-boots.
8. Portrait: UI headshot via `bust_crop_tight` (head_frac≈**0.28**, Ice/Blood) — full head + shoulders; NOT waist-up, NOT extreme face crop. Skill: `frame-jazz-merc-ui-portrait`.
9. Excess fabric folds → **GPT GenerateImage denoise** 2–3 passes (refs: noisy Big + `OK_clean_folds_Laura_pants.png`; keep sharp). **Not** OpenCV bilateral. Regen if still bad.
10. `force_regen` overwrites that merc's variant files.

## Prompt snippets (every Big)
```
BACKGROUND: solid olive-brown chroma #504633 only.
SETTING: hot African climate (Arulco) — heat-appropriate merc kit (rolled sleeves, lighter fabrics, light sweat/dust OK); NO winter coats/parkas/arctic gear unless sheet requires.
PROPORTIONS: anatomically correct adult like JA3 Mercs refs (~7.5-8 heads tall) — crotch near mid-height, legs about half of body height, FULL-LENGTH natural legs; NO dwarf, NO short stubby legs.
POSE: interesting idle — ¾, weight on one leg, asymmetric arms; holstered pistol OK; NO gun in hands.
FACE: recognizable from JA2 face ref; NOT sticker; NOT beauty-filter.
COLOR GRADE / EXPOSURE / SURFACE: match Highball / OK_clean_folds_Laura_pants — only a few large folds; NO dense wrinkle grid.
FRAMING: full body head-to-toe; head/hair and feet/boots NOT cropped.
```

## DoD
Gen → rembg → sequential QA → GPT denoise folds if needed (2–3 passes) → regen rejects once.
