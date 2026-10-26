---
title: 'Solution: Contar los distintos'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Pasa el array a `set`. Obtienes un set con sus valores. Un set guarda solo valores distintos. Así que cada número repetido se convierte en un solo valor.

1. Luego el método `elems` devuelve el número de valores distintos. Es `7`.

{% include nav.html %}
