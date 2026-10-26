---
title: 'Solutio: Triplicare'
translations_gpt:
---

{% include menu.html %}

Hoc modo opus solvere potes.

## Codex

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Inveni codicem fontem in archivo [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Exitus

```
21
```

## Commentarii

1. Cuspis acuta unum tantum parametrum habet, `$x`. Sed etiam `$factor` adhibet. Haec variabilis ex codice circa cuspidem venit. Cuspis quae tales variabiles servat clausura est.

1. `$factor` est `3`, itaque `$scale(7)` dat `21`. Nunc `$factor` muta. Tum eadem cuspis novum valorem adhibet:

```raku
$factor = 5;
say $scale(7); # 35
```

Clausura ipsam *variabilem* servat. Veterem valorem variabilis non servat. Itaque vocatio posterior novum `$factor` videt. Reddit `35`.

{% include nav.html %}
