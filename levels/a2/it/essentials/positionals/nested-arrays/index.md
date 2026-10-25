---
title: Array annidati
---

{% include menu.html %}

Un array può contenere qualsiasi altro dato. Può contenere anche altri array. Questi sono array annidati. Usa le parentesi quadre per mostrare dove ogni array annidato inizia e finisce:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Puoi anche aggiungere un'altra coppia di parentesi quadre. Vanno intorno all'array esterno, quello di livello superiore. Il prossimo esempio ha la stessa struttura dati di prima.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Per prendere un elemento interno, aggiungi altri indici. Aggiungine quanti ti servono. Con ogni coppia di parentesi quadre scendi di un livello:

```raku
say @table[0][3]; # Stampa 4
say @table[2][1]; # Stampa 200 
```

{% include nav.html %}
