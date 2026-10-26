---
title: Aritmética de fechas
---

{% include menu.html %}

Puedes hacer aritmética con fechas. Así, muchos cálculos de cada día son fáciles.

Puedes sumar un entero a una fecha. Entonces la fecha avanza ese número de días. Obtienes una fecha nueva. Si hace falta, Raku también cambia el mes y el año:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

También puedes restar una fecha de otra. Obtienes el número de días entre ellas:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Para pasos más grandes, usa los métodos `later` y `earlier`. Aceptan argumentos con nombre, como `:days`, `:months` o `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Estos métodos siempre dan la fecha correcta. También funcionan cuando empieza un mes o un año nuevo. Así nunca necesitas saber cuántos días tiene un mes.

{% include nav.html %}
