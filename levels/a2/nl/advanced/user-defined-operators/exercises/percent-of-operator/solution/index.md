---
title: 'Solution: Percentage-operator'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de opgave op te lossen.

## Code

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Je kunt de broncode vinden in het bestand [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Uitvoer

```
30
```

## Opmerkingen

1. De linker operand van de operator is het percentage, `$p`. De rechter operand is het hele bedrag, `$whole`.

1. Vermenigvuldig `$whole` met `$p`, en deel door `100`. Dat geeft het deel dat we nodig hebben: `150 * 20 / 100` is `30`.

{% include nav.html %}
