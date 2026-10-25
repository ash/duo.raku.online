---
title: Operazioni booleane
---

{% include menu.html %}

Puoi fare tutte le solite operazioni con i valori booleani. Sono AND booleano, OR e OR esclusivo. L'OR esclusivo si chiama anche XOR:

```raku
say False && True; # AND
say False || True; # OR
say False ^^ True; # XOR
```

Il programma stampa questo:

    False
    True
    True

## Negazione

La negazione dà il valore booleano opposto. Per la negazione, usa l'operatore prefisso `!`. Un operatore prefisso va prima del valore:

```raku
say !False; # True
```

Una variabile scalare può tenere un valore booleano:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
