---
title: 'Solution: Whatever con map'
translations_gpt: true
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

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

1. `* * 3` è un'espressione Whatever. Diventa un `WhateverCode` con un argomento. Questo è un normale valore funzione. Il programma lo tiene in `$triple`.

1. È solo una funzione. Quindi `map` la prende come qualsiasi blocco. `map` la usa su ogni elemento di `1..4`. Il risultato è `(3 6 9 12)`.

{% include nav.html %}
