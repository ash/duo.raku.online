---
title: Codice interpolatio
---

{% include menu.html %}

Interpolatio codicis est proximus gradus interpolationis. Tibi permittit codicem directe intra stringam duplici-quotatam ponere. Codex simplex esse potest, vel etiam complexus!

Codex quem interpolas inter uncos curvos ponitur:

```raku
my $a = 10;
my $b = 20;
say "Summa $a et $b est {$a + $b}.";
```

Programma imprimit:

```console
$ raku t.raku 
Summa 10 et 20 est 30.
```

## Variabiles iterum

Unus usus huius methodi est cum variabilem textus sequi debet. Ille textus falso ut reliqua pars nominis variabilis legi potest. Ut hoc vites, variabilem intra uncos curvos pone:

```raku
my $how-many = 5;
my $what = 'suit';
say "Sunt $how-many {$what}s."; # Sunt 5 suits.
```

Sine uncis curvis, Raku `$whats` interpolare conaretur, variabilem quae non exstat.

{% include nav.html %}
