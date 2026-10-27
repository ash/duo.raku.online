---
title: 'Soluzione: Un valore di ripiego'
translations_gpt:
---

{% include menu.html %}

Ecco un modo per risolvere il compito.

## Codice

```raku
sub get($x) {
    fail 'bad' if $x == 0;
    return $x;
}

say get(5) // 'default';
say get(0) // 'default';
```

🦋 Trova il programma nel file [fallback-value.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/failures/fallback-value.raku).

## Output

```
5
default
```

## Commenti

1. `get(5)` restituisce `5` come al solito. Quindi `//` tiene questo valore.

1. `get(0)` restituisce un `Failure`. Un `Failure` è un valore con dentro un errore. Non è definito. Quindi `//` usa il ripiego, `'default'`. `//` gestisce in silenzio il `Failure` non definito. Non solleva un'eccezione.

{% include nav.html %}
