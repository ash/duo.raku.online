---
title: 'Solution: Tipado o sin tipar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `dd` muestra los dos contenedores de formas diferentes. Para el que no tiene tipo, imprime solo `$untyped`. Para el que tiene tipo, pone el tipo declarado delante: `Int $typed`. Esto es justo lo que cambia un tipo declarado.

1. Los valores vacíos también son diferentes. Un contenedor sin tipo empieza con `Any`. Es el valor indefinido básico. Un contenedor con tipo empieza con el valor indefinido de *su* tipo. Aquí es `Int`.

1. Luego las dos variables reciben `42`. Ahora los valores se ven iguales. Pero `$typed` todavía tiene su tipo. No acepta un valor que no sea entero. `$untyped` acepta cualquier valor.

{% include nav.html %}
