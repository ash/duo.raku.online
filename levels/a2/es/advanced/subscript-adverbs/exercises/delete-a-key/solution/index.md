---
title: 'Solution: Eliminar una clave'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El adverbio `:delete` elimina la entrada del hash. También devuelve el valor, pero aquí no lo usamos.

1. Al principio, el hash tenía tres entradas. Ahora tiene `2`. Así que una entrada ya no está. Contamos las entradas con `.elems`. El orden de las claves no importa para esto. Así que la salida es siempre la misma.

{% include nav.html %}
