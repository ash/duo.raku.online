---
title: Hashes
---

{% include menu.html %}

Un _hash_ es otro tipo de datos asociativo en Raku. Es un tipo de datos agregado. Guarda muchos elementos. Cada elemento tiene un nombre y un valor. Las variables hash usan un sigil nuevo: `%`.

```raku
my %capitals;
```

Ahora puedes usar el hash. Puedes asignarle algunos valores iniciales.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

También puedes hacer las dos cosas a la vez. Esto funciona también con otros tipos de datos:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Obtener los elementos

Para obtener un elemento, indexas el hash. Lo haces igual que con los [pares](../pairs). Pon una cadena entre corchetes angulares o entre llaves:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Los hashes son mutables. Esto significa que puedes cambiarlos. Puedes cambiar los valores. También puedes agregar valores nuevos:

```raku
%capitals<Germany> = 'Berlin';
```

## Claves y valores

Raku tiene dos métodos incorporados para hashes, `keys` y `values`. El método `keys` devuelve una lista de las claves. El método `values` devuelve una lista de los valores:

```raku
say %capitals.keys;
say %capitals.values;
```

El programa puede imprimir esto, por ejemplo:

    (Germany Italy France)
    (Berlin Rome Paris)

Fíjate en que los elementos de un hash no tienen orden. Pero los dos métodos usan el mismo orden.

{% include nav.html %}
