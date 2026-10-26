---
title: 'Solution: Contare i distinti'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Puoi trovare il codice sorgente nel file [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Output

```
7
```

## Commenti

1. Dai l'array a `set`. Ottieni un set dei suoi valori. Un set tiene solo valori distinti. Quindi ogni numero ripetuto diventa un solo valore.

1. Poi il metodo `elems` restituisce il numero di valori distinti. È `7`.

{% include nav.html %}
