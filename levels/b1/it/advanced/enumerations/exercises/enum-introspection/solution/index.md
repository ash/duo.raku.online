---
title: 'Solution: Contare e sommare'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
enum Coin (penny => 1, nickel => 5, dime => 10, quarter => 25);

say Coin.enums.elems;
say Coin.enums.values.sum;
```

🦋 Puoi trovare il codice sorgente nel file [enum-introspection.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/enumerations/enum-introspection.raku).

## Output

```
4
41
```

## Commenti

1. Le costanti sono scritte come coppie. Così ognuna riceve il valore che abbiamo scelto, non i numeri automatici a partire da zero.

1. `.enums` restituisce una mappa, dove ogni nome di costante punta al suo valore. `.elems` conta le voci, e ci sono quattro monete.

1. `.values` dà solo i numeri dietro i nomi. Poi `.sum` li somma: `1 + 5 + 10 + 25` fa `41`.

{% include nav.html %}
