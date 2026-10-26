---
title: 'Solution: Ítem o lista'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `my $x = $(@a)` pone el contexto de elemento. Así que el array completo entra en el único escalar `$x`. El array no se separa en sus elementos.

1. Luego `@($x)` pone el contexto de lista. Ahora `$x` vuelve a ser tres elementos. Así que el bucle `for` se ejecuta tres veces. Al final, el contador es `3`. Los dos contextualizadores hacen cosas opuestas. `$( )` empaqueta una lista en un solo elemento. `@( )` la desempaqueta otra vez.

{% include nav.html %}
