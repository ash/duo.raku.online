---
title: Sottoscrizione degli intervalli
---

{% include menu.html %}

Un `Range` è un tipo di dato posizionale. Come con gli array, puoi ottenere uno qualsiasi dei suoi elementi.

Per esempio, ecco come stampare il quarto elemento che l'intervallo genera:

```raku
my $r = 10..20;
say $r[3]; # 13
```

C'è una differenza importante. A differenza degli array, gli intervalli non tengono sempre tutti i loro valori in memoria.

## Dimensione

Per ottenere la dimensione di un intervallo, usa il metodo `elems`, proprio come con gli array.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
