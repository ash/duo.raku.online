---
title: Array annidati
---

{% include menu.html %}

Gli array possono contenere qualsiasi altro dato, e anche altri array. Per segnare dove ogni array annidato inizia e finisce, usa le parentesi quadre:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Puoi anche mettere un'altra coppia di parentesi quadre intorno all'array di livello superiore. Questo esempio mostra la stessa struttura dati di quello prima.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Per ottenere gli elementi interni, aggiungi tutti gli indici che ti servono. Ogni coppia di parentesi quadre ti porta un livello più in profondità nella struttura:

```raku
say @table[0][3]; # Stampa 4
say @table[2][1]; # Stampa 200 
```

{% include nav.html %}
