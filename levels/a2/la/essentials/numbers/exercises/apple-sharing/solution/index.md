---
title: 'Solutio: Pomum communicatio'
---

{% include menu.html %}

Hic est solutio.

## Codex

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Quisque homo accipit $gets malum/mala.";
say "Sunt $remains malum/mala remanentia.";
```

🦋 Plenum codicem invenire potes in archivo [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Exitus

Numeri input sunt 3 et 11. Cum eis programma hoc imprimit:

```console
$ raku exercises/numbers/apple-sharing.raku
Quisque homo accipit 3 malum/mala.
Sunt 2 malum/mala remanentia.
```

Muta valores initiales `$N` et `$K`. Alios casus tenta:

* `$K` per `$N` sine residuo dividitur, exempli gratia, `12` et `3`;
* `$K` aequalis est `$N`;
* `$K` minor est quam `$N`.

## Commentarii

Programma duos operatores adhibet. Operator `div` divisionem integram facit. Operator `%` residuum divisionis dat. Calculationes etiam sic facere potes:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Etiam chordam specta. Raku variabiles in ea interpolat. Hoc significat: valores earum in chordam ponit.

{% include nav.html %}
