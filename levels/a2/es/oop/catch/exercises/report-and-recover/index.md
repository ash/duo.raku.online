---
title: Informe y recupérese
translations_gpt:
---

{% include menu.html %}

## Problema

Muestra cómo `CATCH` ayuda a un programa a recuperarse después de un error. El programa no se detiene. Sigue con un valor por defecto seguro.

Antes de un bloque, crea una variable `$timeout`. Dale el valor por defecto `30`. Dentro del bloque, haz `die 'config missing'`. En la línea siguiente, intenta poner `$timeout` a `60`. El programa nunca llega a esta línea. Añade un phaser `CATCH` con un bloque `default`. Este bloque imprime `warning: <mensaje>; keeping default`. Después del bloque, imprime `timeout is <timeout> seconds`.

## Ejemplo

El programa imprime:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
