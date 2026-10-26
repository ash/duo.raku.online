---
title: 'Solution: Ítem o lista'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my @a = 1, 2, 3;
my $count = 0;

my $x = $(@a);
$count++ for @($x);
say $count;
```

🦋 Encuentra el código fuente en el archivo [item-or-list.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/contexts/item-or-list.raku).

## Salida

```
3
```

## Comentarios

1. `my $x = $(@a)` fija el contexto de elemento. Así que el array completo se empaqueta en el único escalar `$x`. No se separa en sus elementos.

1. Luego `@($x)` fija el contexto de lista y vuelve a separar `$x` en sus tres elementos. Así que el bucle `for` se ejecuta tres veces, y el contador termina en `3`. Los dos contextualizadores son exactamente opuestos: `$( )` empaqueta una lista en un solo elemento, y `@( )` la desempaqueta otra vez.

{% include nav.html %}
