---
title: 'Solution: Dump di una variabile tipizzata'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my Int $n = 42;
dd $n;
```

🦋 Puoi trovare il codice sorgente nel file [dump-typed.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-typed.raku).

## Output

```
Int $n = 42
```

## Commenti

1. La variabile ha un tipo dichiarato. Così `dd` stampa il tipo prima del nome: `Int $n = 42`.

1. Per una variabile senza tipo, `dd` stampa solo `$n = 42`. Davanti non c'è nessun tipo.

{% include nav.html %}
