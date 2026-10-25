---
title: Arrays
---

{% include menu.html %}

Los arreglos son tipos de datos agregados. Esto significa que un arreglo puede guardar más de un valor. Esto hace a los arreglos diferentes de los [elementos escalares](/es/essentials/scalar-variables). Puedes indexar, o _subscriptar_, los elementos de un arreglo. En otras palabras, cada elemento tiene una posición. Por eso llamamos posicionales a este tipo de datos.

Las variables de arreglo tienen un sigil diferente: `@`. Las reglas para el nombre son las mismas que [para los escalares](/es/essentials/scalar-variables/identifiers/).

```raku
my @ciudades;
```

Ahora tenemos un arreglo. Su nombre es `@ciudades`. Puedes poner algunos valores en él:

```raku
@ciudades = 'París', 'Roma', 'Berlín';
```

También puedes crear el arreglo ya con valores:

```raku
my @ciudades = 'París', 'Roma', 'Berlín';
```

## Indexación

Para obtener un elemento de un arreglo, usa un par de corchetes. Ponlos después del nombre de la variable:

```raku
say @ciudades[1];
```

Fíjate en que el sigil no cambia. Siempre es `@`. Raku cuenta los elementos desde cero. Así que en nuestro ejemplo, `@ciudades[1]` es `'Roma'`.

Los arreglos son mutables. Esto significa que puedes cambiarlos. Para cambiar un elemento, solo asígnale un valor nuevo:

```raku
@ciudades[0] = 'Roma';
@ciudades[1] = 'París';
```

Después de esto, la declaración `say @ciudades[1]` imprime el valor nuevo, `'París'`.

## Tamaño

¿Qué es la longitud de un arreglo? Es el número de sus elementos. Para obtenerla, usa el método `elems`:

```raku
say @ciudades.elems; # 3
```

A veces usas un arreglo donde Raku necesita un número. Entonces obtienes el tamaño del arreglo:

```raku
say +@ciudades; # 3
```

Aquí, el [operador prefijo `+`](/es/essentials/coercion/prefixes) necesita un número de su argumento. Así que el resultado de `+@ciudades` es `3`.

{% include nav.html %}
