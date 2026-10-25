---
title: 'Solution: Fattoriale con multi-funzioni'
---

{% include menu.html %}

Questo esercizio riguarda ancora i fattoriali. Infatti, questo compito ci permette di mostrare altre caratteristiche di Raku.

Puoi calcolare un fattoriale partendo dal numero dato e scendendo. In quel caso, devi fermarti quando il numero arriva a 1. Le multi-funzioni ti permettono di farlo. Sposta il caso `$n == 1` in una multi-funzione separata.

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

Nota che il programma converte l'argomento di input in un intero: `@*ARGS[0].Int`. Questo evita un ciclo infinito quando il numero di input è `1`. Senza la conversione, la funzione `factorial` riceve un valore di tipo [`IntStr`](/it/essentials/typed-variables/allomorphs). La prima variante della multi-funzione non può catturare una chiamata così. Ma nella chiamata ricorsiva `factorial(2 - 1)`, l'argomento è un intero. Così Raku può chiamare la prima variante.

{% include nav.html %}
