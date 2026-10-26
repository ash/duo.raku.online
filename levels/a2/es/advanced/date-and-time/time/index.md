---
title: Trabajando con la hora
---

{% include menu.html %}

A veces necesitas la fecha y también la hora del día. Entonces usa el tipo `DateTime`. Lo creas casi como un `Date`. Pero también das la hora, el minuto y el segundo:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

Por defecto, el texto sigue el estándar ISO 8601. Primero va la fecha. Luego van la letra `T` y la hora. Al final está la letra `Z`. Indica la zona horaria UTC.

Ya conoces las partes de una fecha. Un `DateTime` también las tiene. Además, tiene las partes de la hora:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Para obtener la hora de ahora mismo, llama a `DateTime.now`. Aquí no mostramos su salida. Hicimos lo mismo con `Date.today`. La salida cambia cada vez que ejecutas el programa.

{% include nav.html %}
