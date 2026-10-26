---
title: Trabajando con la hora
---

{% include menu.html %}

Si necesitas tanto la fecha como la hora del día, usa el tipo `DateTime`. Lo creas casi igual que un `Date`. Pero también das la hora, el minuto y el segundo:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt; # 2026-06-27T14:30:00Z
```

La forma de texto por defecto sigue el estándar ISO 8601. Tiene la fecha, la letra `T` y la hora. Al final, una `Z` indica la zona horaria UTC.

Un `DateTime` tiene las partes de la fecha que ya conoces. También te deja leer las partes de la hora:

```raku
my $dt = DateTime.new(2026, 6, 27, 14, 30, 0);
say $dt.hour;   # 14
say $dt.minute; # 30
```

Para obtener el momento actual, llama a `DateTime.now`. Su salida no se muestra aquí, igual que con `Date.today`. Cambia cada vez que ejecutas el programa.

{% include nav.html %}
