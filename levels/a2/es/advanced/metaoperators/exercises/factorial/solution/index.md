---
title: 'Solution: Todos los factoriales a la vez'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
say [\*] 1..6;
```

🦋 Puedes encontrar el código fuente en el archivo [factorial.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/metaoperators/factorial.raku).

## Salida

```
(1 2 6 24 120 720)
```

## Comentarios

1. Hay una barra invertida dentro de los corchetes. Convierte `[*]` en una reducción *triangular*. Esta reducción no convierte la lista en un solo valor. Guarda cada paso del producto: `1`, luego `1*2`, luego `1*2*3`, y así sucesivamente.

1. Cada producto `1*2*...*k` es exactamente _k!_. Así, el resultado es la lista de factoriales del `1` al `6`. Un simple `[*] 1..6` da solo el último, `720`.

{% include nav.html %}
