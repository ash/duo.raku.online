---
title: 'Solution: Media di un array'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my @data = 10, 20, 30, 40;

say ([+] @data) / @data.elems;
```

🦋 Puoi trovare il codice sorgente nel file [sum-of-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/sum-of-array.raku).

## Output

```
25
```

## Commenti

1. Il meta-operatore di riduzione `[+]` mette `+` tra tutti gli elementi di `@data`. Così `[+] @data` è uguale a `10 + 20 + 30 + 40`. Questo fa `100`. Il codice ha bisogno delle parentesi. Con le parentesi, la riduzione avviene prima della divisione.

1. `@data.elems` è il numero di elementi. La somma divisa per questo numero dà la media, `25`. A volte la divisione non è esatta. Allora Raku non arrotonda il risultato. Dà una frazione esatta, un `Rat`.

{% include nav.html %}
