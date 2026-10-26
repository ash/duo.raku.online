---
title: 'Solution: Aplanar las partes'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El código `my @all = @first, @second` _no_ da un array plano. Crea un array anidado de dos arrays: `[[1 2] [3 4 5]]`.

1. La rutina `flat` junta los elementos de los dos arrays. Crea una sola secuencia plana. El programa guarda esta secuencia en `@all`. El resultado tiene cinco elementos.

{% include nav.html %}
