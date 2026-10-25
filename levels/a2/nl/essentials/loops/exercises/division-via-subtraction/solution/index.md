---
title: 'Solution: Deling door aftrekking'
---

{% include menu.html %}

Delen is steeds opnieuw aftrekken. Het programma heeft een `while`-lus. De lus haalt `$b` van `$a` af. Hij doet dit steeds opnieuw zolang `$a` niet kleiner is dan `$b`. De variabele `$n` telt de rondes van de lus. Dit getal is ook het resultaat dat we nodig hebben.

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

Voer het programma een paar keer uit. Gebruik eerst de gegeven waarden. De deling gaat dan precies op:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Probeer dan andere waarden. Verander bijvoorbeeld `$b` in `20` en controleer of het resultaat klopt:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
