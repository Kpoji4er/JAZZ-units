# Правила пакета `jazz-units`

Локальный overlay. Канон комплекта: `../jazz/AGENTS.md`. Навигация: `../jazz/.agents/docs/index.md`. При противоречии действует центральный контракт.

## Владение

- Пакет владеет `UnitData`, AI archetypes, appearances, enemy squads, loot, именами и прогрессией юнитов.
- Основные боевые функции AI принадлежат `jazz`; не копировать их сюда без спецификации порядка загрузки.
- UnitData, squads и loot — через Mod Editor; companion Lua, `items.lua` и `metadata.lua` = одна транзакция.
- Перед переименованием UnitData, portrait или image проверять ссылки из `jazz-maps` и `jazz`.
- Exclusive resources — `../jazz/docs/ownership/exclusive-resources.yaml`.
- Для состояния игры — детерминированный RNG движка.
- Проверять spawn фракции, appearance, снаряжение, loot, роль AI и рост характеристик; evidence runtime или явно «static only».

## Когда что читать

Не открывать все skills. Только совпавшая строка:

| Задача | Открыть |
| --- | --- |
| Поведение, public ID, generated data, межпакетный контракт | spec в `../jazz/docs/specs/active/` + `$specify-jazz-change` |
| Несколько пакетов / ownership | `$work-on-jazz-mod` |
| Editor-generated / `items.lua` / `metadata.lua` | `$sync-jazz-generated-data` |
| Current-state реализации | `../jazz/docs/technical/` |
| Player-facing эффект (бой, роли, витрина) | `../jazz/.cursor/rules/jazz-docs-sync.mdc` + `$document-jazz-systems` |
