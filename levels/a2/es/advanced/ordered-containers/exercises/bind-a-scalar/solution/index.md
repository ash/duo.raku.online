---
title: 'Solution: Enlazar un escalar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. La vinculación con `:=` no hace una copia. Convierte `$bound` en un segundo nombre del contenedor de `$source`. Por eso `$bound` ve el cambio de `$source`. Imprime `9`.

1. La asignación normal con `=` copia el valor en otro contenedor. Por eso el cambio posterior no toca `$copy`. Todavía imprime `1`.

1. Este es el objetivo de la tarea. Ves las dos formas lado a lado. `:=` comparte un contenedor. `=` copia el valor.

{% include nav.html %}
