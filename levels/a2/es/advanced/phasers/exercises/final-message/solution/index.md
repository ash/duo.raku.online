---
title: 'Solution: Mensaje final'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. El phaser `END` va antes del bucle en el código. Pero se ejecuta al final, después del código principal. Para entonces, el bucle ya ha sumado 1 a `$count` tres veces.

1. El phaser mantiene una conexión con la variable `$count`. Así, lee el valor *final* de la variable. No lee el `0` de la línea del phaser. Esta es la razón habitual para poner un resumen en `END`.

{% include nav.html %}
