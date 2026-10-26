---
title: 'Solution: Tipado o sin tipar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución para la tarea.

## Código

```raku
my $untyped;
my Int $typed;

dd $untyped;
dd $typed;

$untyped = 42;
$typed = 42;

dd $untyped;
dd $typed;
```

🦋 Encuentra el programa en el archivo [reuse-the-container.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/scalar-containers/reuse-the-container.raku).

## Salida

```
$untyped = Any
Int $typed = Int
$untyped = 42
Int $typed = 42
```

## Comentarios

1. `dd` describe los dos contenedores de manera diferente. Para el que no tiene tipo, imprime solo `$untyped`. Para el que tiene tipo, pone delante el tipo declarado: `Int $typed`. Este prefijo es exactamente lo que cambia un tipo declarado.

1. Los valores vacíos también son diferentes. Un contenedor sin tipo empieza con el valor indefinido simple `Any`. Pero un contenedor con tipo empieza con el valor indefinido de *su* tipo, `Int`.

1. Después de asignar `42` a las dos, los valores se ven iguales. Pero `$typed` todavía tiene su tipo, así que no aceptaría un valor que no sea entero. En cambio, `$untyped` acepta cualquier cosa.

{% include nav.html %}
