---
title: Set, bag e mix
---

{% include menu.html %}

Raku ha gli array e gli hash. Ha anche alcuni contenitori speciali per gruppi di valori. Il più semplice è il `Set`. I suoi valori sono _distinti_, quindi ogni valore è diverso dagli altri. I valori in un set non hanno un ordine. Un valore è nel set, oppure non c'è. Se un valore arriva due volte, il set ignora il secondo.

Per creare un set, usa la routine `set`. I valori che si ripetono diventano un solo valore:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Diamo al set cinque numeri. Ma il set ha solo tre elementi. Questo perché `1` e `2` compaiono più di una volta.

Di solito fai a un set una domanda principale. Un valore è nel set? L'operatore `∈` risponde a questa domanda. Leggi `∈` come “è un elemento di”. Restituisce un booleano, `True` o `False`:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Forse vuoi usare solo i semplici caratteri ASCII. Allora scrivi lo stesso operatore come `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

I prossimi argomenti mostrano come combinare i set. Mostrano anche i bag e i mix. I bag e i mix sono parenti stretti dei set.

{% include nav.html %}
