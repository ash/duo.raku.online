---
title: 'Solution: Deling door aftrekking'
---

{% include menu.html %}

Delen is herhaald aftrekken. Het programma heeft een `while`-lus die `$b` van `$a` aftrekt en dit herhaalt zolang de huidige waarde van `$a` niet kleiner is dan `$b`. De variabele `$n` telt de iteraties, en dat is ook het resultaat dat we nodig hebben.

## Code

Hier is het volledige programma:

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

Voer het programma een paar keer uit. Begin met de gegeven waarden, waarmee de deling precies opgaat:

```console
$ raku exercises/loops/division-via-subtraction.raku
7
```

Probeer dan bijvoorbeeld `$b` te veranderen in `20`, en controleer of het resultaat correct is:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
