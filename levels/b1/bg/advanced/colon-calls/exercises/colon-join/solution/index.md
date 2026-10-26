---
title: 'Solution: Join с двоеточие'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

## Код

```raku
say <a b c>.reverse.join: '-';
```

🦋 Можете да намерите изходния код във файла [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Изход

```
c-b-a
```

## Коментари

1. `.reverse` е в средата на веригата, затова запазва обичайната си форма. `join` идва последен, затова може да използва двоеточието. Той подава `'-'` точно по същия начин като `join('-')`.

1. Обърнатият списък, `c, b, a`, след това се обединява с тирета, което дава `c-b-a`. Формата с двоеточие работи с обикновени стойности, не само с блокове.

{% include nav.html %}
