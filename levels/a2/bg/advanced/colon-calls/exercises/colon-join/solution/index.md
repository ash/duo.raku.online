---
title: 'Solution: Join с двоеточие'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

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

1. `.reverse` е в средата на веригата. Затова той запазва обичайната си форма. `join` е последното извикване. Затова той може да използва двоеточието. Двоеточието му подава `'-'`, точно като `join('-')`.

1. След `.reverse` списъкът е `c, b, a`. После `join` слага тирета между думите. Резултатът е `c-b-a`. Формата с двоеточие работи и с обикновени стойности, не само с блокове.

{% include nav.html %}
