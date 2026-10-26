---
title: 'Solution: Dump di una variabile tipizzata'
translations_gpt:
---

{% include menu.html %}

Ecco una possibile soluzione del compito.

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

1. La variabile ha un tipo dichiarato, quindi `dd` lo stampa prima del nome: `Int $n = 42`.

1. Per una variabile senza tipo, `dd` stamperebbe solo `$n = 42`, senza tipo davanti.

{% include nav.html %}
