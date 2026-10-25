---
title: 'Solution: Landcodes'
---

{% include menu.html %}

Om een code in een naam om te zetten, zoekt het programma hem op in de hash: `%cc{$_}`. Dat doet het in een lus over de `@codes` array.

## Code

Hier is een mogelijke oplossing, zonder de volledige lijst met landen:

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

Met de codes uit de opdracht print het programma de volgende landen:

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
