---
title: 'Solutio: Pomum communicatio'
---

{% include menu.html %}

Hic est solutio ad problema.

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

Cum numeris input 3 et 11, programma hoc imprimit:

```console
$ raku exercises/numbers/apple-sharing.raku
Quisque homo accipit 3 malum/mala.
Sunt 2 malum/mala remanentia.
```

Muta valores initiales `$N` et `$K`, ut alias res tentes:

* `$K` est multiplex `$N`, exempli gratia, `12` et `3`;
* `$K` aequalis est `$N`;
* `$K` minor est quam `$N`.

## Commentarii

Programma duos operatores adhibet: `div` ad divisionem integram et `%` ad residuum divisionis. Alius modus est calculationes sic facere:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Etiam nota quomodo Raku valores variabilium in chordam inserat.

{% include nav.html %}
