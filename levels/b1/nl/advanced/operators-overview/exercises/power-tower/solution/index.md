---
title: 'Solution: Machtstoren'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De operator `**` is rechts-associatief, dus de expressie wordt gegroepeerd als `2 ** (2 ** 3)`.

1. Dat is `2 ** 8`, wat `256` is. Het is niet `(2 ** 2) ** 3`, wat `64` zou geven.

{% include nav.html %}
