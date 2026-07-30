# Style JA3 match regen (2026-07-30)

Перерисовка ship Big-портретов под closer match к vanilla `MercPortraits/References/` (кожа / color grade / экспозиция), с сохранением identity+kit.

Ship `MercPortraits/<Id>.png` **не трогали**.

## Где смотреть

| Папка | Содержимое |
| --- | --- |
| `style-ja3-match/` | Все поколения: `<Id>_Big_gN.png` (N=1…5) |
| `_raw/` | Локальные дубликаты root (в git не коммитим) |
| `_pick/` | Текущий выбор = **максимальный** gN на мерка |
| `_pick_cut/` | rembg BiRefNet RGBA с `_pick` |
| `_progress/coverage.txt` | список gens + pick |
| `_progress/accepted.json` | machine-readable pick |

## Как читается

- `g1` = первый прогон style-lock (ship Big + JA3 ref + face PNG)
- `g2+` = regen с усиленным SKIN (fair → pale pink-peach как Raven; dark → Ice/Magic; olive → Fidel/MD)
- Поколения **не затираются** — лежат рядом

## Статус

- **46/46** мерков имеют ≥2 поколения
- Часть доведена до **g5** (лимит)
- Cut прогнан по актуальным `_pick`

## Дальше (по запросу)

1. Твой vote: какой gN лучше → переложим в `_pick` / ship
2. UI bust 300 из выбранного Big (`bust_crop_tight`)
3. Продвижение в `MercPortraits/<Id>_Big.png` только после явного OK
