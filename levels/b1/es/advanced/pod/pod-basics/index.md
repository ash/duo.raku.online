---
title: Fundamentos de Pod
translations_gpt: true
---

{% include menu.html %}

La documentación Pod vive en tu archivo fuente. Las líneas que empiezan con `=` marcan dónde está. La forma más sencilla es escribirla entre `=begin pod` y `=end pod`:

```raku
=begin pod

=head1 My Module

This module does something useful.

=end pod
```

Dentro del bloque, las directivas describen la estructura:

* `=head1`, `=head2`, … — encabezados de distintos niveles
* un párrafo normal — simplemente texto en sus propias líneas
* `=item` — un elemento en una lista con viñetas

```raku
=begin pod

=head1 Features

=item Fast
=item Small
=item Simple

=end pod
```

La línea `=head1` es un encabezado de nivel superior. Las tres líneas `=item` forman una lista. El Pod está junto a tu código, pero no cambia cómo funciona. El compilador lo ignora cuando ejecuta el programa. Pero cuando lo pides, puede sacar el Pod y renderizarlo. Un tema posterior muestra esto.

{% include nav.html %}
