---
title: 'Розв''язання: Структура модуля'
translations_gpt:
---

{% include menu.html %}

Ось один із можливих розв'язків.

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

## Коментарі

1. `META6.json` лежить нагорі. Вихідний код модуля йде під `lib/`. Його шлях каталогів відповідає частинам імені між `::`.

1. Тести лежать під `t/`. З такою структурою `zef test .` і `zef install .` працюють у верхньому каталозі.

{% include nav.html %}
