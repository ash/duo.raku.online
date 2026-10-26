---
title: 'Solution: Hoeveel cijfers'
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

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

1. Gehele getallen in Raku hebben geen maximale grootte. Daarom vindt Raku de exacte waarde van `2 ** 1000`. Raku rondt het getal niet af. Het getal loopt ook niet over.

1. Meestal is `chars` een methode voor strings. Je kunt hem ook op een geheel getal aanroepen. Dan maakt hij eerst tekst van het getal, in grondtal 10. Daarna telt hij de tekens. Dit getal heeft geen minteken en geen decimaalpunt. Het aantal tekens is dus het aantal cijfers: `302`.

{% include nav.html %}
