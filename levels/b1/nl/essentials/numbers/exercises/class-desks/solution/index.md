---
title: 'Solution: Schoolbanken'
---

{% include menu.html %}

Hieronder zie je de oplossing.

## Code

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Je kunt de volledige code vinden in het bestand [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Uitvoer

Voer het programma minstens twee keer uit. Probeer zowel een oneven als een even aantal studenten. Voor de invoergetallen `23` en `24` drukt het programma bijvoorbeeld hetzelfde resultaat af:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Opmerkingen

Het aantal studenten gewoon door twee delen is niet genoeg. Het programma moet zowel oneven als even getallen aankunnen. Hier is een mogelijke manier om het getal naar boven af te ronden: `$students div 2 + $students % 2`. Als het aantal studenten even is, is het tweede deel nul. Dan is het resultaat de helft van het aantal studenten. Als het aantal oneven is, is het eerste deel nog steeds een geheel getal. Dat komt doordat we `div` gebruiken in plaats van `/`. En het tweede deel van de uitdrukking voegt een extra bank toe.

{% include nav.html %}
