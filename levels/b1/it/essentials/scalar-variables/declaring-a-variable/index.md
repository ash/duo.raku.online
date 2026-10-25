---
title: Dichiarazione di una variabile
---

{% include menu.html %}

Prima di usare una variabile, devi annunciarla. Raku ha parole speciali per questo, chiamate _dichiaratori_. Per dichiarare una variabile, scrivi `my` così:

```raku
my $name;
```

Con questa riga, hai creato una nuova variabile, che non ha ancora un valore. Ma il compilatore la conosce già. Quando lo stesso nome appare più avanti nel programma, il compilatore la riconosce.

## Più di una variabile

Puoi dichiarare due o più variabili con un solo dichiaratore `my`:

```raku
my ($x, $y);
```

{% include nav.html %}
