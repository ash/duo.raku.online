---
title: 'Solvo: Se la nombro estas ene de la limoj'
---

{% include menu.html %}

La programo kreas intervalon el la nombroj, kiujn la uzanto enigas. Poste la smartmatch-kontrolo testas, ĉu la tria nombro estas ene de la limoj de la intervalo. Ĉi tiu testo donas Boolean valoron, do ni povas tuj presi ĝin.

## Kodo

Jen la solvo:

```raku
my $begin = prompt 'De (inkluzive): ';
my $end = prompt 'Ĝis (ekskluzive): ';

my $n = prompt 'Kio estas la nombro? ';

say $n ~~ $begin ..^ $end;
```

🦋 Trovu la programon en la dosiero [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Eligo

Provu malsamajn kazojn, inkluzive de unu, kie la nombro egalas al la fino de la intervalo.

```console
$ raku exercises/ranges/number-in-limits.raku
De (inkluzive): 1
Ĝis (ekskluzive): 2
Kio estas la nombro? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
De (inkluzive): 100
Ĝis (ekskluzive): 200
Kio estas la nombro? 100
True

$ raku exercises/ranges/number-in-limits.raku
De (inkluzive): -5
Ĝis (ekskluzive): -2
Kio estas la nombro? -2
False
```

## Komento

Notu, kiel la intervalo preterlasas sian dekstran finon: `$begin ..^ $end`.

{% include nav.html %}
