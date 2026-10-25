---
title: Comparación de cadenas
---

{% include menu.html %}

Para comparar cadenas, Raku usa otro conjunto de operadores:

`eq` | Igual
`ne` | No igual
`gt` | Mayor que
`ge` | Mayor o igual que
`lt` | Menor que
`le` | Menor o igual que

## Ejemplos

Mira estos ejemplos, que comparan dos cadenas:

```raku
say 'alpha' lt 'beta'; # True
say 'word' ne 'Word';  # True
say 'xyz' gt 'xvw';    # True
```

{% include nav.html %}
