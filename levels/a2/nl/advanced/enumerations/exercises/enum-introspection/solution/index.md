---
title: 'Solution: Tellen en totaal'
translations_gpt: Dutch
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Je kunt de broncode vinden in het bestand [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Uitvoer

```
4
41
```

## Opmerkingen

1. We schrijven de constanten als paren. Zo kiezen we de waarde van elke constante. Raku nummert ze niet vanaf nul.

1. `.enums` geeft een map terug. Een map lijkt op een hash. Daarin heeft elke naam van een constante zijn waarde. `.elems` telt de items. Er zijn vier munten.

1. `.values` neemt alleen de getallen achter de namen. `.sum` telt ze op: `1 + 5 + 10 + 25` is `41`.

{% include nav.html %}
