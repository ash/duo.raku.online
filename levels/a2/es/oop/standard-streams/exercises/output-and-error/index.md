---
title: Salida y error
translations_gpt:
---

{% include menu.html %}

## Problema

Un programa suma en un bucle la lista de números `3, 5, 7`. En cada vuelta, manda la suma hasta ese momento al error estándar. Esta suma es el total acumulado. Es un mensaje sobre el progreso. Después del bucle, manda el resultado final a la salida estándar. Usa directamente los manejadores de los flujos.

¿Por qué es importante esto? Puedes guardar el resultado o mandarlo a otro programa. Los mensajes de progreso se quedan en el error estándar. Allí no molestan.

## Ejemplo

Ejecuta el programa. Ves los dos flujos en la pantalla. Primero vienen los totales acumulados y después el resultado final:

```
running total: 3
running total: 8
running total: 15
15
```

Pero ahora tiramos el error estándar. Solo queda el resultado real:

```
$ raku output-and-error.raku 2>/dev/null
15
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
