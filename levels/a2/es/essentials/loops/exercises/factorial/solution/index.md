---
title: 'Solution: Factorial'
---

{% include menu.html %}

El factorial de `N` es el resultado de multiplicar todos los números enteros de 1 a `N`. Por ejemplo, el factorial de 4 es 1 * 2 * 3 * 4 = 24.

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

Este programa usa el operador `*=`. Es una forma corta de multiplicar y asignar: `$x *= $y` significa lo mismo que `$x = $x * $y`.

También puedes usar un bucle ‘completo’ en lugar de la forma postfija:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Más sobre esto

Volvemos a esta tarea varias veces en el curso. En esta parte del curso, también la resolvemos con recursión.

En la segunda parte del curso, vas a aprender sobre los operadores de reducción. Con ellos, la solución es muy fácil. También vas a aprender a crear tu propio operador `!`. Entonces puedes escribir `$n!` para obtener un factorial. Más adelante, vamos a ver otra solución interesante con la cláusula `where`.

{% include nav.html %}
