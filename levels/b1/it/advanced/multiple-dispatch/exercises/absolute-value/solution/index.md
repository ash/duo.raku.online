---
title: 'Solution: Valore assoluto'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. Il primo candidato corrisponde solo ai numeri negativi. Restituisce il valore con il segno opposto, che è positivo.

1. Tutti gli altri numeri, cioè lo zero e i numeri positivi, vanno al secondo candidato. Restituisce il valore senza nessuna modifica.

{% include nav.html %}
