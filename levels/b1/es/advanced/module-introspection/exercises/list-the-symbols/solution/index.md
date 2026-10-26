---
title: 'Solution: Listar los símbolos'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

El programa, `list.raku`:

```raku
use Circle;

say Circle::.keys.elems;
say Circle::.keys.sort;
```

🦋 Encuentra ambos archivos fuente en el directorio [exercises/advanced/module-introspection/list-the-symbols](https://github.com/ash/raku-course/tree/master/exercises/advanced/module-introspection/list-the-symbols).

## Salida

```console
$ raku -I. list.raku
2
($pi $tau)
```

## Comentarios

1. `Circle::` es el paquete del módulo. `.keys` lista los nombres que contiene, cada uno con su sigilo.

1. `.elems` cuenta estos nombres. El módulo define dos variables `our`, así que el número es `2`.

1. `.keys` no garantiza ningún orden en particular. Así que usamos `.sort`, que da el mismo resultado alfabético cada vez: `($pi $tau)`. Sin ordenar, el orden de los dos nombres podría cambiar de una ejecución a otra.

{% include nav.html %}
