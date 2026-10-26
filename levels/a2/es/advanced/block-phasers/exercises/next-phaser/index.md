---
title: Después de cada paso
---

{% include menu.html %}

## Problema

El phaser `NEXT` se ejecuta al *final* de cada vuelta de un bucle. Es un buen momento para mostrar el progreso.

Guarda un total que crece en `$sum`. Empieza en `0`. Recorre `1..3`. En cada vuelta, primero suma el número actual a `$sum`. Usa un phaser `NEXT` para imprimir `sum so far: $sum` después de cada vuelta.

Ten cuidado con el orden. El phaser `NEXT` se ejecuta después del cuerpo. Así que el total que muestra *incluye* el número actual.

## Ejemplo

El programa imprime:

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
