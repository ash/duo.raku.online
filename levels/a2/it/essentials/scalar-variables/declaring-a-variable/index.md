---
title: Dichiarazione di una variabile
---

{% include menu.html %}

Devi annunciare una variabile prima di usarla. Raku ha parole speciali per questo. Si chiamano _dichiaratori_. Per dichiarare una variabile, usa `my`, così:

```raku
my $name;
```

Ora hai una nuova variabile. Non ha ancora un valore. Ma il compilatore conosce già il suo nome. Più avanti, il programma usa di nuovo lo stesso nome. Allora il compilatore sa quale variabile è.

## Più di una variabile

Un solo `my` può dichiarare due o più variabili:

```raku
my ($x, $y);
```

{% include nav.html %}
