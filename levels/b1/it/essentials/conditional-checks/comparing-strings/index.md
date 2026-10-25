---
title: Confronto delle stringhe
---

{% include menu.html %}

Per confrontare le stringhe, Raku usa un gruppo separato di operatori:

`eq` | Uguale
`ne` | Non uguale
`gt` | Maggiore di
`ge` | Maggiore o uguale a
`lt` | Minore di
`le` | Minore o uguale a

## Esempi

Guarda questi esempi, che confrontano due stringhe:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% include nav.html %}
