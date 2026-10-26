---
title: 'Solution: Un ayudante privado'
translations_gpt:
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
sub stats {
    sub double($x) { $x * 2 }

    say double(3) + double(5);
}

stats;
```

🦋 Puedes encontrar el código fuente en el archivo [private-helper.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/nested-subroutines/private-helper.raku).

## Salida

```
16
```

## Comentarios

1. La función auxiliar `double` se define dentro de `stats`, así que solo es visible allí. Ninguna otra parte del programa puede llamarla.

1. `stats` la usa dos veces: `double(3)` es `6`, y `double(5)` es `10`. Su suma es `16`.

{% include nav.html %}
