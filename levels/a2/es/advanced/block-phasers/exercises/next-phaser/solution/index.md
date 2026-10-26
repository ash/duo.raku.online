---
title: 'Solution: Después de cada paso'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $sum = 0;

for 1..3 {
    NEXT say "sum so far: $sum";
    $sum += $_;
}
```

🦋 Encuentra el programa en el archivo [next-phaser.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/block-phasers/next-phaser.raku).

## Salida

```
sum so far: 1
sum so far: 3
sum so far: 6
```

## Comentarios

1. El phaser `NEXT` va primero en el código. Pero se ejecuta al *final* de cada vuelta. En ese momento, el cuerpo ya ha sumado el número actual a `$sum`.

1. Así que después de la primera vuelta, `$sum` vale `1`. Después de la segunda vuelta, vale `3`. Después de la tercera vuelta, vale `6`. Con `NEXT`, un bucle puede ejecutar código entre sus vueltas. `FIRST` es diferente: se ejecuta una vez al principio. `LAST` también es diferente: se ejecuta una vez al final.

{% include nav.html %}
