---
title: 'Solution: Factorial'
---

{% include menu.html %}

Para obtener el factorial de `N`, multiplica todos los números de 1 a `N`. Por ejemplo, el factorial de 4 es 1 * 2 * 3 * 4 = 24.

## Código

```raku
my $n = 8;

my $f = 1;
$f *= $_ for 2..$n;

say $f;
```

🦋 Encuentra el programa en el archivo [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/loops/factorial.raku).

## Salida

Ejecuta el programa varias veces. Prueba diferentes valores de `$n`.

```console
$ raku exercises/loops/factorial.raku
40320
```

## Comentarios

El programa usa el operador `*=`. Multiplica y guarda el resultado en la variable. Así, `$x *= $y` es lo mismo que `$x = $x * $y`.

También puedes escribir un bucle ‘completo’, con `for` antes del bloque:

```raku
my $n = 8;

my $f = 1;
for 2..$n -> $x {
    $f *= $x;
}

say $f;
```

## Más sobre esto

Esta tarea vuelve varias veces en el curso. En esta parte, también la resolvemos de otra forma. Usamos una función que se llama a sí misma.

En la segunda parte, vas a aprender sobre los operadores de reducción. Con ellos, la solución es muy fácil. También vas a aprender a crear tu propio operador, `!`. Entonces puedes escribir `$n!` para obtener un factorial. Más adelante, vas a ver otra solución bonita con `where`.

{% include nav.html %}
