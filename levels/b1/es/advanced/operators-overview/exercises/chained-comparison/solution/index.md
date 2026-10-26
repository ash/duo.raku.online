---
title: 'Solution: Comparación encadenada'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. Los operadores de comparación se pueden encadenar. Así, `0 <= 73 <= 100` significa “0 es como máximo 73, y 73 es como máximo 100”. El operador `<=` permite los valores de los extremos. Así, una puntuación de exactamente `0` o `100` también sería válida.

1. Las dos partes son verdaderas, así que toda la expresión es `True`. Observa que escribes el valor del medio `73` solo una vez. Aun así, se compara con sus dos vecinos.

1. Sin encadenar, tendrías que escribir las dos comparaciones y unirlas con `&&`. Entonces repites el valor del medio: `0 <= 73 && 73 <= 100`. La forma encadenada dice lo mismo de forma más corta.

{% include nav.html %}
