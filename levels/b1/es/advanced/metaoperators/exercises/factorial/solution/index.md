---
title: 'Solution: Todos los factoriales a la vez'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. La barra invertida dentro de los corchetes convierte `[*]` en una reducción *triangular*. No reduce la lista a un único valor. En su lugar, guarda cada producto parcial: `1`, luego `1*2`, luego `1*2*3`, y así sucesivamente.

1. Cada producto parcial `1*2*...*k` es exactamente _k!_. Así, el resultado es la lista de factoriales del `1` al `6`. Un simple `[*] 1..6` daría solo el último de ellos, `720`.

{% include nav.html %}
