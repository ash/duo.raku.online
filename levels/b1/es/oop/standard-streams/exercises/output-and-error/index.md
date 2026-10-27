---
title: Salida y error
translations_gpt:
---

{% include menu.html %}

## Problema

Un programa suma en un bucle la lista de números `3, 5, 7`. En cada vuelta, manda el total acumulado actual al error estándar como mensaje de progreso. Después del bucle, manda el resultado final a la salida estándar. Usa directamente los manejadores de los flujos.

Esta separación es importante. Puedes guardar el resultado o pasarlo a otro programa. Mientras tanto, los mensajes de progreso se quedan en el error estándar, sin molestar.

## Ejemplo

Cuando ejecutas el programa, los dos flujos aparecen en la pantalla. Primero vienen los totales acumulados, y después el resultado final:

```
running total: 3
running total: 8
running total: 15
15
```

Pero si descartas el error estándar, solo queda el resultado real:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
