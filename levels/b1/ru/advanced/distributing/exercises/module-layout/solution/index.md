---
title: 'Решение: Структура модуля'
translations_gpt:
---

{% include menu.html %}

Вот одно возможное решение.

## Структура

```
Greet-Simple/
├── META6.json
├── README.md
├── lib/
│   └── Greet/
│       └── Simple.rakumod
└── t/
    └── 01-basic.rakutest
```

## Комментарии

1. `META6.json` находится в корне. Исходный код модуля находится в `lib/`. Его путь из каталогов совпадает с частями имени между `::`.

1. Тесты находятся в `t/`. С такой структурой `zef test .` и `zef install .` работают в корневой директории.

{% include nav.html %}
