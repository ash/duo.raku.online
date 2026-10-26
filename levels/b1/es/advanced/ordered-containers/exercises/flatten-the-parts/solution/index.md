---
title: 'Solution: Aplanar las partes'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución para la tarea.

## Code

```raku
my @first = 1, 2;
my @second = 3, 4, 5;

my @all = flat(@first, @second);
say @all;
say @all.elems;
```

🦋 Puedes encontrar el código fuente en el archivo [flatten-the-parts.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/flatten-the-parts.raku).

## Salida

```
[1 2 3 4 5]
5
```

## Comentarios

1. Si escribes `my @all = @first, @second`, _no_ obtienes un array plano. En su lugar, obtienes un array anidado de dos arrays, `[[1 2] [3 4 5]]`.

1. La rutina `flat` une los elementos de los dos arrays en una sola secuencia plana. Luego esta secuencia se guarda en `@all`. El resultado tiene cinco elementos.

{% include nav.html %}
