---
title: 'Solution: De delen afvlakken'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De code `my @all = @first, @second` geeft _geen_ plat array. Die maakt een genest array van twee arrays: `[[1 2] [3 4 5]]`.

1. De `flat` routine zet de elementen van beide arrays bij elkaar. Die maakt één platte reeks. Het programma bewaart deze reeks in `@all`. Het resultaat heeft vijf elementen.

{% include nav.html %}
