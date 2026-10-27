---
title: 'Soluzione: Reciproco morbido'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. `reciprocal(4)` funziona normalmente e restituisce `1 / 4`, cioè `0.25`.

1. `reciprocal(0)` chiama `fail`, quindi restituisce un `Failure`, che non è definito. L'operatore `//` restituisce il suo lato destro ogni volta che il suo lato sinistro non è definito. Quindi otteniamo il ripiego `undefined`.

1. Usare `//` conta come gestire il fallimento. Controlla se il valore è definito, ma non usa il valore. Quindi il `Failure` resta morbido e non viene mai sollevato come vera eccezione.

{% include nav.html %}
