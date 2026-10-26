---
title: 'Solution: Contare i distinti'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Quando passi l'array a `set`, ottieni un set dei suoi valori. Un set tiene solo valori distinti, quindi i numeri ripetuti diventano uno solo.

1. Dopo, `elems` dà il numero di valori distinti: `7`.

{% include nav.html %}
