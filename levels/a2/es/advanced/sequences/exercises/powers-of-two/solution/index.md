---
title: 'Solution: Potencias de dos'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Los tres valores del principio son `1, 2, 4`. Crecen por multiplicación. Así que `...` ve una secuencia geométrica. El punto final es `Inf`. Por eso la secuencia nunca se detiene por sí sola.

1. `head(8)` toma solo los primeros ocho valores. La secuencia es perezosa. Así que Raku nunca crea los otros valores. Solo por eso puedes escribir sin peligro una secuencia infinita.

{% include nav.html %}
