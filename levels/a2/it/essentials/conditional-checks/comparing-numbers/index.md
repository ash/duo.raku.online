---
title: Confronto dei numeri
---

{% include menu.html %}

Usa questi operatori per confrontare due numeri. Conosci altri linguaggi di programmazione? Allora sono tutti molto chiari per te.

`==` | Uguale
`!=` | Diverso
`<` | Minore di
`<=` | Minore o uguale
`>` | Maggiore di
`>=` | Maggiore o uguale

## Approssimativamente uguale

Raku ha gli operatori standard. Ne aggiunge anche un altro: `=~=`. Questo operatore controlla se due numeri sono quasi uguali. Il risultato è `True` se i numeri sono vicini. Raku confronta la differenza con la grandezza dei numeri. Questo dà la differenza relativa. Non deve essere più grande del valore integrato `$*TOLERANCE`. Questo valore è `1e-15`.

## Versioni Unicode

Alcuni di questi operatori hanno anche una forma Unicode:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Esempi

Ecco alcuni esempi di confronto tra numeri:

```raku
say 10 == 10; # True
say 10 != 10; # False

say 15 < 10;  # False
say 10 <= 10; # True
say 16 > 10;  # True
say 10 >= 14; # False

say 1.000000000000000000000001 =~= 1.000000000000000000000002; # True
say 2e17 + 1 =~= 2e17 + 100; # True
```

Nota che `1.000000000000000000000001` è un numero `Rat`. L'espressione lo confronta con un numero molto vicino, `1.000000000000000000000002`. Con i numeri `Rat`, qui non perdi precisione. Raku tiene tutte le cifre. L'ultimo esempio ha `2e17`. Usa numeri `Num`. La loro precisione è limitata. Non possono tenere tutte le cifre.

{% include nav.html %}
