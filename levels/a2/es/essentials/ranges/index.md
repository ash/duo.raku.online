---
title: Rangos
---

{% include menu.html %}

En Raku, un rango crea una lista de elementos. Los elementos van en orden, uno tras otro.

En el caso más simple, un rango es una lista de enteros. Cada entero es 1 más que el anterior. Para crear un rango, usa el operador `..` con dos valores. El primer valor es el valor más pequeño del rango. El segundo valor es el más grande:

```raku
1 .. 5
```

No necesitas espacios alrededor del operador. Así que también puedes escribir el mismo rango así:

```raku
1..5
```

Un rango crea una lista. Pero el rango en sí es un solo objeto. Así que puedes guardarlo en una variable escalar:

```raku
my $r = 1 .. 5;
```

## No solo números

También puedes crear rangos con otros tipos de datos. Funciona si Raku sabe cómo obtener el siguiente valor. Por ejemplo:

```raku
my $letters = 'a' .. 'z';
```

En Raku, los rangos tienen su propio tipo de datos. La variable `$r` tiene el tipo `Range`.

{% include nav.html %}
