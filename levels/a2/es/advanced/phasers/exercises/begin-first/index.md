---
title: Begin primero
---

{% include menu.html %}

## Problema

Un phaser `BEGIN` no es solo un bloque que se ejecuta temprano. También es una *expresión*. Raku calcula su valor una vez, cuando compila el programa. Después, el valor se queda en el programa y no cambia.

Crea una variable `$compiled`. Dale su primer valor con `BEGIN { 2 + 3 }`. Después imprime la variable. Raku calcula `2 + 3` durante la compilación. Pero aún puedes usar el valor guardado cuando el programa se ejecuta.

## Ejemplo

El programa imprime:

```
5
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
