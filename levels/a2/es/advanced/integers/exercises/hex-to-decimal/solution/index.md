---
title: 'Solution: Hexadecimal a decimal'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $n = :16<1A>;

say $n;
say $n.base(16);
```

🦋 Encuentra el programa en el archivo [hex-to-decimal.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/integers/hex-to-decimal.raku).

## Salida

```
26
1A
```

## Comentarios

1. La forma de raíz `:16<1A>` lee `1A` como un número en base 16. Su valor es `1 × 16 + 10 = 26`. Ahora la variable `$n` guarda este valor como un entero normal.

1. `$n.base(16)` convierte el entero otra vez en una cadena en base 16. El resultado es otra vez `1A`. Así que leer en una base e imprimir en una base son pasos opuestos.

{% include nav.html %}
