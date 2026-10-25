---
title: Sostituire con contrari
---

{% include menu.html %}

## Problema

Scrivi un programma. Prende parole dalla linea di comando. Cambia ogni parola con il suo antonimo. Un antonimo è una parola con il significato opposto. Alcune parole non sono nel dizionario. Non cambiare queste parole. Stampale così come sono.

Tieni il dizionario degli antonimi in un hash. Scrivi l'hash direttamente nel codice. Per aiutarti, abbiamo fatto una lista di circa 200 coppie. Puoi copiarla e incollarla nel tuo programma: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Ogni coppia è nella lista due volte, una volta per ogni direzione. Per esempio:

```raku
my %dictionary =
    'above' => 'below',
    'absent' => 'present',
    # . . .
    'below' => 'above',
    # . . .
    'present' => 'absent',
    # . . .
;
```

Fai il programma più semplice che puoi. Stampa ogni parola su una riga.

## Esempio

Esegui il programma e dagli alcune parole. Almeno alcune parole devono essere nel dizionario.

```console
$ raku replace-with-antonyms.raku a quiet teacher wants to buy some salt
a
noisy
student
wants
to
sell
some
sugar
```

## Soluzione

✅ [Vedi la soluzione](solution)

{% include nav.html %}
