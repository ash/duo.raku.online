---
title: Bag e mix
---

{% include menu.html %}

Un set ricorda solo _se_ un valore c'è. A volte vuoi sapere anche _quante volte_ c'è. Per questo c'è il `Bag`. Tiene un conteggio per ogni valore.

Per creare un bag, usa la routine `bag`. Un bag non unisce in uno i valori ripetuti. Li conta:

```raku
my $b = bag(<a b a c a>);
say $b<a>; # 3
say $b<b>; # 1
```

Chiedi al bag un valore con il subscript `< >`. Ottieni quante volte questo valore è entrato nel bag. Il metodo `total` somma tutti i conteggi:

```raku
say bag(<a b a c a>).total; # 5
```

Un `Mix` è come un bag. Ma in un mix i conteggi si chiamano _pesi_. Un peso non deve essere per forza un numero intero. Può anche essere una frazione. Puoi dare tu i pesi. Metti ogni valore in coppia con il suo peso. Poi trasforma la lista in un mix con `.Mix`:

```raku
my $m = (flour => 2.5, sugar => 0.75).Mix;
say $m<flour>; # 2.5
say $m.total;  # 3.25
```

Prendi un peso con `< >`. Sommi i pesi con `total`. Tutti e due funzionano come per un bag. Solo che i numeri non devono essere interi. Qui `total` somma i pesi `2.5` e `0.75`. Il risultato è `3.25`. Quindi `total` dà la somma dei pesi. Non conta i valori. I bag e i mix sono utili quando devi contare delle quantità. Per esempio, un bag può contare le parole in un testo. Ti dice quante volte compare ogni parola. Un mix può dare dei pesi a delle opzioni.

{% include nav.html %}
