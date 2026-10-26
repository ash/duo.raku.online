---
title: 'Solution: Triplicar'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $factor = 3;
my $scale = -> $x { $x * $factor };

say $scale(7);
```

🦋 Encuentra el programa en el archivo [triple-it.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/anonymous-subroutines/triple-it.raku).

## Salida

```
21
```

## Comentarios

1. El bloque puntiagudo tiene solo un parámetro, `$x`. Aun así, usa `$factor`, una variable del ámbito que lo rodea. Capturar esas variables es lo que lo convierte en una clausura.

1. Cuando `$factor` vale `3`, llamar a `$scale(7)` da `21`. Si cambias `$factor`, el mismo bloque multiplica por el nuevo valor:

```raku
$factor = 5;
say $scale(7); # 35
```

La clausura captura la *variable* misma. No captura el valor del momento en que se escribió el bloque. Así que la llamada posterior ve el nuevo `$factor` y devuelve `35`.

{% include nav.html %}
