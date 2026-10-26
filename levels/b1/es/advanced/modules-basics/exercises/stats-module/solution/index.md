---
title: 'Solution: Usar un módulo de estadísticas'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

El programa, `stats.raku`:

```raku
use Stats;

my @scores = 10, 20, 30, 40;

say "total: { total(@scores) }";
say "mean: { mean(@scores) }";
```

🦋 Puedes encontrar ambos archivos fuente en el directorio [exercises/advanced/modules-basics/stats-module](https://github.com/ash/raku-course/tree/master/exercises/advanced/modules-basics/stats-module).

## Salida

```console
$ raku -I. stats.raku
total: 100
mean: 25
```

## Comentarios

1. Un solo `use Stats` trae *ambas* subrutinas exportadas a la vez. `use` importa todo lo que el módulo marca con `is export`, no solo un nombre.

1. `mean` llama a `total` dentro del módulo. Para obtener la media, el programa no llama a `total` por sí mismo, pero aun así funciona. Las subrutinas de un módulo pueden depender unas de otras. El llamador solo ve los nombres exportados.

1. Los cuatro números suman `100`, así que la media es `100 / 4`, que es `25`.

{% include nav.html %}
