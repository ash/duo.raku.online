---
title: 'Solution: Maandnamen'
---

{% include menu.html %}

De namen van de maanden komen uit de array `@months`, die twaalf strings heeft. Array-indices beginnen bij 0. Daarom trekken we 1 af van het ingevoerde getal, voordat we de array indexeren.

## Code

Hier is de oplossing:

```raku
my @months = <
    January February March April
    May June July August
    September October November December
>;

say @months[@*ARGS[0] - 1];
```

🦋 Vind het programma in het bestand [months-names.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/months-names.raku).

## Uitvoer

Voer het programma een paar keer uit om verschillende maandnamen te zien.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Stijl

Je kunt zelf kiezen hoe je lijsten zoals die in dit programma opmaakt. Hier zijn een paar opties om te vergelijken:

```raku
my @months = <
    January February March April
    May June July August
    September October November December >;
```

Of:

```raku
my @months = < January   February March    April
               May       June     July     August
               September October  November December >;
```

Je kunt ook alle maanden in één regel zetten.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
