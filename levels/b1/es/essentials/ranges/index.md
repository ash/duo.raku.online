---
title: Rangos
---

{% include menu.html %}

En Raku, los rangos crean listas de elementos que van uno tras otro.

En el caso más simple, un rango es una lista de enteros que aumentan de uno en uno. Para crear un rango, usa el operador `..` y dos valores. Estos fijan los valores mínimo y máximo del rango:

```raku
1 .. 5
```

Los espacios alrededor del operador son opcionales. Así que puedes escribir el mismo rango de esta forma:

```raku
1..5
```

Un rango es una forma de crear listas, pero sigue siendo un solo objeto. Así que puedes guardarlo en una variable escalar:

```raku
my $r = 1 .. 5;
```

## No solo números

Los rangos también pueden usar otros tipos de datos si Raku sabe cómo incrementar sus valores. Por ejemplo:

```raku
my $letters = 'a' .. 'z';
```

En Raku, los rangos son objetos de su propio tipo de datos. El tipo de la variable `$r` es `Range`.

{% include nav.html %}
