---
title: 'Solutio: Operator medietatis'
---

{% include menu.html %}

Hoc modo munus solvere potes.

## Codex

```raku
sub infix:<avg>($a, $b) {
    ($a + $b) / 2
}

say 4 avg 10;
```

🦋 Inveni codicem fontem in archivo [average-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/average-operator.raku).

## Exitus

```
7
```

## Commentarii

1. Operatorem ut `infix:<avg>` declaramus. Ergo eum inter duos operandos suos scribis, sicut `+` vel `~`.

1. Corpus duos operandos addit. Deinde summam per duo dividit. Pro `4` et `10` eventus est `7`.

{% include nav.html %}
