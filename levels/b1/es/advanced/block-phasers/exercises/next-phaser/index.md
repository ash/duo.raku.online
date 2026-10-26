---
title: Después de cada paso
---

{% include menu.html %}

## Problema

El phaser `NEXT` se ejecuta al *final* de cada vuelta de un bucle. Es un buen momento para informar del progreso.

Guarda en `$sum` un total que crece mientras el bucle se ejecuta. Empieza en `0`. Recorre `1..3` y, en cada vuelta, primero suma el número actual a `$sum`. Luego usa un phaser `NEXT` para imprimir `sum so far: $sum` después de cada vuelta.

Presta atención al orden. El phaser `NEXT` se ejecuta después del cuerpo. Así que el total que muestra *incluye* el número actual.

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
