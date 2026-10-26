---
title: 'Solution: Un Whatever a due argomenti'
translations_gpt: true
---

{% include menu.html %}

Ecco una possibile soluzione.

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

1. L'espressione ha due stelle, quindi Raku costruisce un `WhateverCode` che prende due argomenti. La prima stella è il primo argomento, e la seconda stella è il secondo.

1. La chiamata `$join('a', 'b')` riempie le stelle in ordine. Questo dà `'a' ~ '-' ~ 'b'`, cioè `a-b`.

{% include nav.html %}
