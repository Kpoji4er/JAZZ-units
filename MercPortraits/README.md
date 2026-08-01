# MercPortraits

## Ship (игра)
`MercPortraits/<Id>.png` (300) + `<Id>_Big.png` (2000) — пути UnitData `Portrait` / `BigPortrait`.

## Локальные рабочие слои (не в git)
| Путь | Назначение |
| --- | --- |
| `References/` | Style-рефы JA3 (локально, в `.gitignore`) |
| `style-ja3-match/` | WIP-генерация / голосование — только локально |
| `newrules2/` | Legacy sheet-варианты — только локально |
| `_quality_bar/` | STYLE LEVEL (Highball гама/пропорции) + folds OK/REJECT |

`_raw/` / `_neural/` / `*.zip` — промежуточные, в `.gitignore`.

В репозитории держать только ship PNG + `_quality_bar/`. Не коммитить regen-батчи.
