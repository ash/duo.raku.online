---
title: 'Solution: Un Whatever a due argomenti'
translations_gpt: true
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Puoi trovare il codice sorgente nel file [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Output

```
a-b
```

## Commenti

1. L'espressione ha due stelle. Quindi Raku crea un `WhateverCode` con due argomenti. La prima stella è il primo argomento. La seconda stella è il secondo argomento.

1. La chiamata `$join('a', 'b')` mette i valori al posto delle stelle, in ordine. Questo dà `'a' ~ '-' ~ 'b'`. Il risultato è `a-b`.

{% include nav.html %}
