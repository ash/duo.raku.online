---
title: 'Solvo: Poma divido'
---

{% include menu.html %}

Jen la solvo al la problemo.

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

Kun la enigaj nombroj 3 kaj 11, la programo presas ĉi tion:

```console
$ raku exercises/numbers/apple-sharing.raku
Ĉiu persono ricevas 3 pomo(j)n.
Estas 2 pomo(j)n restantaj.
```

Ŝanĝu la komencajn valorojn de `$N` kaj `$K` por provi aliajn situaciojn:

* `$K` estas multoblo de `$N`, ekzemple, `12` kaj `3`;
* `$K` estas egala al `$N`;
* `$K` estas pli malgranda ol `$N`.

## Komentoj

La programo uzas du operatorojn: `div` por entjera divido kaj `%` por la resto de la divido. Alia maniero estas fari la kalkulojn tiel:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Notu ankaŭ, kiel Raku enmetas la valorojn de la variabloj en la ĉenon.

{% include nav.html %}
