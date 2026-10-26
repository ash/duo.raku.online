---
title: 'Solution: Día de la semana'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `day-of-week` da a los días números del `1` al `7`. El lunes es `1`, y el domingo es `7`. Por eso los dos días del fin de semana son `6` y `7`.

1. La prueba `>= 6` es `True` para el sábado y para el domingo. Es `False` para los otros días. El 14 de febrero de 2027 es domingo. Su número es `7`. Por eso el programa imprime `True`.

{% include nav.html %}
