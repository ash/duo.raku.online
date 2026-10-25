---
title: Hashes
---

{% include menu.html %}

Un _hash_ es otro tipo de datos asociativo en Raku. Es un tipo agregado que une el nombre de cada elemento con su valor. Las variables hash usan un sigil nuevo: `%`.

```raku
my %capitals;
```

Ahora puedes usar el hash y darle algunos valores iniciales.

```raku
%capitals = France => 'Paris', Italy => 'Rome';
```

Como con otros tipos de datos, puedes hacer las dos cosas en un solo paso:

```raku
my %capitals = France => 'Paris', Italy => 'Rome';
```

## Accediendo a los elementos

La indexación funciona de forma parecida a lo que vimos con los [pares](../pairs). Pon una cadena entre corchetes angulares o entre llaves:

```raku
say %capitals<France>;
say %capitals{'Italy'};
```

Los hashes son mutables, así que puedes cambiar los valores que ya existen y agregar nuevos:

```raku
%capitals<Germany> = 'Berlin';
```

## Claves y valores

Un hash tiene dos métodos incorporados, `keys` y `values`. Devuelven una lista de sus claves y una lista de sus valores:

```raku
say %capitals.keys;
say %capitals.values;
```

Aquí hay un ejemplo de lo que imprime este programa:

    (Germany Italy France)
    (Berlin Rome Paris)

Fíjate en que los elementos de un hash no están en ningún orden. Pero los métodos de arriba devuelven las claves y los valores en el mismo orden.

{% include nav.html %}
