---
title: 'Solutio: Nomina mensium'
---

{% include menu.html %}

Programma nomina mensium ex serie `@months` sumit. Haec series duodecim chordas habet. Indices seriei a 0 incipiunt. Itaque 1 a numero inputato subtrahere debemus. Hoc facimus antequam eum ut indicem adhibemus.

## Codex

Hic est solutio:

```raku
my @months = <
    Ianuarius Februarius Martius Aprilis
    Maius Iunius Iulius Augustus
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Invenias programma in archivo [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Exitus

Curre programma aliquoties. Diversa nomina mensium vides.

```console
$ raku exercises/positionals/months-names.raku 5
Maius

$ raku exercises/positionals/months-names.raku 1
Ianuarius

$ raku exercises/positionals/months-names.raku 12
December
```

## Stilus

Sunt varii modi pro forma talis seriei. Quemlibet eorum eligere potes. Compara aliquot optiones:

```raku
my @months = <
    Ianuarius Februarius Martius Aprilis
    Maius Iunius Iulius Augustus
    September October November December >;
```

Vel:

```raku
my @months = < Ianuarius Februarius Martius Aprilis
               Maius Iunius Iulius Augustus
               September October November December >;
```

Omnes menses etiam in una linea ponere potes.

```raku
my @months = < Ianuarius Februarius Martius Aprilis Maius Iunius Iulius Augustus September October November December >;
```

{% include nav.html %}
