---
title: Operazioni sui set
---

{% include menu.html %}

Puoi combinare i set con le solite operazioni della teoria degli insiemi. Ogni operatore ha un simbolo Unicode e una grafia ASCII. Puoi usare quello che vuoi.

L'_unione_ `∪`, o `(|)`, raccoglie tutti i valori dei due set:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Dato che entrambi i set contengono `3`, l'unione ha cinque elementi distinti: `1, 2, 3, 4, 5`.

L'_intersezione_ `∩`, o `(&)`, tiene solo i valori che hanno entrambi i set:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — nota che i set non sono ordinati
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Qui l'intersezione ha `2` e `3`, i valori che sono in entrambi i set. Un set non ha un suo ordine. Così, quando lo stampi, i due elementi possono uscire in un ordine o nell'altro.

Anche il risultato di queste operazioni è un set. Così puoi fargli le stesse domande. Quanti elementi ha, e un certo valore ne fa parte?

{% include nav.html %}
