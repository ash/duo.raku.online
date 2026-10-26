---
title: Mensaje final
---

{% include menu.html %}

## Problema

Un phaser `END` se ejecuta después del código principal. Por eso ve el estado *final* de tus variables. Esto lo hace perfecto para un resumen.

Declara un contador `$count` con valor `0`. Escribe un phaser `END` que imprima `processed $count items`, y colócalo antes del código principal. Después, en el cuerpo principal, aumenta el contador tres veces con un bucle. El resumen debe mostrar el valor final del contador. No debe mostrar el valor que tiene en el punto donde está escrito el phaser.

## Ejemplo

El programa imprime:

```
processed 3 items
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
