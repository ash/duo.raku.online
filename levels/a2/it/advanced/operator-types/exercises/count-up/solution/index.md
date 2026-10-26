---
title: 'Solution: Contare'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `++` è un operatore postfisso. Viene dopo il suo operando. In un'espressione, `$n++` prima dà il *vecchio* valore, `9`. È quello che stampa `say`. Solo dopo, `++` aggiunge 1 alla variabile.

1. La seconda riga mostra che ora `$n` è `10`. La forma prefissa `++$n` funziona in un altro modo. Prima aggiunge 1, e poi restituisce `10`.

{% include nav.html %}
