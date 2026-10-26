---
title: 'Solution: Potencias de dos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Code

```raku
say (1, 2, 4 ... Inf).head(8);
```

🦋 Puedes encontrar el código fuente en el archivo [powers-of-two.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/powers-of-two.raku).

## Salida

```
(1 2 4 8 16 32 64 128)
```

## Comentarios

1. Los tres valores iniciales `1, 2, 4` crecen por multiplicación. Así que `...` ve que es una secuencia geométrica. Como el punto final es `Inf`, nunca se detiene por sí sola.

1. `head(8)` toma solo los primeros ocho valores. Como la secuencia es perezosa, los otros valores nunca se generan. Esta es la única razón por la que es seguro escribir una secuencia infinita.

{% include nav.html %}
