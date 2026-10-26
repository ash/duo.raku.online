---
title: 'Solution: Begin primero'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $compiled = BEGIN { 2 + 3 };

say $compiled;
```

🦋 Encuentra el programa en el archivo [begin-first.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/begin-first.raku).

## Salida

```
5
```

## Comentarios

1. `BEGIN { 2 + 3 }` se ejecuta durante la compilación y da `5`. Cuando usas un bloque `BEGIN` como expresión, devuelve su valor. Aquí, este valor se asigna a `$compiled`.

1. El cálculo ocurre solo una vez, en tiempo de compilación. Cuando el programa se ejecuta, `$compiled` simplemente contiene la constante `5`. Así es como `BEGIN` puede calcular valores por adelantado. No sirve solo para imprimir temprano.

{% include nav.html %}
