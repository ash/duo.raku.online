---
title: 'Solution: Contar los distintos'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my @data = 3, 1, 4, 1, 5, 9, 2, 6, 5, 3;

say set(@data).elems;
```

🦋 Encuentra el programa en el archivo [count-the-distinct.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/count-the-distinct.raku).

## Salida

```
7
```

## Comentarios

1. Cuando pasas el array a `set`, obtienes un set con sus valores. Un set guarda solo valores distintos, así que los números repetidos se convierten en uno solo.

1. Después, `elems` da el número de valores distintos: `7`.

{% include nav.html %}
