---
title: 'Solution: Machten van twee'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say (1, 2, 4 ... Inf).head(8);
```

🦋 De broncode van dit programma is te vinden in het bestand [powers-of-two.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/powers-of-two.raku).

## Uitvoer

```
(1 2 4 8 16 32 64 128)
```

## Opmerkingen

1. De drie startwaarden `1, 2, 4` groeien door vermenigvuldiging. Dus ziet `...` dat dit een meetkundige reeks is. Omdat het eindpunt `Inf` is, stopt hij nooit vanzelf.

1. `head(8)` neemt alleen de eerste acht waarden. Omdat de reeks lui is, worden de andere waarden nooit gemaakt. Dat is de enige reden waarom het veilig is om een oneindige reeks te schrijven.

{% include nav.html %}
