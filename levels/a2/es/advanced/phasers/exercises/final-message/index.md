---
title: Mensaje final
---

{% include menu.html %}

## Problema

Un phaser `END` se ejecuta después del código principal. Así, ve los valores *finales* de tus variables. Por eso es muy bueno para un resumen.

Crea un contador `$count` con el valor `0`. Escribe un phaser `END` que imprima `processed $count items`. Pon el phaser antes del código principal. Después, en el cuerpo principal, suma 1 al contador tres veces. Usa un bucle para esto. El resumen debe mostrar el último valor del contador. No debe mostrar el valor antiguo de la línea del phaser.

## Ejemplo

El programa imprime:

```
processed 3 items
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
