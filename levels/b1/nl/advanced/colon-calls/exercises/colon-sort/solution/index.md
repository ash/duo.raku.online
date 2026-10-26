---
title: 'Solution: Sorteren met een dubbele punt'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De dubbele punt geeft de sorteersleutel door aan `sort`. Er zijn geen haakjes omheen nodig.

1. `*.chars` is een Whatever-expressie die “het aantal tekens van elk element” betekent. `sort` gebruikt hem als sleutel, dus de kortste woorden komen eerst. Eerst komt `fig` (3), dan `pear` en `kiwi` (4), en dan `apple` (5).

1. `pear` blijft voor `kiwi` omdat beide woorden dezelfde lengte hebben. Ook is `sort` stabiel, wat betekent dat het de oorspronkelijke volgorde van gelijke sleutels houdt.

{% include nav.html %}
