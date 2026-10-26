---
title: 'Solution: Eliminar una clave'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my %h = a => 1, b => 2, c => 3;
%h<b>:delete;
say %h.elems;
```

🦋 Encuentra el código fuente en el archivo [delete-a-key.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/delete-a-key.raku).

## Salida

```
2
```

## Comentarios

1. El adverbio `:delete` elimina la entrada del hash. También devuelve el valor, pero aquí lo ignoramos.

1. El hash tenía tres entradas al principio, y ahora tiene `2`. Esto muestra que se eliminó una. Contamos con `.elems`, que no depende del orden de las claves. Así que la salida es siempre la misma.

{% include nav.html %}
