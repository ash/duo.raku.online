---
title: 'Solution: Landcodes'
---

{% include menu.html %}

Het programma heeft een lus over de `@codes` array. Voor elke code haalt het de naam uit de hash: `%cc{$_}`.

## Code

Hier is een mogelijke oplossing. Ze toont niet alle landen:

```raku
my %cc =
    AD => 'Andorra',
    AE => 'Verenigde Arabische Emiraten',

    # . . .

    ZM => 'Zambia',
    ZW => 'Zimbabwe'
;

my @codes = < FR IT DE EE LV US CN IN BR >;

say %cc{$_} for @codes;
```

🦋 Vind het programma in het bestand [country-codes.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/associatives/country-codes.raku).

## Uitvoer

Voor deze codes print het programma deze lijst met landen:

```console
$ raku exercises/associatives/country-codes.raku
Frankrijk
Italië
Duitsland
Estland
Letland
Verenigde Staten van Amerika
China
India
Brazilië
```

{% include nav.html %}
