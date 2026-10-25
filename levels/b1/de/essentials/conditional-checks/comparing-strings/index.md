---
title: Vergleichen von Zeichenketten
---

{% include menu.html %}

Um Zeichenketten zu vergleichen, benutzt Raku eine eigene Gruppe von Operatoren:

`eq` | Gleich
`ne` | Ungleich
`gt` | Größer als
`ge` | Größer als oder gleich
`lt` | Kleiner als
`le` | Kleiner als oder gleich

## Beispiele

Sehen Sie sich diese Beispiele an, die zwei Zeichenketten vergleichen:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% include nav.html %}
