---
title: 'Solution: Parte fraccionaria'
---

{% include menu.html %}

¿Cómo obtienes la parte fraccionaria de un número? Quita la parte entera. Para obtener la parte entera, convierte el número a un `Int`.

## Código

Aquí hay una solución:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Encuentra el programa en el archivo [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Salida

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Comentario

Prueba también el programa con números negativos. Por ejemplo:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Aquí el resultado también es correcto:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
