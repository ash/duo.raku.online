---
title: Pattern di sequenza
---

{% include menu.html %}

L'operatore `...` conosce altri modelli, non solo i passi aritmetici.

Supponi di dargli tre valori che crescono per moltiplicazione. Allora continua con una sequenza _geometrica_:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Qui ogni valore è il doppio del precedente. Quindi la sequenza continua a raddoppiare finché arriva a `64`.

Le sequenze possono contenere non solo numeri. Con le stringhe, Raku segue il normale ordine dell'alfabeto:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Una sequenza può anche contare all'indietro. Se il punto finale è più basso del punto di partenza, i valori diminuiscono:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

In ogni caso, mostri il modello con un esempio. Poi l'operatore `...` aggiunge il resto.

{% include nav.html %}
