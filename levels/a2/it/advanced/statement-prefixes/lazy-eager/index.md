---
title: Laziness e eagerness
translations_gpt:
---

{% include menu.html %}

Raku calcola alcune liste solo quando gli servono i loro elementi. Queste liste sono _lazy_ (pigre). Con i prefissi `lazy` e `eager` potete controllarlo voi.

Il prefisso `eager` fa produrre a Raku una lista **tutta insieme**, subito:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Anche senza `eager` il `map` produce i valori. Ma `eager` fa in modo che Raku li calcoli tutti subito. Non aspetta che vi servano.

Il prefisso `lazy` fa l'opposto. Segna una lista come lazy. Allora Raku produce ogni elemento solo quando il codice lo chiede. Così una lista può, in teoria, non avere fine:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

Il metodo `.is-lazy` mostra che la lista è lazy. Così non prova a calcolare prima tutti i suoi elementi. E questi elementi non hanno fine.

Ma in questo esempio Raku rende comunque la lista lazy. Un intervallo senza fine, come `1 .. Inf`, è già lazy. Così `say (1 .. Inf).is-lazy` stampa `True` senza il prefisso. Qui `lazy` non cambia niente. Mostra solo in modo chiaro quello che volete. Il prefisso è davvero utile in un altro caso. A volte Raku calcola una lista in modo eager, tutta insieme. Con il prefisso, potete rendere lazy una lista così.

Quasi sempre Raku fa da solo una buona scelta. Gli intervalli e le sequenze sono lazy. Una normale assegnazione a un array è eager. Usate questi prefissi quando volete una scelta diversa. Usate `eager` per fare subito un calcolo lento. Usate `lazy` per rimandare un calcolo molto grande o senza fine.

{% include nav.html %}
