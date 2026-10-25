---
title: 'Solution: Echo fino a sufficienza'
---

{% include menu.html %}

Questo programma ha bisogno di un ciclo. Il ciclo si ferma quando l'utente inserisce una parola speciale.

## Codice

Puoi risolvere il compito con `while`, `until` o `repeat`. Questi modi sono molto simili. Ecco uno di questi.

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

Esegui il programma. Inserisci alcune parole diverse. Poi ferma il ciclo.

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

Nota che crei la variabile `$word` _prima_ del ciclo. Il test `while` non è dentro il corpo del ciclo. Quindi il test non vede una variabile che sta dentro il ciclo.

{% include nav.html %}
