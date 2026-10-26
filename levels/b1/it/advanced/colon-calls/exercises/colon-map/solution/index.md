---
title: 'Solution: Un map con due punti'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. La forma con i due punti è possibile solo per `grep`, l'ultima chiamata della catena. Con i due punti, `* > 10` diventa il suo argomento, esattamente come in `grep(* > 10)`. Dobbiamo ancora stampare il risultato. Quindi ora `say` viene usato come funzione, non come metodo.

1. La chiamata a `map` deve mantenere le sue parentesi. Immagina di scrivere invece `.map: * * 2`. I due punti prenderebbero allora anche `.grep(* > 10)` come argomento di `map`. Così la catena si romperebbe.

{% include nav.html %}
