---
title: 'Solution: Potenze di due'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say (1, 2, 4 ... Inf).head(8);
```

🦋 Puoi trovare il codice sorgente nel file [powers-of-two.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/powers-of-two.raku).

## Output

```
(1 2 4 8 16 32 64 128)
```

## Commenti

1. I tre valori iniziali sono `1, 2, 4`. Crescono per moltiplicazione. Quindi `...` vede una sequenza geometrica. Il punto finale è `Inf`. Così la sequenza non si ferma mai da sola.

1. `head(8)` prende solo i primi otto valori. La sequenza è lazy. Così Raku non crea mai gli altri valori. Solo per questo puoi scrivere senza pericolo una sequenza infinita.

{% include nav.html %}
