---
title: Fecha y hora
---

{% include menu.html %}

Raku tiene tipos incorporados para fechas de calendario y horas del reloj. Una fecha de calendario tiene el tipo `Date`. Para crear una, das el año, el mes y el día:

```raku
my $d = Date.new(2026, 6, 27);
say $d; # 2026-06-27
```

Cuando tienes una fecha, puedes leer sus partes:

```raku
my $d = Date.new(2026, 6, 27);
say $d.year;  # 2026
say $d.month; # 6
say $d.day;   # 27
```

El método `day-of-week` te dice el día de la semana de una fecha. Da un número desde `1` para el lunes hasta `7` para el domingo:

```raku
say Date.new(2026, 6, 27).day-of-week; # 6
```

El 27 de junio de 2026 es sábado, así que el resultado es `6`.

El método `is-leap-year` comprueba si el año de la fecha es bisiesto:

```raku
say Date.new(2024, 1, 1).is-leap-year; # True
say Date.new(2026, 1, 1).is-leap-year; # False
```

Llama a `Date.today` para obtener la fecha de hoy. Su salida no se muestra aquí. Depende del día en que ejecutes el programa.

{% include nav.html %}
