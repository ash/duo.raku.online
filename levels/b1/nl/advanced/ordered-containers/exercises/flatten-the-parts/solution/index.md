---
title: 'Solution: De delen afvlakken'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing voor de opgave.

## Code

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Je kunt de broncode vinden in het bestand [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Uitvoer

```
[1 2 3 4 5]
5
```

## Opmerkingen

1. Als je `my @all = @first, @second` schrijft, krijg je _geen_ plat array. In plaats daarvan krijg je een genest array van twee arrays, `[[1 2] [3 4 5]]`.

1. De `flat` routine voegt de elementen van beide arrays samen tot één platte reeks. Deze reeks wordt dan opgeslagen in `@all`. Het resultaat heeft vijf elementen.

{% include nav.html %}
