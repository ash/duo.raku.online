---
title: 'Solution: Crear un alias de un array'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución para la tarea.

## Code

```raku
my @original = 10, 20, 30;
my @alias := @original;

@original.push(40);
say @alias;
```

🦋 Puedes encontrar el código fuente en el archivo [alias-an-array.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/alias-an-array.raku).

## Salida

```
[10 20 30 40]
```

## Comentarios

1. La vinculación `@alias := @original` no copia el array. Hace que `@alias` sea otro nombre para el mismo contenedor de array.

1. Esta vez, el cambio pasa por `@original`, y cambia la estructura: `push` agrega un elemento. Los dos nombres son exactamente el mismo contenedor, así que `@alias` también ve el nuevo elemento. Siempre puedes usar un nombre en lugar del otro. No importa cuál uses para leer o cambiar el array.

{% include nav.html %}
