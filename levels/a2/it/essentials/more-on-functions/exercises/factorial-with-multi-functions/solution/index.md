---
title: 'Solution: Fattoriale con multi-funzioni'
---

{% include menu.html %}

Questo esercizio parla ancora di fattoriali. Con questo compito, possiamo mostrare altre caratteristiche di Raku.

Per calcolare un fattoriale, possiamo partire dal numero dato. Poi scendiamo. Dobbiamo fermarci quando il numero è 1. Le multi-funzioni possono farlo. Metti il caso `$n == 1` in una multi-funzione a parte.

## Codice

Ecco la soluzione:

```raku
multi sub factorial(1)  { 1 }
multi sub factorial($n) { $n * factorial($n - 1) }

say factorial(@*ARGS[0].Int);
```

🦋 Trova il programma nel file [factorial-with-multi-functions.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/more-on-functions/factorial-with-multi-functions.raku).

## Output

```console
$ raku exercises/more-on-functions/factorial-with-multi-functions.raku 5
120
```

## Commento

Nota che il programma trasforma l'argomento di input in un intero. Lo fa con `@*ARGS[0].Int`. Senza questo, l'input `1` dà un ciclo infinito. Ecco il motivo. La funzione `factorial` allora riceve un valore [`IntStr`](/it/essentials/typed-variables/allomorphs). Così Raku non può usare la prima variante della multi-funzione. La chiamata ricorsiva `factorial(2 - 1)` è diversa. Lì, l'argomento è un intero. Così Raku può chiamare la prima variante.

{% include nav.html %}
