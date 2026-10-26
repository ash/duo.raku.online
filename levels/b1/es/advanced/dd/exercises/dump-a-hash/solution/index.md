---
title: 'Solution: Volcar un hash'
---

{% include menu.html %}

Aquí tienes una posible solución para la tarea.

## Código

```raku
my %h = beta => 2, alpha => 1;
dd %h;
```

🦋 Puedes encontrar el código fuente en el archivo [dump-a-hash.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/dd/dump-a-hash.raku).

## Salida

```
{:alpha(1), :beta(2)}
```

## Comentarios

1. `dd` imprime el hash en una forma similar a código. Cada par se muestra como `:clave(valor)`.

1. Las claves se imprimen en orden alfabético, así que `alpha` va antes que `beta`. Esto pasa aunque `beta` se escribió primero.

{% include nav.html %}
