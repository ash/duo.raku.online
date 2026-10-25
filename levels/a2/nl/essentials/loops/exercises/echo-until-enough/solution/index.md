---
title: 'Solution: Echo tot genoeg'
---

{% include menu.html %}

Dit programma heeft een lus nodig die stopt als de gebruiker een speciaal woord invoert.

## Code

Je kunt de taak op verschillende vergelijkbare manieren oplossen, met `while`, `until` of `repeat`. Hier is er een van.

```raku
my $word;
repeat {
    $word = prompt 'Jouw woord: ';
    say $word;
} while $word ne 'genoeg';

say 'OK, klaar.';
```

🦋 Vind het programma in het bestand [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Uitvoer

Voer het programma uit en voer een paar verschillende woorden in. Stop daarna de lus.

```console
$ raku exercises/loops/echo-until-enough.raku
Jouw woord: dit
dit
Jouw woord: is
is
Jouw woord: mijn
mijn
Jouw woord: woord
woord
Jouw woord: genoeg
genoeg
OK, klaar.
```

## Opmerking

Let op: je declareert de variabele `$word` _voor_ de lus. De `while`-test staat buiten het lichaam van de lus. Als je de variabele in de lus definieert, kan de test hem niet zien.

{% include nav.html %}
