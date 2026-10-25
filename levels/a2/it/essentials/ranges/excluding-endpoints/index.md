---
title: Escludere gli endpoint
---

{% include menu.html %}

Puoi lasciare fuori un estremo dell'intervallo, o tutti e due. Per farlo, aggiungi il carattere `^` all'operatore di intervallo. Così hai altri tre operatori. I commenti mostrano i numeri che dà ogni intervallo.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

I casi qui sopra sono semplici. In casi così, puoi togliere gli spazi intorno all'operatore di intervallo:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Alcuni intervalli iniziano da 0, per esempio, `0..^5`. C'è un modo breve per scrivere un intervallo così: `^5`.

{% include nav.html %}
