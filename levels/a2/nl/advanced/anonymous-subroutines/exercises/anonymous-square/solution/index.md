---
title: 'Solution: Een anoniem kwadraat'
translations_gpt: De oplossing van 'Een anoniem kwadraat'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
say (1, 2, 3).map(sub ($x) { $x * $x });
```

🦋 Je kunt de broncode vinden in het bestand [anonymous-square.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/anonymous-square.raku).

## Uitvoer

```
(1 4 9)
```

## Opmerkingen

1. De subroutine `sub ($x) { $x * $x }` heeft geen naam. Het programma bewaart hem nooit in een variabele. Het geeft hem direct als argument aan `map`.

1. `map` gebruikt hem voor elk element van `1, 2, 3`. Hij vermenigvuldigt elk getal met zichzelf. Het resultaat is `(1 4 9)`. Hiervoor schrijven mensen het vaakst een anonieme subroutine. Ze geven hem direct door, zoals hier.

{% include nav.html %}
