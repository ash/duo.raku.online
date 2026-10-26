---
title: Set, bag e mix
---

{% include menu.html %}

Oltre agli array e agli hash, Raku ha alcuni contenitori speciali per collezioni di valori. Il più semplice è il `Set`. È una collezione di valori _distinti_ senza un ordine preciso. Ogni valore è nel set oppure no, e i valori ripetuti vengono ignorati.

Crei un set con la routine `set`. Se un valore è ripetuto, il set ne tiene una sola copia:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Abbiamo passato cinque numeri, ma il set ha solo tre elementi. Questo perché `1` e `2` comparivano più di una volta.

La domanda principale che fai a un set è se un valore è nel set. L'operatore `∈`, che leggi come “è un elemento di”, restituisce un booleano:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Se vuoi restare con il semplice ASCII, scrivi lo stesso operatore come `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Più avanti vedrai come combinare i set. Conoscerai anche i bag e i mix, che sono parenti stretti dei set.

{% include nav.html %}
