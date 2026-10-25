---
title: 'Solvo: Poma divido'
---

{% include menu.html %}

Jen la solvo.

## Kodo

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Ĉiu persono ricevas $gets pomo(j)n.";
say "Estas $remains pomo(j)n restantaj.";
```

🦋 Vi povas trovi la plenan kodon en la dosiero [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Eligo

La enigaj nombroj estas 3 kaj 11. Kun ili, la programo presas ĉi tion:

```console
$ raku exercises/numbers/apple-sharing.raku
Ĉiu persono ricevas 3 pomo(j)n.
Estas 2 pomo(j)n restantaj.
```

Ŝanĝu la komencajn valorojn de `$N` kaj `$K`. Provu aliajn kazojn:

* `$K` dividiĝas per `$N` sen resto, ekzemple, `12` kaj `3`;
* `$K` estas egala al `$N`;
* `$K` estas pli malgranda ol `$N`.

## Komentoj

La programo uzas du operatorojn. La operatoro `div` faras entjeran dividon. La operatoro `%` donas la reston de la divido. Vi ankaŭ povas fari la kalkulojn tiel:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Rigardu ankaŭ la ĉenon. Raku interpolas la variablojn en ĝi. Tio signifas, ke ĝi metas iliajn valorojn en la ĉenon.

{% include nav.html %}
