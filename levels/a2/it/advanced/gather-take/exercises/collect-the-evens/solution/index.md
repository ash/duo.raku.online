---
title: 'Solution: Ripetere ogni numero'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @result = gather for 1..4 -> $n {
    take $n for 1..$n;
};

say @result;
```

🦋 Puoi trovare il codice sorgente nel file [collect-the-evens.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/gather-take/collect-the-evens.raku).

## Output

```
[1 2 2 3 3 3 4 4 4 4]
```

## Commenti

1. Non serve esattamente un `take` a ogni giro. Guarda qui il `take $n for 1..$n` interno. Esegue `take` un numero diverso di volte a ogni giro. Questa libertà rende `gather`/`take` più forte di un semplice `map`.

1. Il ciclo esterno ha una variabile con un nome, `-> $n`. Questo è voluto. Immaginiamo di usare `$_` nel ciclo interno. Allora il `for` interno mette il suo contatore in `$_`. Così prendiamo il contatore, non il numero corrente.

1. `gather` raccoglie semplicemente, in ordine, ogni valore che il codice prende. Così `@result` ha un `1`, due `2`, tre `3` e quattro `4`.

{% include nav.html %}
