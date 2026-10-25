---
title: Listas
---

{% include menu.html %}

Las listas son parecidas a los arrays, pero son inmutables. Esto significa que no puedes cambiar el tamaño ni los elementos de una lista. Para crear una lista, usa paréntesis:

```raku
my $odd = (1, 3, 5, 7, 9);
```

## Subíndice de listas

Para obtener un solo elemento de una lista, usa corchetes con el índice:

```raku
say $odd[3]; # 7
```

Sin embargo, no puedes poner un valor nuevo:

```raku
$odd[3] = 8; # No está bien
```

Si intentas hacerlo, obtienes una excepción:

    Cannot modify an immutable List ((1 3 5 7 9))
      in block <unit> at t.raku line 4

## Asignando una lista a un array

¿Qué pasa si guardas una lista en una variable que tiene el sigilo `@`?

```raku
my @data = (40, 42, 44);
```

En este caso, la variable `@data` guarda un array, así que puedes cambiar sus elementos.

%%tipblock
## Variable vs lista

Ten en cuenta que las listas son inmutables. Pero aún puedes reutilizar la variable que guarda la lista.

```raku
my $elements = (1, 2);
say $elements[0]; # 1

$elements = (3, 4);
say $elements[0]; # 3
```

%%/tipblock

{% include nav.html %}
