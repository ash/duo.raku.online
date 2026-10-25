---
title: 'Solution: Deling door aftrekking'
---

{% include menu.html %}

Delen is gewoon vaak achter elkaar aftrekken. Het programma heeft een `while`-lus die `$b` van `$a` aftrekt. Dat herhaalt hij zolang `$a` nog niet kleiner is dan `$b`. De variabele `$n` telt de rondes van de lus. Dit aantal is ook het resultaat.

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

Probeer dan andere waarden. Zet bijvoorbeeld `$b` op `20` en controleer of het resultaat klopt:

```console
$ raku exercises/loops/division-via-subtraction.raku
8
```

{% include nav.html %}
