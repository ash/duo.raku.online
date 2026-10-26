---
title: Un array nativo
---

{% include menu.html %}

## Problema

El uso natural de un tipo nativo con tamaño es un array de bytes. Un array así usa poca memoria. Declara un array `uint8` con los valores `100`, `200` y `255`. Cada uno de ellos cabe en un solo byte. Luego imprime la suma de sus elementos.

Ten en cuenta que cada elemento queda en el rango `0..255`, pero la suma puede ser mayor. Esto es porque `.sum` devuelve un `Int` normal.

## Ejemplo

El programa imprime:

```
555
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
