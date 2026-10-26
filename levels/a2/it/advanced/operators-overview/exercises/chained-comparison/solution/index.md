---
title: 'Solution: Confronto concatenato'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
say 0 <= 73 <= 100;
```

🦋 Puoi trovare il codice sorgente nel file [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Output

```
True
```

## Commenti

1. Puoi concatenare gli operatori di confronto. Così `0 <= 73 <= 100` vuol dire “0 è al massimo 73, e 73 è al massimo 100”. L'operatore `<=` ammette anche gli estremi. Così anche un punteggio di esattamente `0` o `100` è valido.

1. Le due parti sono vere. Così tutta l'espressione è `True`. Guarda il valore centrale, `73`. Lo scrivi una sola volta. Ma Raku lo confronta con i due valori vicini.

1. Senza concatenazione, devi scrivere i due confronti. Li unisci con `&&`. E scrivi il valore centrale due volte: `0 <= 73 && 73 <= 100`. La forma concatenata dice la stessa cosa in modo più breve.

{% include nav.html %}
