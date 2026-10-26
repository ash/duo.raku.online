---
title: Aritmética de fechas
---

{% include menu.html %}

Puedes hacer aritmética con fechas. Esto hace que muchos cálculos de cada día sean simples.

Si sumas un entero a una fecha, la fecha avanza ese número de días. El resultado es una fecha nueva. Su mes y su año cambian automáticamente cuando hace falta:

```raku
say Date.new(2026, 6, 27) + 7; # 2026-07-04
```

Si restas una fecha de otra, obtienes el número de días entre ellas:

```raku
say Date.new(2026, 7, 4) - Date.new(2026, 6, 27); # 7
```

Para pasos más grandes, existen los métodos `later` y `earlier`. Aceptan argumentos con nombre como `:days`, `:months` o `:years`:

```raku
say Date.new(2026, 6, 27).later(:days(10));    # 2026-07-07
say Date.new(2026, 6, 27).earlier(:months(2)); # 2026-04-27
```

Estos métodos cuentan bien cuando empieza un nuevo mes o un nuevo año. Así que nunca tienes que preocuparte por cuántos días tiene un mes.

{% include nav.html %}
