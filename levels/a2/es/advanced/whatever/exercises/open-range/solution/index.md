---
title: 'Solution: Un rango abierto'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Los primeros valores, `2, 4`, fijan el paso. Cada número es dos más que el anterior. La estrella sola al final significa que la secuencia nunca termina.

1. `head(4)` toma solo los cuatro primeros valores: `2, 4, 6, 8`. La secuencia es perezosa. Así que Raku nunca calcula el resto infinito. Aquí, la estrella sola significa "lo que sea, sin límite superior".

{% include nav.html %}
