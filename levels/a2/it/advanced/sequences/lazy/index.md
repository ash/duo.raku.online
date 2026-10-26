---
title: Sequenze lazy e infinite
---

{% include menu.html %}

Una sequenza non deve calcolare tutti i suoi valori insieme. Le sequenze in Raku sono _lazy_. Raku crea ogni valore solo quando ti serve davvero. Così puoi descrivere una sequenza senza nessuna fine.

Per una sequenza infinita, usa `Inf` come punto finale. Raku esegue `=` prima di `...`. Diciamo che `...` ha una precedenza più bassa di `=`. Quindi metti la sequenza tra parentesi:

```raku
my $naturals = (1 ... Inf);
```

Guarda `my $naturals = 1 ... Inf` senza parentesi. Qui la variabile riceve solo `1`. Dopo, Raku costruisce la sequenza a parte. Nessuno usa questa sequenza senza fine. Ma Raku prova a calcolarla. Così il programma si blocca e non finisce mai.

Per ora Raku non calcola niente. La sequenza ti dà i valori solo quando li chiedi. Il metodo `head` prende i primi valori:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

La sequenza è infinita. Ma Raku crea solo i primi cinque numeri. Senza la valutazione lazy, il programma prova a costruire tutta la sequenza senza fine. Un programma così non finisce mai.

Una sequenza finita ha una fine. Per una sequenza così, il metodo `tail` prende i valori dalla fine:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

La valutazione lazy ti permette di fare due cose separate. Prima dai la _descrizione_ di una sequenza. Dopo decidi quanto ne vuoi usare.

{% include nav.html %}
