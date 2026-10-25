---
title: Sostituire con contrari
---

{% include menu.html %}

## Problema

Scrivi un programma che sostituisce tutte le parole della linea di comando con i loro antonimi. Gli antonimi sono parole con il significato opposto. Se una parola non è nel dizionario, stampala senza cambiarla.

Tieni il dizionario degli antonimi in un hash, direttamente nel codice del programma. Per renderti le cose più facili, ecco una lista pronta di circa 200 coppie: [dictionary.raku](https://github.com/ash/raku-course/blob/master/essentials/associatives/exercises/replace-with-antonyms/dictionary.raku). Puoi copiarla e incollarla direttamente nel tuo programma. Tutte le coppie ci sono in entrambe le direzioni, per esempio:

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

Rendi il programma il più semplice possibile e stampa le parole una per riga.

## Esempio

Esegui il programma con alcune parole come argomenti. Controlla che almeno alcune di esse siano nel dizionario.

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
