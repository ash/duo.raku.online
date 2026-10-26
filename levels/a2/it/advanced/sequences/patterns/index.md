---
title: Pattern di sequenza
---

{% include menu.html %}

L'operatore `...` può trovare non solo passi aritmetici.

Dagli tre valori che crescono per moltiplicazione. Allora continua con una sequenza _geometrica_:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Qui ogni valore è il doppio del valore di prima. Quindi la sequenza raddoppia ogni volta. Si ferma quando arriva a `64`.

Le sequenze possono avere anche altri valori, non solo numeri. Con le stringhe, Raku usa l'ordine dell'alfabeto:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Una sequenza può anche contare all'indietro. Se il punto finale è più piccolo dell'inizio, i valori diventano più piccoli:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

Ogni volta mostri il modello con un esempio. Poi l'operatore `...` aggiunge gli altri valori.

{% include nav.html %}
