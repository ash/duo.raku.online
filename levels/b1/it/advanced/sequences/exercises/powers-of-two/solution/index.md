---
title: 'Solution: Potenze di due'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. I tre valori iniziali `1, 2, 4` crescono per moltiplicazione. Quindi `...` capisce che è una sequenza geometrica. Dato che il punto finale è `Inf`, non si ferma mai da sola.

1. `head(8)` prende solo i primi otto valori. Dato che la sequenza è lazy, gli altri valori non vengono mai generati. È l'unico motivo per cui scrivere una sequenza infinita è sicuro.

{% include nav.html %}
