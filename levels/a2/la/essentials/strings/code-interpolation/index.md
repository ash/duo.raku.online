---
title: Codice interpolatio
---

{% include menu.html %}

Interpolatio codicis est proximus gradus interpolationis. Codicem directe intra stringam in quotationibus duplicibus ponere potes. Codex simplex esse potest. Etiam complexus esse potest!

Codicem inter uncos curvos scribe, `{` et `}`:

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

Ecce unus usus huius methodi. Interdum variabilis textum statim post se habet. Raku per errorem hunc textum ut partem nominis legere potest. Ut hoc vites, variabilem in uncos curvos pone:

```raku
my $how-many = 5;
my $what = 'suit';
say "Sunt $how-many {$what}s."; # Sunt 5 suits.
```

Sine uncis curvis, Raku variabilem `$whats` interpolare conatur. Sed nulla talis variabilis est.

{% include nav.html %}
