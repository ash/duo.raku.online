---
title: 'Solution: Usar un módulo de estadísticas'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Un solo `use Stats` trae *las dos* subrutinas exportadas a la vez. `use` importa todo lo que tiene `is export` en el módulo. No importa solo un nombre.

1. `mean` llama a `total` dentro del módulo. Para obtener la media, el programa no llama a `total` por sí mismo. Pero aun así funciona. Las subrutinas de un módulo pueden usarse unas a otras. El llamador solo ve los nombres exportados.

1. Los cuatro números suman `100`. Así que la media es `100 / 4`. Eso da `25`.

{% include nav.html %}
