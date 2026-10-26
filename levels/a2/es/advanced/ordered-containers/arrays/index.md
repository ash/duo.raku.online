---
title: Arrays
translations_gpt:
---

{% include menu.html %}

Un array es un contenedor ordenado. Cada elemento de un array también es un contenedor escalar.

```raku
my @array = 100, 200, 300;
my @letters = 'a', 'b', 'c';
```

El sigilo `@` muestra que la variable funciona como un objeto `Positional`. Así puedes obtener cada elemento por su índice:

```raku
say @array[1];   # 200
say @letters[2]; # c
```

Cada elemento es un contenedor escalar. Así puedes asignarle un nuevo valor. Funciona igual que una variable escalar normal:

```raku
my @array = 100, 200, 300;
@array[0] = 10;
say @array; # [10 200 300]
```

También puedes asignar un valor de otro tipo. Por ejemplo:

```raku
my @array = 100, 200, 300;
@array[0] = 'ten';
say @array; # [ten 200 300]
```

Por eso los arrays son _mutables_. Esto significa que puedes cambiarlos. Cada posición de un array es un contenedor. Puede recibir un nuevo valor. Las [listas](/es/advanced/ordered-containers/lists) son diferentes. Verás esto en el siguiente tema.

{% include nav.html %}
