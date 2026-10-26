---
title: 'Solution: Join con dos puntos'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
say <a b c>.reverse.join: '-';
```

🦋 Encuentra el programa en el archivo [colon-join.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-join.raku).

## Salida

```
c-b-a
```

## Comentarios

1. `.reverse` está en el medio de la cadena. Así que mantiene su forma normal. `join` es la última llamada. Así que puede usar los dos puntos. Los dos puntos le pasan `'-'`, igual que `join('-')`.

1. Después de `.reverse`, la lista es `c, b, a`. Luego `join` pone guiones entre las palabras. El resultado es `c-b-a`. La forma con dos puntos también funciona con valores normales, no solo con bloques.

{% include nav.html %}
