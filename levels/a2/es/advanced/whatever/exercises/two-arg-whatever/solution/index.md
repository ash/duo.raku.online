---
title: 'Solution: Un Whatever de dos argumentos'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. La expresión tiene dos estrellas. Así que Raku crea un `WhateverCode` con dos argumentos. La primera estrella es el primer argumento. La segunda estrella es el segundo argumento.

1. La llamada `$join('a', 'b')` pone los valores en las estrellas, en orden. Esto da `'a' ~ '-' ~ 'b'`. El resultado es `a-b`.

{% include nav.html %}
