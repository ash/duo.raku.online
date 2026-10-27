---
title: 'Soluzione: Triplicare come subroutine'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Come subroutine, `triple` sta da sola. Riceve come argomento il valore su cui lavora.

1. L'altro esercizio di questa coppia risolve lo stesso compito con un metodo. Così puoi confrontare i due approcci.

{% include nav.html %}
