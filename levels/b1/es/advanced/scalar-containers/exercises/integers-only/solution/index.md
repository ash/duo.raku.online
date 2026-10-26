---
title: 'Solution: Solo enteros'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución para la tarea.

## Código

```raku
my Int $cars;

$cars = 250.7.Int;
say $cars;
say $cars.WHAT;
```

🦋 Encuentra el programa en el archivo [integers-only.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/integers-only.raku).

## Salida

```
250
(Int)
```

## Comentarios

1. La restricción de tipo `Int` en `my Int $cars` hace que el contenedor rechace todos los valores que no son enteros. Asignar `250.7`, un `Rat`, directamente daría un error en tiempo de compilación.

1. Llamar a `.Int` sobre el valor racional `250.7` lo convierte en el entero `250`. Simplemente quita la parte fraccionaria. El nuevo valor cabe en el contenedor. No confundas esto con el redondeo.

1. El pseudo-método `.WHAT` muestra que el valor del contenedor es de tipo `Int`.

{% include nav.html %}
