---
title: Arrays
---

{% include menu.html %}

Los arreglos son tipos de datos agregados, lo que significa que pueden guardar más de un valor. Esto los hace diferentes de los [elementos escalares](/es/essentials/scalar-variables). Los elementos de un arreglo se pueden indexar (o _subscriptar_). En otras palabras, cada elemento tiene una posición. Por eso los datos de este tipo tienen el nombre general de posicionales.

Para las variables de arreglo, hay otro sigil: `@`. Las reglas para el nombre de la variable son las mismas que [para los escalares](/es/essentials/scalar-variables/identifiers/).

```raku
my @ciudades;
```

En este punto, hemos creado un arreglo llamado `@ciudades`. Puedes llenarlo con algunos valores:

```raku
@ciudades = 'París', 'Roma', 'Berlín';
```

También puedes dar los valores enseguida, al crear el arreglo:

```raku
my @ciudades = 'París', 'Roma', 'Berlín';
```

## Indexación

Para obtener un elemento de un arreglo, añade un par de corchetes después de su nombre:

```raku
say @ciudades[1];
```

Fíjate en que el sigil siempre es el mismo. Los elementos se cuentan desde cero, así que en nuestro ejemplo, el elemento `@ciudades[1]` es `'Roma'`.

Los arreglos son mutables, lo que significa que puedes cambiarlos. Para cambiar un elemento, simplemente asígnale un valor nuevo:

```raku
@ciudades[0] = 'Roma';
@ciudades[1] = 'París';
```

Ahora la declaración `say @ciudades[1]` imprime el valor nuevo, `'París'`.

## Tamaño

La longitud de un arreglo es el número de sus elementos. Para obtener la longitud actual, usa el método `elems`:

```raku
say @ciudades.elems; # 3
```

Si un arreglo aparece donde se espera un número, obtienes su tamaño:

```raku
say +@ciudades; # 3
```

Aquí, el [operador prefijo `+`](/es/essentials/coercion/prefixes) necesita un número de su argumento. Por eso `+@ciudades` da `3`.

{% include nav.html %}
