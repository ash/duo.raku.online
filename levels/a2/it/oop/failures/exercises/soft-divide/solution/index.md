---
title: 'Soluzione: Reciproco morbido'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub reciprocal($n) {
    fail 'no reciprocal of zero' if $n == 0;
    return 1 / $n;
}

say reciprocal(4);
say reciprocal(0) // 'undefined';
```

🦋 Trova il programma nel file [soft-divide.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/soft-divide.raku).

## Output

```
0.25
undefined
```

## Commenti

1. `reciprocal(4)` funziona come al solito. Restituisce `1 / 4`. Questo fa `0.25`.

1. `reciprocal(0)` chiama `fail`. Quindi restituisce un `Failure`. Un `Failure` è un valore non definito con dentro un errore. L'operatore `//` guarda il suo lato sinistro. Se il lato sinistro non è definito, `//` restituisce il suo lato destro. Quindi otteniamo il ripiego, `undefined`.

1. Usare `//` conta come gestire il fallimento. `//` controlla solo se il valore è definito. Non usa il valore. Quindi il `Failure` resta morbido. Raku non lo solleva mai come vera eccezione.

{% include nav.html %}
