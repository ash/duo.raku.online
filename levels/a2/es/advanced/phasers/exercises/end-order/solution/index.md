---
title: 'Solution: El orden de los END'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
END say 'first END';
END say 'second END';

say 'body';
```

🦋 Encuentra el programa en el archivo [end-order.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/end-order.raku).

## Salida

```
body
second END
first END
```

## Comentarios

1. Los dos phasers `END` se ejecutan después del código principal. Así, el programa imprime `body` primero.

1. Varios phasers `END` se ejecutan en el orden “último en entrar, primero en salir”. El `second END` va después en el código. Pero se ejecuta antes que el `first END`. Esto es como la limpieza en los programas reales. Normalmente, primero debes deshacer la última configuración.

{% include nav.html %}
