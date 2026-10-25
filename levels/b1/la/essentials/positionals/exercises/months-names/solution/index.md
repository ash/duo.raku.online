---
title: 'Solutio: Nomina mensium'
---

{% include menu.html %}

Nomina mensium ex serie `@months` veniunt, quae duodecim chordas habet. Indices seriei a 0 incipiunt. Itaque, antequam seriem indicamus, 1 a numero inputato subtrahimus.

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

Curre programma aliquoties, ut diversa nomina mensium videas.

```console
$ raku exercises/positionals/months-names.raku 5
Maius

$ raku exercises/positionals/months-names.raku 1
Ianuarius

$ raku exercises/positionals/months-names.raku 12
December
```

## Stilus

Eligere potes quomodo series similes illi in hoc programmate formes. Hic sunt aliquot optiones comparandae:

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

Potes etiam omnes menses in una linea enumerare.

```raku
my @months = < Ianuarius Februarius Martius Aprilis Maius Iunius Iulius Augustus September October November December >;
```

{% include nav.html %}
