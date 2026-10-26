---
title: 'Solution: Buscar un símbolo'
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. `Circle::` es el stash del módulo. Si usas un nombre como clave, como `Circle::{'$pi'}`, obtienes el valor guardado bajo él. La clave debe incluir el sigilo, igual que los nombres de la lista.

1. Esto da el mismo valor que el nombre calificado `$Circle::pi`. Pero aquí el nombre es una cadena normal. Así que se puede construir en tiempo de ejecución. No hace falta escribirlo en el código fuente.

{% include nav.html %}
