---
title: 'Solution: Crear variables de todos los tipos conocidos'
---

{% include menu.html %}

Probablemente no escribirás este tipo de programa en la práctica. Pero es importante saber cómo mirar dentro de las partes de programas reales.

## Código

Aquí tienes una posible solución. Crea variables de los cinco tipos que mencionamos e imprime sus tipos.

```raku
my $a = 10;
my $b = 10.2;
my $c = 10e3;
my $d = True;
my $e = 'ten';

say $a, ' ', $a.WHAT;
say $b, ' ', $b.WHAT;
say $c, ' ', $c.WHAT;
say $d, ' ', $d.WHAT;
say $e, ' ', $e.WHAT;
```

🦋 Encuentra el programa en el archivo [types.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/typed-variables/types.raku).

## Salida

Este programa imprime la siguiente salida:

```console
$ raku exercises/data-types/types.raku
10 (Int)
10.2 (Rat)
10000 (Num)
True (Bool)
ten (Str)
```

{% include nav.html %}
