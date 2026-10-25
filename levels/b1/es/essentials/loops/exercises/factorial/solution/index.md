---
title: 'Solution: Factorial'
---

{% include menu.html %}

El factorial de `N` es el producto de todos los números enteros de 1 a `N`. Por ejemplo, el factorial de 4 es 1 * 2 * 3 * 4 = 24.

## Código

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Encuentra el programa en el archivo [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Salida

Ejecuta el programa varias veces con diferentes valores de `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Comentarios

Este programa usa el operador `*=`, que multiplica y asigna en un solo paso: `$x *= $y` significa lo mismo que `$x = $x * $y`.

En lugar de la forma postfija, también puedes usar un bucle ‘completo’:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Más sobre este tema

Volveremos a esta tarea varias veces. Más adelante en esta parte del curso, también la resolveremos con recursión.

En la segunda parte del curso, aprenderemos sobre los operadores de reducción. Estos operadores hacen que la solución sea muy sencilla. También crearemos nuestro propio operador `!`, para que `$n!` calcule un factorial. Por último, habrá otra solución interesante cuando hablemos de la cláusula `where`.

{% include nav.html %}
