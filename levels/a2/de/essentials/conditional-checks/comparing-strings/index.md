---
title: Vergleichen von Zeichenketten
---

{% include menu.html %}

Zeichenketten haben eigene Operatoren für den Vergleich:

`eq` | Gleich
`ne` | Ungleich
`gt` | Größer als
`ge` | Größer als oder gleich
`lt` | Kleiner als
`le` | Kleiner als oder gleich

## Beispiele

Hier sind ein paar Beispiele. Jedes vergleicht zwei Zeichenketten:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% include nav.html %}
