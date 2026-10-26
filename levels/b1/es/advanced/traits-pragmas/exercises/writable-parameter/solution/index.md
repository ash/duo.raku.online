---
title: 'Solution: Un parámetro modificable'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub double($n is rw) {
    $n *= 2;
}

my $score = 21;
double($score);
say $score;
```

🦋 Puedes encontrar el código fuente en el archivo [writable-parameter.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/traits-pragmas/writable-parameter.raku).

## Salida

```
42
```

## Comentarios

1. `is rw` vincula el parámetro `$n` a la variable del llamador `$score`. Así, `$n *= 2` dentro de `double` cambia el propio `$score`, y por eso el programa imprime `42`.

1. Sin `is rw`, el parámetro sería de solo lectura, y `$n *= 2` causaría un error. Con `is copy`, en cambio, `double` recibiría una copia privada para cambiar. Entonces `$score` se quedaría intacto en `21`.

{% include nav.html %}
