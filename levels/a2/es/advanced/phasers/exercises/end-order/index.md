---
title: El orden de los END
---

{% include menu.html %}

## Problema

Un programa puede tener más de un phaser `END`. Entonces se ejecutan en orden **inverso**. El último en el código se ejecuta primero. Esto se llama “último en entrar, primero en salir”.

Escribe dos phasers `END`. El primero imprime `first END`. El segundo imprime `second END`. Después de ellos, escribe un simple `say 'body'`. ¿Cuál es el orden de la salida? Primero, adivínalo. Después, obtén esta salida con tu programa.

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
