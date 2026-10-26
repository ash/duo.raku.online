---
title: 'Solution: Hoeveel cijfers'
---

{% include menu.html %}

Hier is een mogelijke oplossing.

## Code

```raku
say (2 ** 1000).chars;
```

🦋 Je kunt de broncode vinden in het bestand [big-factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/big-factorial.raku).

## Uitvoer

```
302
```

## Opmerkingen

1. Raku berekent `2 ** 1000` exact. Raku rondt het getal niet af en er is geen overflow, omdat gehele getallen willekeurige precisie hebben.

1. `chars` is meestal een stringmethode. Als je hem op een geheel getal aanroept, maakt hij van het getal eerst decimale tekst. Daarna telt hij de tekens. Er is hier geen minteken en geen decimaalpunt. Het aantal tekens is dus precies het aantal cijfers, `302`.

{% include nav.html %}
