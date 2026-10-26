---
title: 'Solution: Listar los símbolos'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `Circle::` es el paquete del módulo. `.keys` lista los nombres que hay en él. Cada nombre tiene su sigilo.

1. `.elems` cuenta estos nombres. El módulo tiene dos variables `our`. Así que el número es `2`.

1. `.keys` no da los nombres en un orden fijo. Así que usamos `.sort`. Pone los nombres en orden alfabético. Ahora el resultado siempre es el mismo: `($pi $tau)`. Sin ordenar, el orden de los dos nombres puede cambiar. Puede ser diferente cada vez que el programa se ejecuta.

{% include nav.html %}
