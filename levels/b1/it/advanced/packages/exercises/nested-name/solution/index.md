---
title: 'Solution: Un nome annidato'
translations_gpt: true
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Quando metti un namespace dentro un altro, ottieni un percorso `::` più lungo. Sia la variabile sia la subroutine sono a due livelli di profondità, in `Outer::Inner`.

1. Il nome completo `$Outer::Inner::base` raggiunge la variabile. `Outer::Inner::doubled()` raggiunge la subroutine attraverso gli stessi due livelli. Il nome di una sub non ha sigillo. Quindi, a differenza della variabile, non ha `$` davanti.

1. Entrambi i membri sono dichiarati con `our`. È questo che li rende visibili fuori dal loro modulo. Con `my`, resterebbero privati dentro `Inner`.

{% include nav.html %}
