---
title: 'Solución: Cuente los atributos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `.^attributes` devuelve una lista. En ella están los atributos de la clase.

1. `.elems` los cuenta. La clase `Point` tiene dos atributos. Así que la respuesta es `2`.

{% include nav.html %}
