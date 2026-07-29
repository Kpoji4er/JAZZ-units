# MercPortraits

## Ship (игра)
`MercPortraits/<Id>.png` (300) + `<Id>_Big.png` (2000) — пути UnitData `Portrait` / `BigPortrait`.

## Рабочие слои
| Путь | Назначение |
| --- | --- |
| `References/` | Style-рефы JA3 (локально, в `.gitignore`) |
| `_quality_bar/` | Эталон качества + folds OK/REJECT |
| `newrules2/<Id>/` | 5 sheet-вариантов (`_appearance` … `_bio_backstory`) |
| `newrules2/_faces/` | Face identity PNG |
| `newrules2/_VOTE_WINNERS.json` | Карта победителей голосования |

`_raw/` / `_neural/` — промежуточные, в `.gitignore`.

Не класть сюда legacy `wip-regen` / `_wip`.
