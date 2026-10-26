---
title: 'Solution: Torre di potenze'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. L'operatore `**` è associativo a destra, quindi l'espressione si raggruppa come `2 ** (2 ** 3)`.

1. Questo è `2 ** 8`, che fa `256`. Non è `(2 ** 2) ** 3`, che darebbe `64`.

{% include nav.html %}
