---
title: 'Solution: Sorteren met een dubbele punt'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 De broncode is te vinden in het bestand [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Uitvoer

```
(fig pear kiwi apple)
```

## Opmerkingen

1. De dubbele punt geeft de sorteersleutel aan `sort`. Je hebt er geen haakjes omheen nodig.

1. `*.chars` is een Whatever-expressie. Die betekent “het aantal tekens van elk element”. `sort` gebruikt hem als sleutel. Dus komt het kortste woord eerst: `fig` (3). Dan komen `pear` en `kiwi` (4). Dan komt `apple` (5).

1. `pear` blijft voor `kiwi`. Beide woorden hebben dezelfde lengte. En `sort` is stabiel. Het houdt de oude volgorde van elementen met gelijke sleutels.

{% include nav.html %}
