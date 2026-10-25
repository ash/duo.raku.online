---
title: 'Solution: Maak variabelen van alle bekende typen'
---

{% include menu.html %}

Dit soort programma's zul je in de praktijk waarschijnlijk niet schrijven. Maar het is belangrijk om te weten hoe je in de onderdelen van echte programma's kunt kijken.

## Code

Hier is een mogelijke oplossing. Ze maakt variabelen van de vijf typen die we noemden en drukt hun typen af.

```raku
my $a = 10;
my $b = 10.2;
my $c = 10e3;
my $d = True;
my $e = 'tien';

say $a, ' ', $a.WHAT;
say $b, ' ', $b.WHAT;
say $c, ' ', $c.WHAT;
say $d, ' ', $d.WHAT;
say $e, ' ', $e.WHAT;
```

🦋 Vind het programma in het bestand [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Uitvoer

Dit programma geeft de volgende uitvoer:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
tien (Str)
```

{% include nav.html %}
