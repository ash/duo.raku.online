---
title: Confronto dei numeri
---

{% include menu.html %}

Per confrontare due numeri, usa i seguenti operatori. Se conosci altri linguaggi di programmazione, sono tutti abbastanza chiari.

`==` | Uguale
`!=` | Diverso
`<` | Minore di
`<=` | Minore o uguale
`>` | Maggiore di
`>=` | Maggiore o uguale

## Approssimativamente uguale

Oltre agli operatori standard, Raku ne aggiunge un altro: l'operatore approssimativamente uguale `=~=`. Controlla se due numeri sono quasi uguali. Il risultato è `True` se i due numeri sono relativamente vicini tra loro. La differenza relativa non deve essere più grande del valore integrato `$*TOLERANCE`. Questo valore è `1e-15`.

## Versioni Unicode

Alcuni degli operatori qui sopra hanno anche versioni Unicode:

`!=` | `≠`
`<=` | `≤` 
`>=` | `≥`
`=~=` | `≅`

## Esempi

Ecco alcuni esempi di confronto tra numeri con questi operatori:

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

Nota che `1.000000000000000000000001` è un numero `Rat`. Per questo, il confronto con il numero vicino `1.000000000000000000000002` mantiene tutta la precisione. L'ultimo esempio, con `2e17`, lavora con numeri `Num`. La loro precisione è limitata.

{% include nav.html %}
