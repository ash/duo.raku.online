---
title: 'Solution: Semanas hasta Navidad'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

## Código

```raku
my $days = Date.new(2026, 12, 25) - Date.new(2026, 6, 27);
say "{$days div 7} weeks and {$days % 7} days";
```

🦋 Encuentra el programa en el archivo [days-until-christmas.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/date-and-time/days-until-christmas.raku).

## Salida

```
25 weeks and 6 days
```

## Comentarios

1. Puedes restar un `Date` de otro. El resultado es el número de días entre ellos. Aquí es `181`. Así no cuentas tú los días de cada mes. La fecha posterior va primero. Por eso el resultado es positivo.

1. El operador `div` divide enteros. Da el número de semanas completas: `181 div 7` es `25`. El operador módulo `%` da lo que sobra después de la división. Son los días extra: `181 % 7` es `6`.

{% include nav.html %}
