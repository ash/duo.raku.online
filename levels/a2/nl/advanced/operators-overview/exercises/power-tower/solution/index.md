---
title: 'Solution: Machtstoren'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
say 2 ** 2 ** 3;
```

🦋 Je kunt de broncode vinden in het bestand [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Uitvoer

```
256
```

## Opmerkingen

1. `**` is rechts-associatief. Raku groepeert de expressie dus als `2 ** (2 ** 3)`.

1. Dat is `2 ** 8`, en het resultaat is `256`. Het is niet `(2 ** 2) ** 3`. Dat zou `64` zijn.

{% include nav.html %}
