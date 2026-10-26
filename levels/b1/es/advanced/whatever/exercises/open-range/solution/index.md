---
title: 'Solution: Un rango abierto'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
say (2, 4 ... *).head(4);
```

🦋 Encuentra el programa en el archivo [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Salida

```
(2 4 6 8)
```

## Comentarios

1. Los valores iniciales `2, 4` fijan un paso aritmético: cada número nuevo es dos más. La estrella `*` por sí sola, al final, significa que la secuencia nunca termina.

1. `head(4)` toma solo los cuatro primeros valores, `2, 4, 6, 8`. La secuencia es perezosa, así que el resto infinito nunca se calcula. Aquí, la estrella por sí sola significa "lo que sea, sin límite superior".

{% include nav.html %}
