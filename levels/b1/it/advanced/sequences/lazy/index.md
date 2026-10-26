---
title: Sequenze lazy e infinite
---

{% include menu.html %}

Una sequenza non deve calcolare tutti i suoi valori in una volta. Le sequenze di Raku sono _lazy_: ogni valore viene creato solo quando serve davvero. Così puoi descrivere una sequenza che non ha nessuna fine.

Per scrivere una sequenza infinita, usa `Inf` come punto finale. L'operatore `...` ha una precedenza più bassa di `=`, quindi Raku farebbe prima `=`. Per questo metti la sequenza tra parentesi:

```raku
my $naturals = (1 ... Inf);
```

Senza le parentesi, `my $naturals = 1 ... Inf` assegnerebbe solo `1` alla variabile. Poi costruirebbe la sequenza a parte. Calcolare una sequenza senza fine che nessuno usa bloccherebbe il programma.

A questo punto non viene calcolato niente. La sequenza dà i valori solo quando li chiedi. Il metodo `head` ne prende i primi:

```raku
say (1 ... Inf).head(5); # (1 2 3 4 5)
```

La sequenza è infinita, ma vengono generati solo i primi cinque numeri. Senza la valutazione lazy, il programma proverebbe a costruire tutta la sequenza senza fine. Un programma così non finirebbe mai.

Se una sequenza è finita, il metodo `tail` può invece prendere i valori dalla sua fine:

```raku
say (1 ... 100).tail(3); # (98 99 100)
```

La valutazione lazy ti permette di separare due cose. La prima è la _descrizione_ di una sequenza. La seconda è la decisione su quanto usarne.

{% include nav.html %}
