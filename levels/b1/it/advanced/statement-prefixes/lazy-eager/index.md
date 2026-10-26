---
title: Laziness e eagerness
translations_gpt:
---

{% include menu.html %}

Alcune liste in Raku vengono calcolate solo quando servono i loro elementi. Queste liste sono _lazy_ (pigre). I prefissi `lazy` e `eager` vi permettono di controllarlo direttamente.

Il prefisso `eager` fa produrre a Raku una lista **tutta in una volta**, senza aspettare:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Senza `eager`, il `map` produrrebbe comunque i valori. Ma `eager` fa in modo che vengano calcolati tutti subito, non più tardi su richiesta.

Il prefisso `lazy` fa l'opposto. Segna una lista come lazy. Allora i suoi elementi vengono prodotti solo quando il codice li chiede. È questo che permette a una lista di essere infinita, almeno in teoria:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

Il metodo `.is-lazy` lo conferma. La lista non proverà a calcolare in anticipo tutti i suoi infiniti elementi.

In questo esempio, però, Raku renderebbe comunque la lista lazy. Un intervallo senza fine, come `1 .. Inf`, è già lazy. Quindi `say (1 .. Inf).is-lazy` stampa `True` anche senza il prefisso. Scrivere `lazy` qui non cambia niente. Mostra solo in modo chiaro la vostra intenzione. Il prefisso è davvero utile per una lista che Raku altrimenti calcolerebbe in modo eager. Con `lazy`, potete rendere lazy una lista così.

Nella maggior parte dei casi Raku fa da solo una buona scelta. Gli intervalli e le sequenze sono lazy, e la normale assegnazione a un array è eager. Usate questi prefissi quando dovete cambiare quella scelta. Usate `eager` per far avvenire subito un calcolo costoso. Usate `lazy` per rimandare un calcolo che potrebbe essere grande o senza fine.

{% include nav.html %}
