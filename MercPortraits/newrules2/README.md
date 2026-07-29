# newrules2 — полный regen JA1/JA2 mercs

Источник sheet (локально): `jazz/docs/design/mercs-ja12/_appearance-sheet.md`  
Google: https://docs.google.com/spreadsheets/d/1h6Q_NXa3M1W8nQ59KQAJZIn58SNbDcR7_6IvdfpPuLY/edit?gid=0

Хромакей: `#504633`. Cut: rembg BiRefNet. Portrait 300 + Big 2000.  
**Пропорции:** ~7.5–8 голов; ноги ≈½ роста; короткие ноги = reject.  
**Складки:** HARD reject → **GPT GenerateImage denoise** ×2–3 (не OpenCV).

## Структура (по меркам)

```text
newrules2/<Id>/
  <Id>_appearance.png | <Id>_appearance_Big.png
  <Id>_appearance_backstory.png | <Id>_appearance_backstory_Big.png
  <Id>_appearance_backstory_bio.png | <Id>_appearance_backstory_bio_Big.png
  <Id>_bio.png | <Id>_bio_Big.png
  <Id>_bio_backstory.png | <Id>_bio_backstory_Big.png
```

| Суффикс | Поля sheet |
| --- | --- |
| `_appearance` | APPEARANCE |
| `_appearance_backstory` | APPEARANCE + BACKSTORY/LOOK |
| `_appearance_backstory_bio` | APPEARANCE + BACKSTORY/LOOK + BIO JA2 |
| `_bio` | BIO JA2 |
| `_bio_backstory` | BIO JA2 + BACKSTORY/LOOK |

Мерков в queue: **46** (папок). Пропущено: Igor, Biff — см. QUEUE.json.
