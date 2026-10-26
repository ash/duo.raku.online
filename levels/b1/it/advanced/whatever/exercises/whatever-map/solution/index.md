---
title: 'Solution: Whatever con map'
translations_gpt: true
---

{% include menu.html %}

Ecco una possibile soluzione.

## Codice

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Puoi trovare il codice sorgente nel file [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Output

```
(3 6 9 12)
```

## Commenti

1. `* * 3` è un'espressione Whatever che diventa un `WhateverCode` con un argomento. È un valore funzione del tutto normale, salvato in `$triple`.

1. È solo una funzione, quindi `map` la accetta come qualsiasi blocco. `map` la applica a ogni elemento di `1..4`, e il risultato è `(3 6 9 12)`.

{% include nav.html %}
