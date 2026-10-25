---
title: 'Solution: Compartir manzanas'
---

{% include menu.html %}

Aquí está la solución.

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

Los números de entrada son 3 y 11. Con ellos, el programa imprime esto:

```console
$ raku exercises/numbers/apple-sharing.raku
Cada persona recibe 3 manzana(s).
Quedan 2 manzana(s).
```

Cambia los valores iniciales de `$N` y `$K`. Prueba otros casos:

* `$K` se divide entre `$N` sin resto, por ejemplo, `12` y `3`;
* `$K` es igual a `$N`;
* `$K` es menor que `$N`.

## Comentarios

El programa usa dos operadores. El operador `div` hace la división entera. El operador `%` da el resto de la división. También puedes hacer los cálculos así:

```raku
my $gets = $K div $N;
my $remains = $K - $N * $gets;
```

Mira también la cadena. Raku interpola las variables en ella. Esto significa que pone sus valores en la cadena.

{% include nav.html %}
