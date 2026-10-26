---
title: 'Solution: Una semana después'
---

{% include menu.html %}

Aquí tienes una forma de resolver la tarea.

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

1. `later(:days(7))` avanza la fecha siete días. Eso es una semana. También podemos escribir `+ 7`. Pero con el argumento con nombre, ves la unidad.

1. Febrero de 2027 tiene 28 días. Por eso la fecha una semana después del 28 está en marzo. Raku pasa a marzo por sí solo. El resultado es `2027-03-07`.

1. Llamamos a `day-of-week` sobre la nueva fecha. Da `7`. Con este número, puedes comprobar el resultado fácilmente. Exactamente una semana después, el día de la semana es el *mismo*. Y `2027-02-28` también es domingo (`7`). Así que `7` es la respuesta que esperas aquí.

{% include nav.html %}
