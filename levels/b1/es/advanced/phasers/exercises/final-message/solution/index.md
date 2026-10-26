---
title: 'Solution: Mensaje final'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Encuentra el programa en el archivo [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Salida

```
processed 3 items
```

## Comentarios

1. El phaser `END` está escrito antes del bucle, pero se ejecuta al final. Se ejecuta cuando el código principal ha terminado. Para entonces, `$count` ya ha aumentado tres veces.

1. El phaser cierra sobre `$count`, lo que significa que mantiene una conexión con la variable. Por eso lee el valor *final*. No lee el `0` de la línea donde aparece el phaser. Esta es la razón habitual para poner un resumen en `END`.

{% include nav.html %}
