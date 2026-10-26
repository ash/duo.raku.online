---
title: 'Solution: Torre di potenze'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say 2 ** 2 ** 3;
```

🦋 Puoi trovare il codice sorgente nel file [power-tower.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/power-tower.raku).

## Output

```
256
```

## Commenti

1. `**` è associativo a destra. Così l'espressione si raggruppa come `2 ** (2 ** 3)`.

1. Questo è `2 ** 8`, e il risultato è `256`. Non è `(2 ** 2) ** 3`. Quello farebbe `64`.

{% include nav.html %}
