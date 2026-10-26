---
title: 'Solution: Clave y valor'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my %h = x => 10, y => 20;
say %h<x>:kv;
```

🦋 Encuentra el código fuente en el archivo [key-and-value.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/subscript-adverbs/key-and-value.raku).

## Salida

```
(x 10)
```

## Comentarios

1. El adverbio `:kv` te da la clave y el valor en una lista.

1. Para un hash, la clave es el nombre que usas en el subíndice. Por eso `%h<x>:kv` da la lista `(x 10)`.

{% include nav.html %}
