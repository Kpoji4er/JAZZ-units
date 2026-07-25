# JAZZ Units

> Пакет юнитов, отрядов и прогрессии JAZZ. Самостоятельная игра не поддерживается.

`jazz-units` поставляет персонажей и боевые составы для [JAZZ — Tactical Overhaul](../jazz/README.md): UnitData, appearances, AI-архетипы, отряды, снаряжение, loot и progression data.

| Свойство | Значение |
| --- | --- |
| Mod ID | `Dv3mFVN` |
| Автор metadata | `Doctor_Leevsy` |
| Роль | UnitData, противники, отряды и прогрессия |
| Самостоятельная установка | Не поддерживается |

## Что находится в пакете

- переработанные UnitData и роли противников разных фракций;
- appearances, портреты, имена и voice-related definitions;
- AI archetypes, keywords и привязка ролей;
- enemy squads, наборы снаряжения и таблицы loot;
- опыт, рост характеристик и уровни прогрессии;
- данные наёмников и других персонажей, используемые core и maps.

Составы и экипировка противников меняются вместе с прогрессией кампании. Один UnitData может одновременно зависеть от предметов core, Entity assets и размещения или квестов maps.

## Граница ответственности

Пакет определяет юнитов и поставляет данные для AI, но основные боевые формулы, scoring действий и runtime-логика awareness находятся преимущественно в `jazz`. Карты и секторные сценарии принадлежат `jazz-maps`, визуальные Entity — `jazz_assets`.

## Зависимости и установка

Для поддерживаемой конфигурации нужны последняя опубликованная [`JA3_CommonLib`](https://gitlab.com/injto4ka/ja3_commonlib) и все четыре пакета JAZZ. `jazz-maps` содержит прямые ссылки на часть units-ресурсов, поэтому изменение UnitData, portrait, image или class ID требует поиска по всему комплекту.

## Разработка

UnitData, squads, loot и значительная часть definitions генерируются Mod Editor. Любое изменение editor-owned объекта проверяется как единая транзакция:

- запись ModItem в `items.lua`;
- generated companion `UnitData/*.lua` или другой профильный файл;
- регистрация и порядок в `metadata.lua`.

Нельзя устойчиво изменить только одну копию: следующее сохранение редактора способно перезаписать рассинхронизированный слой. После изменения проверяйте spawn, appearance, экипировку, loot, AI role, death/despawn, save/load и рост характеристик.

## Документация

- [Общее описание JAZZ](../jazz/README.md)
- [Гайд по установке](../jazz/docs/wiki/getting-started.md)
- [Наёмники и прогрессия](../jazz/docs/wiki/mercenaries-and-progression.md)
- [Юниты, прогрессия и специализации](../jazz/docs/technical/systems/units-progression-specializations.md)
- [Правила работы](AGENTS.md)
