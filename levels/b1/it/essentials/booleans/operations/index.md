---
title: Operazioni booleane
---

{% include menu.html %}

Puoi usare tutte le operazioni standard con i valori booleani. Sono AND booleano, OR e OR esclusivo (chiamato anche XOR):

```raku
say False && True; # AND
say False || True; # OR
say False ^^ True; # XOR
```

Il programma stampa questi risultati:

    False
    True
    True

## Negazione

La negazione trasforma un valore booleano nel suo opposto. Per negare un valore, usa l'operatore prefisso `!`:

```raku
say !False; # True
```

Puoi salvare i valori booleani in variabili scalari:

```raku
my $did = True;
my $didn't = !$did;
```

{% include nav.html %}
