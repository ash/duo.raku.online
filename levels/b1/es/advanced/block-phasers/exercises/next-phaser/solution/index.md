---
title: 'Solution: Después de cada paso'
---

{% include menu.html %}

Aquí tienes una posible solución.

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

1. El phaser `NEXT` está escrito primero, pero se ejecuta al *final* de cada vuelta. Para entonces, el cuerpo ya ha sumado el número actual a `$sum`.

1. Así, después de la primera vuelta, `$sum` vale `1`. Después de la segunda vale `3`, y después de la tercera vale `6`. En un bucle, `NEXT` es la forma de ejecutar algo entre vueltas. Es diferente de `FIRST`, que se ejecuta una vez al principio. También es diferente de `LAST`, que se ejecuta una vez al final.

{% include nav.html %}
