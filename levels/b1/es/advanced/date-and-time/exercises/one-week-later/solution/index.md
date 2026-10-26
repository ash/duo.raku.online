---
title: 'Solution: Una semana después'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $later = Date.new(2027, 2, 28).later(:days(7));
say $later;
say $later.day-of-week;
```

🦋 Encuentra el programa en el archivo [one-week-later.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/one-week-later.raku).

## Salida

```
2027-03-07
7
```

## Comentarios

1. `later(:days(7))` avanza la fecha siete días, es decir, una semana. También podríamos escribir `+ 7`, pero el argumento con nombre muestra la unidad con claridad.

1. Febrero de 2027 tiene solo 28 días. Así que, una semana después del 28, Raku pasa a marzo por sí solo. El resultado es `2027-03-07`.

1. Si llamas a `day-of-week` sobre la nueva fecha, obtienes `7`. Esto hace que el resultado sea fácil de comprobar. Exactamente una semana después, el día de la semana debe ser el *mismo* que antes. Y `2027-02-28` también es domingo (`7`), así que `7` es la respuesta que esperas.

{% include nav.html %}
