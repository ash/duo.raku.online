---
title: 'Solution: De laatste cijfer'
---

{% include menu.html %}

Dit is het idee van de oplossing. Gebruik modulo deling door 10. Die geeft het laatste cijfer van het getal.

## Code

Hier is de oplossing:

```raku
my $n = prompt 'Voer een nummer in: ';
my $d = $n % 10;
say "Het laatste cijfer van $n is $d.";
```

🦋 Vind het programma in het bestand [the-last-digit.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/the-last-digit.raku).

## Uitvoer

Voer het programma uit en voer een positief geheel getal in:

```console
$ raku exercises/numbers/the-last-digit.raku
Voer een nummer in: 1234
Het laatste cijfer van 1234 is 4.
```

## Opmerking

Pas op met negatieve getallen. Hier is het resultaat niet wat je verwacht. Bijvoorbeeld: `-11 % 10` is `9`, niet `1`.

{% include nav.html %}
