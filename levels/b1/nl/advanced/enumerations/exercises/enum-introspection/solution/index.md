---
title: 'Solution: Tellen en totaal'
translations_gpt: Dutch
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De constanten zijn als paren geschreven. Zo krijgt elke constante de waarde die wij kozen, niet de automatische nummers vanaf nul.

1. `.enums` geeft een map terug, waarin elke naam van een constante naar zijn waarde wijst. `.elems` telt de items, en er zijn vier munten.

1. `.values` geeft alleen de getallen achter de namen. Daarna telt `.sum` ze bij elkaar op: `1 + 5 + 10 + 25` is `41`.

{% include nav.html %}
