---
title: 'Solution: Compartir manzanas'
---

{% include menu.html %}

Aquí está la solución al problema.

## Código

```raku
my $N = 3;
my $K = 11;

my $gets = $K div $N;
my $remains = $K % $N;

say "Cada persona recibe $gets manzana(s).";
say "Quedan $remains manzana(s).";
```

🦋 Puedes encontrar el código completo en el archivo [apple-sharing.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/numbers/apple-sharing.raku).

## Salida

Con los números de entrada 3 y 11, el programa imprime esto:

```console
$ raku exercises/numbers/apple-sharing.raku
Cada persona recibe 3 manzana(s).
Quedan 2 manzana(s).
```

Cambia los valores iniciales de `$N` y `$K` para probar otras situaciones:

* `$K` es múltiplo de `$N`, por ejemplo, `12` y `3`;
* `$K` es igual a `$N`;
* `$K` es menor que `$N`.

## Comentarios

El programa usa dos operadores: `div` para la división entera y `%` para el resto de la división. Otra forma es hacer los cálculos así:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Observa también cómo Raku pone los valores de las variables en la cadena.

{% include nav.html %}
