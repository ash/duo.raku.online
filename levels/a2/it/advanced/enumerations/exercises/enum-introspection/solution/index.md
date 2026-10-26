---
title: 'Solution: Contare e sommare'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. Scriviamo le costanti come coppie. Così scegliamo il valore di ogni costante. Raku non le numera da zero.

1. `.enums` restituisce una mappa. Una mappa è come un hash. Nella mappa, ogni nome di costante ha il suo valore. `.elems` conta le voci. Ci sono quattro monete.

1. `.values` prende solo i numeri dietro i nomi. `.sum` li somma: `1 + 5 + 10 + 25` fa `41`.

{% include nav.html %}
