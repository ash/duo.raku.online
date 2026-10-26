---
title: 'Solution: Forzare l''ordine'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say 2 ** (3 + 1);
```

🦋 Puoi trovare il codice sorgente nel file [force-the-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/force-the-order.raku).

## Output

```
16
```

## Commenti

1. Senza le parentesi, `**` è più forte di `+`. Allora ottieni `(2 ** 3) + 1 = 9`.

1. Le parentesi danno all'addizione una precedenza più alta. Così Raku calcola prima `3 + 1`. L'espressione diventa `2 ** 4`, e questo fa `16`. Con le parentesi, puoi sempre cambiare la precedenza normale.

{% include nav.html %}
