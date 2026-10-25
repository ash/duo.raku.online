---
title: Parametri posizionali
---

{% include menu.html %}

L'ordine dei parametri di una funzione è importante. Per esempio, prendi una funzione. La funzione calcola la differenza tra due numeri:

```raku
sub diff($a, $b) { $a - $b }
```

Certo, `diff(10, 20)` e `diff(20, 10)` danno risultati diversi.

Nella funzione sopra, i parametri sono un elenco con virgole. Questi parametri si chiamano _posizionali_. In una chiamata, l'ordine degli argomenti è importante. L'ordine decide il significato di ogni parametro.

{% include nav.html %}
