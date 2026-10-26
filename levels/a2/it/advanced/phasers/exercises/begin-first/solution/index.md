---
title: 'Solution: Begin per primo'
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Puoi trovare il codice sorgente nel file [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Output

```
5
```

## Commenti

1. `BEGIN { 2 + 3 }` parte durante la compilazione. Dà `5`. Qui il blocco `BEGIN` è un'espressione. Così restituisce il suo valore. Il programma mette questo valore in `$compiled`.

1. Il calcolo avviene una sola volta, durante la compilazione. Durante l'esecuzione, `$compiled` tiene solo il valore fisso `5`. Così puoi usare `BEGIN` per calcolare dei valori prima. Non serve solo per stampare presto.

{% include nav.html %}
