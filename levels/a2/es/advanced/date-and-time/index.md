---
title: Fecha y hora
---

{% include menu.html %}

Raku tiene tipos para fechas y horas. Son parte del lenguaje. Una fecha del calendario tiene el tipo `Date`. Para crear una fecha, da el año, el mes y el día:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Una fecha tiene partes. Puedes leer cada una de ellas:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

El método `day-of-week` da el día de la semana de la fecha. Los días tienen números. El lunes es `1`, y el domingo es `7`:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

El 27 de junio de 2026 es sábado. Por eso el resultado es `6`.

Un año bisiesto tiene 366 días. El método `is-leap-year` comprueba si la fecha está en un año bisiesto:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Para obtener la fecha de hoy, llama a `Date.today`. Aquí no mostramos su salida. Depende del día en que ejecutes el programa.

{% include nav.html %}
