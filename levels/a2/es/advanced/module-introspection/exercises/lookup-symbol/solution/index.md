---
title: 'Solution: Buscar un símbolo'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

El programa, `lookup.raku`:

```raku
use Circle;

say Circle::{'$pi'};
```

🦋 Encuentra ambos archivos fuente en el directorio [exercises/advanced/module-introspection/lookup-symbol](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/lookup-symbol).

## Salida

```console
$ raku -I. lookup.raku
3.14
```

## Comentarios

1. `Circle::` es el stash del módulo. Usas un nombre como clave: `Circle::{'$pi'}`. Esto da el valor de ese nombre. La clave debe tener el sigilo. Los nombres de la lista también lo tienen.

1. Obtienes el mismo valor que con el nombre completo `$Circle::pi`. Pero aquí el nombre es una cadena normal. Así que el programa puede crear el nombre mientras se ejecuta. No tienes que escribirlo en el código fuente.

{% include nav.html %}
