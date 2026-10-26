---
title: Bag e mix
---

{% include menu.html %}

Un set ti dice solo _se_ un valore è presente. Ma a volte ti serve sapere anche _quante volte_ il valore c'è. Per questo c'è il `Bag`, che tiene un conteggio per ogni valore.

Crei un bag con la routine `bag`. I valori ripetuti non diventano un solo valore. Invece, vengono contati:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Puoi chiedere al bag un valore con il subscript `< >`. Allora ottieni quante volte questo valore è stato inserito. Il metodo `total` dà la somma di tutti i conteggi:

```raku
say bag(<a b a c a>).total; # 5
```

Un `Mix` è la stessa idea di un bag. La differenza è che i conteggi, chiamati _pesi_, possono essere frazioni, non solo numeri interi. Per dare tu i pesi, metti ogni valore in coppia con il suo peso. Poi trasforma la lista in un mix con `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Cerchi un peso con `< >` e sommi i pesi con `total`. Tutti e due funzionano esattamente come per un bag. L'unica differenza è che i numeri non devono essere interi. Qui `total` somma i pesi `2.5` e `0.75`, e il risultato è `3.25`. È la somma dei pesi, non il numero dei valori. I bag e i mix sono utili ogni volta che devi tenere traccia di quantità. Per esempio, puoi contare quante volte compare ogni parola in un testo. Oppure puoi dare dei pesi a delle opzioni.

{% include nav.html %}
