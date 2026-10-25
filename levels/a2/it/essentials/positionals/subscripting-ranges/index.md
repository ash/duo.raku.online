---
title: Sottoscrizione degli intervalli
---

{% include menu.html %}

Un `Range` è un tipo di dato posizionale. Come in un array, puoi prendere uno qualsiasi dei suoi elementi.

Un intervallo crea una sequenza di elementi. Per esempio, ecco come stampi il quarto elemento:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Nota una differenza importante dagli array. Un intervallo non tiene sempre tutti i suoi valori in memoria.

## Dimensione

Per avere la dimensione di un intervallo, usa il metodo `elems`. Funziona come con gli array.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
