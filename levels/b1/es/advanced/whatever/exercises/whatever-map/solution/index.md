---
title: 'Solution: Whatever con map'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $triple = * * 3;

say (1..4).map($triple);
```

🦋 Encuentra el programa en el archivo [whatever-map.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/whatever-map.raku).

## Salida

```
(3 6 9 12)
```

## Comentarios

1. `* * 3` es una expresión Whatever que se convierte en un `WhateverCode` con un argumento. Es un valor de función completamente normal, guardado en `$triple`.

1. Es solo una función, así que `map` la acepta como cualquier bloque. `map` la aplica a cada elemento de `1..4`, lo que da `(3 6 9 12)`.

{% include nav.html %}
