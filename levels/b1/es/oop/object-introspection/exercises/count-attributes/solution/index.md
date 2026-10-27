---
title: 'Solución: Cuente los atributos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
class Point {
    has $.x;
    has $.y;
}

say Point.^attributes.elems;
```

🦋 Puedes encontrar el código fuente en el archivo [count-attributes.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/object-introspection/count-attributes.raku).

## Salida

```
2
```

## Comentarios

1. `.^attributes` devuelve la lista de atributos de la clase.

1. `.elems` los cuenta. La clase `Point` declara dos atributos, así que la respuesta es `2`.

{% include nav.html %}
