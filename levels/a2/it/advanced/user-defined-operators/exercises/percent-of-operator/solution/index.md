---
title: 'Solution: Operatore percentuale'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub infix:<percent-of>($p, $whole) {
    $whole * $p / 100
}

say 20 percent-of 150;
```

🦋 Puoi trovare il codice sorgente nel file [percent-of-operator.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/user-defined-operators/percent-of-operator.raku).

## Output

```
30
```

## Commenti

1. L'operando sinistro dell'operatore è la percentuale, `$p`. L'operando destro è la quantità totale, `$whole`.

1. Moltiplica `$whole` per `$p`, e dividi per `100`. Questo dà la parte che ci serve: `150 * 20 / 100` fa `30`.

{% include nav.html %}
