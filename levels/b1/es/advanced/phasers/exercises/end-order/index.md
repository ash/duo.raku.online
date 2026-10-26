---
title: El orden de los END
---

{% include menu.html %}

## Problema

Un programa puede tener más de un phaser `END`. En ese caso, se ejecutan en el orden **inverso** al que se escribieron. El último que declaras se ejecuta primero: último en entrar, primero en salir.

Escribe dos phasers `END`. El primero imprime `first END`, y el segundo imprime `second END`. Después de ellos, añade un simple `say 'body'`. Predice el orden de la salida, y después obtén la misma salida con tu programa.

## Ejemplo

El programa imprime:

```
body
second END
first END
```

## Solución

✅ [Ve la solución](solution)

{% include nav.html %}
