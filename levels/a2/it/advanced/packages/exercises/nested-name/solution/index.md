---
title: 'Solution: Un nome annidato'
translations_gpt: true
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
module Outer {
    module Inner {
        our $base = 10;
        our sub doubled { $base * 2 }
    }
}

say $Outer::Inner::base;
say Outer::Inner::doubled();
```

🦋 Puoi trovare il codice sorgente nel file [nested-name.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/packages/nested-name.raku).

## Output

```
10
20
```

## Commenti

1. Qui un namespace è dentro un altro. Questo crea un percorso `::` più lungo. La variabile e la subroutine sono a due livelli di profondità, in `Outer::Inner`.

1. Il nome completo `$Outer::Inner::base` arriva alla variabile. `Outer::Inner::doubled()` arriva alla subroutine, attraverso gli stessi due livelli. Il nome di una sub non ha sigillo. Quindi non ha `$` davanti, ma la variabile ce l'ha.

1. Tutte e due hanno `our` davanti. Questo le rende visibili fuori dal loro modulo. Con `my`, resterebbero private dentro `Inner`.

{% include nav.html %}
