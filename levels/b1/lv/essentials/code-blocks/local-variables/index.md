---
title: Vietējie mainīgie
---

{% include menu.html %}

Deklarēsim mainīgo globālajā apjomā. Kas notiek, ja mēs to deklarējam arī lokāli blokā?

```raku
my $x = 1;

{
    my $x = 42;
    say $x;
}

say $x;
```

Tagad programmā ir divi atsevišķi mainīgie. Abus sauc par `$x`. Globālajā apjomā `$x` vienmēr nozīmē globālo mainīgo. Bet bloka iekšpusē `$x` ir cits, lokāls mainīgais. Programma izdrukā divas dažādas vērtības:

```console
$ raku t.raku
42
1
```

{% include nav.html %}
