---
title: Listas
translations_gpt:
---

{% include menu.html %}

Una lista también es una colección ordenada de valores. Pero, a diferencia de un array, es _inmutable_. Esto significa que no puedes cambiar, agregar ni quitar sus elementos. Una lista se escribe como valores con comas entre ellos, a menudo entre paréntesis:

```raku
my $colours = ('red', 'green', 'blue');
```

Puedes leer los elementos de una lista por su índice, igual que con un array. También puedes preguntar cuántos hay:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

La diferencia se ve cuando intentas cambiar un elemento. Con un array, esto funciona, porque cada elemento es un contenedor:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Con una lista, obtienes un error. Los elementos de una lista son solo valores, no contenedores:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

El segundo programa se detiene con un mensaje:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Así que usa un array, con el sigilo `@`, cuando necesites cambiar su contenido. Usa una lista cuando solo necesites guardar una secuencia fija de valores.

{% include nav.html %}
