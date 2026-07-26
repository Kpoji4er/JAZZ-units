# Правила пакета `jazz-units`

Этот файл — локальный overlay. Канонические правила комплекта находятся в `../jazz/AGENTS.md`; навигация — в `../jazz/.agents/docs/index.md`. При противоречии действует центральный контракт.

## Маршрутизация

- Изменение поведения, публичных ID, generated data, dependencies или межпакетных контрактов начинается со спецификации в `../jazz/docs/specs/active/` и проходит DoR.
- В спецификации указывать владельца `jazz-units` и затрагиваемые exclusive resources из `../jazz/docs/ownership/exclusive-resources.yaml`.
- Для общей работы использовать `../jazz/.agents/skills/work-on-jazz-mod/SKILL.md`.
- Для editor-generated данных использовать `../jazz/.agents/skills/sync-jazz-generated-data/SKILL.md`.
- Текущее реализованное состояние документировать в `../jazz/docs/technical/`; целевое — только в активной спецификации. `docs/wiki` сейчас не ведётся.

## Владение и ограничения

- Пакет владеет `UnitData`, AI archetypes, appearances, enemy squads, loot, именами и прогрессией юнитов.
- UnitData, squads и loot изменять через Mod Editor; companion Lua, `items.lua` и `metadata.lua` образуют одну транзакцию.
- Основные боевые функции AI принадлежат `jazz`; не копировать их сюда без спецификации порядка загрузки.
- Перед переименованием UnitData, portrait или image проверять ссылки из `jazz-maps` и `jazz`.
- Для состояния игры использовать детерминированный RNG движка.
- Проверять spawn каждой фракции, appearance, снаряжение, loot, роль AI и рост характеристик; фиксировать runtime evidence или явно отмечать статическую проверку.