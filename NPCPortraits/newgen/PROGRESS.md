# NPC newgen progress

Pipeline: `#504633` → `_raw/` → rembg BiRefNet → 2000 Big only. Style-lock on existing `NPCPortraits/<Id>_Big.png`.

| Id | role (prefix) | status | notes |
| --- | --- | --- | --- |
| Adonis_Alvarez | Adonis | ok | style preserved; rifle + ADONIS patches |
| Local_Man | Local civilian | ok | civilian kit preserved |
| Local_Woman | Local civilian | ok | regen1: restored sandals |
| Rebels_Burda | повстанец | ok | regen1: short legs → full-length |
| Rebels_Ghost | повстанец | ok | shemagh + blue armband + binoculars |

QA pass: sequential Read vs old NPC Big + proportions. reject2: none.

UnitData still points at `NPCPortraits/<Id>_Big.png` (not `newgen/`) — swap paths when approving.
