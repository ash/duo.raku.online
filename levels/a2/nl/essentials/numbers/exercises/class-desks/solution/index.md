---
title: 'Solution: Schoolbanken'
---

{% include menu.html %}

Hier is de oplossing.

## Code

```raku
my $students = 23;

my $desks = $students div 2 + $students % 2;

say "$desks desks must be bought.";
```

🦋 Je kunt de volledige code vinden in het bestand [class-desks.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/class-desks.raku).

## Uitvoer

Voer het programma twee of meer keer uit. Probeer een oneven aantal studenten en een even aantal. Probeer bijvoorbeeld `23` en `24`. Voor beide getallen drukt het programma hetzelfde resultaat af:

```console
$ raku exercises/numbers/class-desks.raku
12 desks must be bought.
```

## Opmerkingen

Je kunt het aantal studenten niet gewoon door twee delen. Het programma moet werken met oneven en even getallen. Hier is één manier om het getal naar boven af te ronden: `$students div 2 + $students % 2`. De uitdrukking heeft twee delen. Als het aantal studenten even is, is het tweede deel nul. Dan is het resultaat de helft van het aantal studenten. Maar als het oneven is, is het eerste deel nog steeds een geheel getal. Dat komt doordat we `div` gebruiken, niet `/`. En het tweede deel voegt nog een bank toe.

{% include nav.html %}
