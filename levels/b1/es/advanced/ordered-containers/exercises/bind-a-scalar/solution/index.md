---
title: 'Solution: Enlazar un escalar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución para la tarea.

## Code

```raku
my $source = 1;
my $bound := $source;
my $copy = $source;

$source = 9;
say $bound;
say $copy;
```

🦋 Puedes encontrar el código fuente en el archivo [bind-a-scalar.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/ordered-containers/bind-a-scalar.raku).

## Salida

```
9
1
```

## Comentarios

1. La vinculación con `:=` no hace una copia. Hace que `$bound` sea otro nombre para el mismo contenedor que `$source`. Así que el cambio en `$source` se ve a través de `$bound`, que imprime `9`.

1. La asignación normal con `=` copia el valor en un contenedor separado. Así que el cambio posterior no afecta a `$copy`, que sigue imprimiendo `1`.

1. El objetivo es ver los dos lado a lado. `:=` comparte un contenedor, mientras que `=` hace una copia del valor.

{% include nav.html %}
