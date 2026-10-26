---
title: 'Solution: Par, impar o cero'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Encuentra el programa en el archivo [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Salida

```
even
```

## Comentarios

1. `when 0` coincide solo con el valor cero. Va primero porque el cero también es par, y queremos mostrarlo por separado.

1. `when $_ %% 2` es una condición, donde `$_` es el tópico que fija `given`. El operador `%%` comprueba si el tópico se divide de forma exacta entre dos. El valor `12` no es cero, pero se divide entre dos, así que el programa imprime `even`.

1. `default` cubre todo lo que queda. Son los números que no son ni cero ni pares, es decir, los impares.

{% include nav.html %}
