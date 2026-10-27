---
title: Informe y recupérese
translations_gpt:
---

{% include menu.html %}

## Problema

Muestra cómo un programa puede recuperarse con la ayuda de `CATCH`. Sigue adelante con un valor por defecto razonable.

Antes de un bloque, declara una variable `$timeout` con el valor por defecto `30`. Dentro del bloque, haz `die 'config missing'`. Después, en una línea que nunca se ejecuta, intenta poner `$timeout` a `60`. Usa un phaser `CATCH` cuyo bloque `default` imprima `warning: <mensaje>; keeping default`. Después del bloque, imprime `timeout is <timeout> seconds`.

## Ejemplo

El programa imprime:

```
warning: config missing; keeping default
timeout is 30 seconds
```

## Solución

✅ [Ver la solución](solution)

{% include nav.html %}
