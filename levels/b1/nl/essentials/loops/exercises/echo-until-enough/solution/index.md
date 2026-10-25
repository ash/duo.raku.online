---
title: 'Solution: Echo tot genoeg'
---

{% include menu.html %}

Dit programma heeft een lus nodig die stopt wanneer de gebruiker een bepaald woord invoert.

## Code

Er zijn verschillende vergelijkbare manieren om de taak op te lossen met `while`, `until` of `repeat`. Een daarvan wordt hieronder getoond.

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

Voer het programma uit, voer een paar verschillende woorden in en stop daarna de lus.

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

Merk op dat je de variabele `$word` _voor_ de lus declareert, omdat de `while`-test buiten de scope van het lichaam van de lus staat. Als je de variabele binnen de lus definieert, ziet de test hem niet.

{% include nav.html %}
