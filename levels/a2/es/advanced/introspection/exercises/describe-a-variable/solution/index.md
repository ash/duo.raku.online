---
title: 'Solution: Describir una variable'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `.^name` devuelve el tipo del valor en el contenedor. Este tipo es `Str`.

1. `.VAR` devuelve el contenedor que hay detrás de la variable. `.^name` sobre el contenedor devuelve `Scalar`. Este es el tipo del contenedor mismo.

1. `.VAR.name` devuelve el nombre de la variable con su sigil: `$lang`. Observa que este es el método `name`. No es el meta-método `^name` de las dos primeras líneas.

{% include nav.html %}
