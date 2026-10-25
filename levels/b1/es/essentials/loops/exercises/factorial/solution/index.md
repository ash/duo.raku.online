---
title: 'Solution: Factorial'
---

{% include menu.html %}

El factorial de `N` es el producto de todos los números enteros desde 1 hasta `N`, ambos incluidos. Por ejemplo, el factorial de 4 es 1 * 2 * 3 * 4 = 24.

## Código

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Encuentra el programa en el archivo [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Salida

Ejecuta el programa varias veces y prueba diferentes valores de `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Comentarios

Este programa usa el operador `*=`, una forma abreviada de la multiplicación con asignación: `$x *= $y` es lo mismo que `$x = $x * $y`.

También puedes usar un bucle ‘completo’ en lugar de la forma postfija:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Más sobre este tema

Volveremos a esta tarea varias veces. En esta parte del curso, también la resolveremos de manera recursiva.

En la segunda parte del curso, aprenderemos sobre los llamados operadores de reducción, que hacen que la solución sea muy sencilla. También veremos cómo definir tu propio operador `!`, para que puedas escribir `$n!` y calcular un factorial. Por último, veremos otra solución interesante cuando hablemos sobre la cláusula `where`.

{% include nav.html %}
