---
title: Strings vergelijken
---

{% include menu.html %}

Om strings te vergelijken, gebruikt Raku een aparte set operators:

`eq` | Gelijk aan
`ne` | Niet gelijk aan
`gt` | Groter dan
`ge` | Groter dan of gelijk aan
`lt` | Kleiner dan
`le` | Kleiner dan of gelijk aan

## Voorbeelden

Bekijk deze voorbeelden, die twee strings vergelijken:

```raku
say 'alpha' lt 'beta'; # Waar
say 'word' ne 'Word';  # Waar
say 'xyz' gt 'xvw';    # Waar
```

{% include nav.html %}
