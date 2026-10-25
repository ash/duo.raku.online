---
title: 'Solution: Als het nummer binnen de limieten valt'
---

{% include menu.html %}

Het programma maakt een bereik van de getallen die de gebruiker invoert. Daarna test de smartmatch-controle of het derde getal binnen de grenzen van het bereik valt. Deze test geeft een Booleaanse waarde, dus we kunnen die meteen afdrukken.

## Code

Hier is de oplossing:

```raku
my $begin = prompt 'Van (inclusief): ';
my $end = prompt 'Tot (exclusief): ';

my $n = prompt 'Wat is het getal? ';

say $n ~~ $begin ..^ $end;
```

🦋 Vind het programma in het bestand [number-in-limits.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/ranges/number-in-limits.raku).

## Uitvoer

Probeer verschillende gevallen, ook een geval waarin het getal gelijk is aan het einde van het bereik.

```console
$ raku exercises/ranges/number-in-limits.raku
Van (inclusief): 1
Tot (exclusief): 2
Wat is het getal? 1.5
True

$ raku exercises/ranges/number-in-limits.raku
Van (inclusief): 100
Tot (exclusief): 200
Wat is het getal? 100
True

$ raku exercises/ranges/number-in-limits.raku
Van (inclusief): -5
Tot (exclusief): -2
Wat is het getal? -2
False
```

## Opmerking

Let op hoe het bereik zijn rechtereinde weglaat: `$begin ..^ $end`.

{% include nav.html %}
