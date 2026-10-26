---
title: 'Solution: Día de la semana'
---

{% include menu.html %}

Aquí tienes una posible solución.

## Código

```raku
my $date = Date.new(2027, 2, 14);
say $date.day-of-week >= 6;
```

🦋 Encuentra el programa en el archivo [day-of-week.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/day-of-week.raku).

## Salida

```
True
```

## Comentarios

1. `day-of-week` da al lunes el número `1` y al domingo el número `7`. Por eso los dos días del fin de semana son exactamente `6` y `7`.

1. La prueba `>= 6` da `True` el sábado y el domingo. En cualquier otro día, da `False`. El 14 de febrero de 2027 es domingo (`7`), así que el programa imprime `True`.

{% include nav.html %}
