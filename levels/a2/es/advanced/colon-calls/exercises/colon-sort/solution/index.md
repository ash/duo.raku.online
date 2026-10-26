---
title: 'Solution: Sort con dos puntos'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. Los dos puntos dan la clave de ordenamiento a `sort`. No necesitas paréntesis alrededor de ella.

1. `*.chars` es una expresión Whatever. Significa "el número de caracteres de cada elemento". `sort` la usa como clave. Así que la palabra más corta va primero: `fig` (3). Luego van `pear` y `kiwi` (4). Después va `apple` (5).

1. `pear` se queda delante de `kiwi`. Las dos palabras tienen la misma longitud. Y `sort` es estable. Mantiene el orden original de los elementos con claves iguales.

{% include nav.html %}
