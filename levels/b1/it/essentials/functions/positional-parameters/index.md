---
title: Parametri posizionali
---

{% include menu.html %}

L'ordine dei parametri di una funzione conta. Per esempio, creiamo una funzione che calcola la differenza tra due numeri:

```raku
sub diff($a, $b) { $a - $b }
```

È chiaro che la chiamata `diff(10, 20)` dà un risultato diverso da `diff(20, 10)`.

I parametri in un elenco con virgole, come nella funzione sopra, si chiamano _posizionali_. Il loro significato dipende dall'ordine degli argomenti quando chiami la funzione.

{% include nav.html %}
