---
title: Fundamentos de Pod
translations_gpt: true
---

{% include menu.html %}

La documentación Pod está en tu archivo fuente. Unas líneas especiales la marcan. Estas líneas empiezan con `=`. La forma más sencilla es un bloque de Pod. Ponlo entre `=begin pod` y `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Dentro del bloque, las directivas muestran la estructura del texto:

* `=head1`, `=head2`, … — encabezados de distintos niveles
* un párrafo normal — solo texto en sus propias líneas
* `=item` — un elemento de una lista con viñetas

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

La línea `=head1` es un encabezado de nivel superior. Las tres líneas `=item` forman una lista. El Pod está junto a tu código. Pero no cambia el código. El compilador se salta el Pod cuando ejecuta el programa. Pero el compilador también puede sacar el Pod. Luego muestra el Pod como texto. Lo hace cuando tú lo pides. Un tema posterior muestra esto.

{% include nav.html %}
