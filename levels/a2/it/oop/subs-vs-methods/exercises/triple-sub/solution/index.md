---
title: 'Soluzione: Triplicare come subroutine'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub triple($x) {
    $x * 3;
}

say triple(7);
```

🦋 Trova il programma nel file [triple-sub.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/subs-vs-methods/triple-sub.raku).

## Output

```
21
```

## Commenti

1. Qui `triple` è una subroutine. Sta da sola. Riceve come argomento il valore per il suo lavoro.

1. L'altro esercizio risolve lo stesso compito con un metodo. Così puoi confrontare i due modi.

{% include nav.html %}
