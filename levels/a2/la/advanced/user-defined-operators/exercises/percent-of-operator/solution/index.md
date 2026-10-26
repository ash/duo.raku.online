---
title: 'Solutio: Operator centesimae'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Inveni codicem fontem in archivo [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Exitus

```
30
```

## Commentarii

1. Operandus sinister operatoris est centesima, `$p`. Operandus dexter est tota quantitas, `$whole`.

1. Multiplica `$whole` per `$p`, et divide per `100`. Hoc partem dat quam requirimus: `150 * 20 / 100` est `30`.

{% include nav.html %}
