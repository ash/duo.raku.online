---
title: 'Solution: Comparación encadenada'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
say 0 <= 73 <= 100;
```

🦋 Puedes encontrar el código fuente en el archivo [chained-comparison.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/operators-overview/chained-comparison.raku).

## Salida

```
True
```

## Comentarios

1. Puedes encadenar operadores de comparación. Así, `0 <= 73 <= 100` significa “0 es como máximo 73, y 73 es como máximo 100”. El operador `<=` también permite los extremos. Así, una puntuación de exactamente `0` o `100` también es válida.

1. Las dos partes son verdaderas. Así, toda la expresión es `True`. Mira el valor del medio, `73`. Lo escribes solo una vez. Pero Raku lo compara con los dos valores a su lado.

1. Sin encadenar, tienes que escribir las dos comparaciones. Las unes con `&&`. Y escribes el valor del medio dos veces: `0 <= 73 && 73 <= 100`. La forma encadenada dice lo mismo de forma más corta.

{% include nav.html %}
