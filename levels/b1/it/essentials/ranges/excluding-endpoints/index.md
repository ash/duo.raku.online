---
title: Escludere gli endpoint
---

{% include menu.html %}

Puoi escludere un estremo di un intervallo, o entrambi. Per farlo, aggiungi il carattere `^` all'operatore di intervallo. In questo modo, puoi costruire altri tre operatori. I commenti elencano i numeri che genera ogni intervallo.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

In casi semplici come questi, puoi togliere gli spazi intorno all'operatore:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Per un intervallo che inizia da 0, come `0..^5`, esiste una forma breve: `^5`.

{% include nav.html %}
