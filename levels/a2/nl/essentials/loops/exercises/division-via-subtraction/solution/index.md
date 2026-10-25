---
title: 'Solution: Deling door aftrekking'
---

{% include menu.html %}

Delen is steeds opnieuw aftrekken. Het programma heeft een `while`-lus. Elke keer haalt de lus `$b` van `$a` af. Dat doet hij zolang `$a` niet kleiner is dan `$b`. De variabele `$n` telt de rondes. Dit getal is het antwoord.

## Code

Hier is het hele programma:

```raku
my $a = 175;
my $b = 25;

my $n = 0;
while $a >= $b {
    $a -= $b;
    $n++;
}

say $n;
```

🦋 Vind het programma in het bestand [division-via-subtraction.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/division-via-subtraction.raku).

## Uitvoer

Voer het programma een paar keer uit. Begin met de getallen in de code. Bij deze getallen blijft er niets over:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Probeer dan andere getallen. Verander bijvoorbeeld `$b` in `20`. Controleer of het resultaat klopt:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
