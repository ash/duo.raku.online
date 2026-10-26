---
title: Listas
translations_gpt:
---

{% include menu.html %}

Una lista también es una colección ordenada de valores. Pero no es como un array. Una lista es _inmutable_. No puedes cambiar sus elementos. Tampoco puedes agregar ni quitar elementos. Para escribir una lista, pon comas entre los valores. A menudo hay paréntesis alrededor:

```raku
my $colours = ('red', 'green', 'blue');
```

Puedes leer los elementos de una lista por su índice. También puedes preguntar cuántos elementos hay. Es igual que con un array:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Ahora intenta cambiar un elemento. Aquí ves la diferencia. Con un array, funciona. Cada elemento de un array es un contenedor:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Con una lista, obtienes un error. Los elementos de una lista son solo valores. No son contenedores:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

El segundo programa se detiene. Imprime este mensaje:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Así que, ¿necesitas cambiar los datos? Entonces usa un array, con el sigilo `@`. ¿Solo necesitas guardar unos valores en un orden fijo? Entonces usa una lista.

{% include nav.html %}
