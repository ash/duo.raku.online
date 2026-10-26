---
title: 'Solution: Структура на модул'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Оформление

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

## Коментари

1. `META6.json` е най-отгоре. Изходният код на модула отива под `lib/`. Пътят на директорията му съответства на частите на името между `::`.

1. Тестовете са под `t/`. С това оформление `zef test .` и `zef install .` работят в горната директория.

{% include nav.html %}
