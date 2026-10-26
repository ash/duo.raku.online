---
title: 'Solution: Media di un array'
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il meta-operatore di riduzione `[+]` mette l'operatore `+` tra tutti gli elementi di `@data`. Quindi `[+] @data` è uguale a `10 + 20 + 30 + 40`, che fa `100`. Le parentesi fanno sì che la riduzione avvenga prima della divisione.

1. `@data.elems` dà il numero di elementi. Dividendo la somma per questo numero si ottiene la media, `25`. Se la divisione non fosse esatta, Raku non arrotonderebbe il risultato. Darebbe invece un `Rat` esatto.

{% include nav.html %}
