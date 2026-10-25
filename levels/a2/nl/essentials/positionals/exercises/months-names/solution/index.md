---
title: 'Solution: Maandnamen'
---

{% include menu.html %}

Het programma haalt de namen van de maanden uit de array `@months`. Deze array heeft twaalf strings. Array-indices beginnen bij 0. Dus halen we 1 van het ingevoerde getal af. Dat doen we voordat we het als index gebruiken.

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

Voer het programma een paar keer uit. Je ziet dan verschillende namen van maanden.

```console
$ raku exercises/positionals/months-names.raku 5
May

$ raku exercises/positionals/months-names.raku 1
January

$ raku exercises/positionals/months-names.raku 12
December
```

## Stijl

Er zijn verschillende manieren om zo'n lijst op te maken. Je kunt elke manier kiezen. Vergelijk een paar opties:

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

Je kunt ook alle maanden op één regel zetten.

```raku
my @months = < January February March April May June July August September October November December >;
```

{% include nav.html %}
