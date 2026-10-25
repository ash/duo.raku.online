---
title: 'Solution: Als het nummer binnen de limieten valt'
---

{% include menu.html %}

Het programma maakt een bereik van de getallen die de gebruiker invoert. Dan controleert een smartmatch of het derde getal in het bereik ligt. Het resultaat van deze test is een Booleaanse waarde. Dus kunnen we het meteen afdrukken.

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

Test verschillende gevallen. Probeer ook een getal dat gelijk is aan het einde van het bereik.

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

Let op dat het rechtereinde niet bij het bereik hoort: `$begin ..^ $end`.

{% include nav.html %}
