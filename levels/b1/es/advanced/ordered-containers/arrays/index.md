---
title: Arrays
translations_gpt:
---

{% include menu.html %}

Un array es un contenedor ordenado, y sus elementos también son contenedores escalares.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

El sigilo `@` significa que esa variable se comporta como un objeto `Positional`. Esto te permite usar subíndices para leer elementos individuales:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Cada elemento es un contenedor escalar, así que puedes asignarle un nuevo valor. Lo haces igual que con una variable escalar independiente:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

También puedes asignar un valor de otro tipo, por ejemplo:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Esto es lo que hace que los arrays sean _mutables_, es decir, que se puedan cambiar. Cada posición es un contenedor que puede recibir un nuevo valor. En el siguiente tema, verás que las [listas](/es/advanced/ordered-containers/lists) se comportan de otra manera.

{% include nav.html %}
