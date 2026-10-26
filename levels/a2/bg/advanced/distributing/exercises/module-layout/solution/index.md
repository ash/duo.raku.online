---
title: 'Solution: Структура на модул'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `META6.json` е най-отгоре. Изходният код на модула отива под `lib/`. Пътят на директорията му отговаря на частите на името. В името `::` разделя тези части.

1. Тестовете са в `t/`. Използвайте това оформление. Тогава `zef test .` и `zef install .` работят в горната директория.

{% include nav.html %}
