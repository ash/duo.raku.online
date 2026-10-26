---
title: 'Solution: Un Whatever de dos argumentos'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $join = * ~ '-' ~ *;

say $join('a', 'b');
```

🦋 Encuentra el programa en el archivo [two-arg-whatever.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/two-arg-whatever.raku).

## Salida

```
a-b
```

## Comentarios

1. La expresión tiene dos estrellas, así que Raku construye un `WhateverCode` que toma dos argumentos. La primera estrella es el primer argumento, y la segunda estrella es el segundo.

1. La llamada `$join('a', 'b')` rellena las estrellas en orden. Esto da `'a' ~ '-' ~ 'b'`, que es `a-b`.

{% include nav.html %}
