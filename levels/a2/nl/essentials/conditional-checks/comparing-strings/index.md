---
title: Strings vergelijken
---

{% include menu.html %}

Strings hebben eigen operators om ze te vergelijken:

`eq` | Gelijk aan
`ne` | Niet gelijk aan
`gt` | Groter dan
`ge` | Groter dan of gelijk aan
`lt` | Kleiner dan
`le` | Kleiner dan of gelijk aan

## Voorbeelden

Hier zijn een paar voorbeelden. Elk voorbeeld vergelijkt twee strings:

```raku
say 'alpha' lt 'beta'; # Waar
say 'word' ne 'Word';  # Waar
say 'xyz' gt 'xvw';    # Waar
```

{% include nav.html %}
