---
title: 'Solution: Percentage-operator'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. De operator neemt het percentage `$p` als linker operand. Zijn rechter operand is het totaalbedrag, `$whole`.

1. Als je `$whole` met `$p` vermenigvuldigt en door `100` deelt, krijg je het deel dat we nodig hebben. Hier is `150 * 20 / 100` gelijk aan `30`.

{% include nav.html %}
