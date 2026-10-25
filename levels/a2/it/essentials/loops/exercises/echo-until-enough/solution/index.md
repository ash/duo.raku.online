---
title: 'Solution: Echo fino a sufficienza'
---

{% include menu.html %}

Questo programma ha bisogno di un ciclo che si ferma quando l'utente inserisce una parola speciale.

## Codice

Puoi risolvere il compito in diversi modi simili, con `while`, `until` o `repeat`. Ecco uno di questi.

```raku
my $word;
repeat {
    $word = prompt 'La tua parola: ';
    say $word;
} while $word ne 'basta';

say 'OK, fatto.';
```

🦋 Trova il programma nel file [echo-until-enough.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/echo-until-enough.raku).

## Output

Esegui il programma e inserisci alcune parole diverse. Poi ferma il ciclo.

```console
$ raku exercises/loops/echo-until-enough.raku
La tua parola: questa
questa
La tua parola: è
è
La tua parola: la
la
La tua parola: parola
parola
La tua parola: basta
basta
OK, fatto.
```

## Commento

Nota che dichiari la variabile `$word` _prima_ del ciclo. Il test `while` è fuori dal corpo del ciclo. Se definisci la variabile dentro il ciclo, il test non la vede.

{% include nav.html %}
