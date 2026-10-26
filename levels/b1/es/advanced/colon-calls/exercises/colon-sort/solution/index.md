---
title: 'Solution: Sort con dos puntos'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my @words = <pear fig apple kiwi>;
say @words.sort: *.chars;
```

🦋 Encuentra el programa en el archivo [colon-sort.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/colon-calls/colon-sort.raku).

## Salida

```
(fig pear kiwi apple)
```

## Comentarios

1. Los dos puntos pasan la clave de ordenamiento a `sort`. No hacen falta paréntesis alrededor de ella.

1. `*.chars` es una expresión Whatever que significa "el número de caracteres de cada elemento". `sort` la usa como clave, así que las palabras más cortas van primero. Primero va `fig` (3), luego `pear` y `kiwi` (4), y después `apple` (5).

1. `pear` se queda delante de `kiwi` porque las dos palabras tienen la misma longitud. Además, `sort` es estable, es decir, mantiene el orden original de las claves iguales.

{% include nav.html %}
