---
title: Tipo di ritorno
---

{% include menu.html %}

Puoi anche dare un tipo esplicito al risultato di una funzione. Ci sono alcuni modi per scriverlo nel codice.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Scegli quello che ti piace di più. Nota il quarto esempio. Lì, il tipo di ritorno è dentro le parentesi, insieme ai parametri della funzione.

{% include nav.html %}
