---
title: 'Solution: Machten van twee'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. De drie waarden aan het begin zijn `1, 2, 4`. Ze groeien door vermenigvuldiging. Dus ziet `...` een meetkundige reeks. Het eindpunt is `Inf`. Dus stopt de reeks nooit vanzelf.

1. `head(8)` neemt alleen de eerste acht waarden. De reeks is lui. Dus maakt Raku de andere waarden nooit. Alleen daardoor kun je veilig een oneindige reeks schrijven.

{% include nav.html %}
