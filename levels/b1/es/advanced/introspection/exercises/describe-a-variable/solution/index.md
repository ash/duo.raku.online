---
title: 'Solution: Describir una variable'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my Str $lang = 'Raku';

say $lang.^name;
say $lang.VAR.^name;
say $lang.VAR.name;
```

🦋 Encuentra el código fuente en el archivo [describe-a-variable.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/introspection/describe-a-variable.raku).

## Salida

```
Str
Scalar
$lang
```

## Comentarios

1. `.^name` da el tipo del valor en el contenedor, que es `Str`.

1. `.VAR` da el contenedor que hay detrás de la variable. Luego `.^name` sobre él devuelve `Scalar`, que es el tipo del contenedor mismo.

1. `.VAR.name` devuelve el nombre de la variable, `$lang`, con su sigil. Observa que este es el método `name`. No es el meta-método `^name` que usamos en las dos primeras líneas.

{% include nav.html %}
