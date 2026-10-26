---
title: 'Solution: Un map con due punti'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say (1..10).map(* * 2).grep: * > 10;
```

🦋 Puoi trovare il codice sorgente nel file [colon-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-map.raku).

## Output

```
(12 14 16 18 20)
```

## Commenti

1. Solo `grep` può usare la forma con i due punti. È l'ultima chiamata della catena. Con i due punti, `* > 10` diventa il suo argomento. È esattamente come `grep(* > 10)`. Dobbiamo ancora stampare il risultato. Quindi ora usiamo `say` come funzione, non come metodo.

1. La chiamata a `map` deve mantenere le sue parentesi. Se scrivi `.map: * * 2`, c'è un problema. I due punti prendono anche `.grep(* > 10)`. Diventa parte degli argomenti di `map`. Allora la catena si rompe.

{% include nav.html %}
