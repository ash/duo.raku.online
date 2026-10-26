---
title: 'Solution: Valore assoluto'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
multi sub abs-value(Int $n where $n < 0) { -$n }
multi sub abs-value(Int $n)              { $n }

say abs-value(-7);
say abs-value(4);
```

🦋 Puoi trovare il codice sorgente nel file [absolute-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/multiple-dispatch/absolute-value.raku).

## Output

```
7
4
```

## Commenti

1. Il primo candidato funziona solo per i numeri negativi. Restituisce il numero con il segno opposto. Questo valore è positivo.

1. Tutti gli altri numeri vanno al secondo candidato. Sono lo zero e i numeri positivi. Il secondo candidato restituisce il valore così com'è.

{% include nav.html %}
