---
title: 'Solution: Contare'
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $n = 9;

say $n++;
say $n;
```

🦋 Puoi trovare il codice sorgente nel file [count-up.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operator-types/count-up.raku).

## Output

```
9
10
```

## Commenti

1. `++` è un operatore postfisso, cioè viene dopo il suo operando. In un'espressione, `$n++` dà prima il *vecchio* valore `9`. È questo che stampa `say`. Solo dopo aumenta la variabile.

1. La seconda riga mostra che `$n` è davvero diventato `10`. La forma prefissa `++$n` aggiungerebbe prima uno e poi restituirebbe `10`.

{% include nav.html %}
