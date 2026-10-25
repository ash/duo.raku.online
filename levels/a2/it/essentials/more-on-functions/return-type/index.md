---
title: Tipo di ritorno
---

{% include menu.html %}

Puoi anche dare un tipo al risultato di una funzione. Ci sono alcuni modi per scriverlo nel codice.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Scegli quello che ti piace di più. Guarda il quarto esempio. Lì, il tipo del risultato è dentro le parentesi. Anche i parametri della funzione sono lì.

{% include nav.html %}
