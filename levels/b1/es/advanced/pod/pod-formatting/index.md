---
title: Formato y código
translations_gpt: true
---

{% include menu.html %}

Dentro del texto Pod, marcas las palabras con _códigos de formato_ de una sola letra. Escribes la letra y luego paréntesis angulares alrededor del texto:

* `B<…>` — negrita
* `I<…>` — cursiva
* `C<…>` — código (con todas las letras del mismo ancho)
* `L<…>` — un enlace

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Después de renderizar, `important` se muestra en negrita y `say` en fuente de código. Los códigos pueden ir uno dentro de otro y combinarse, así que `B<C<say>>` es código en negrita.

A veces necesitas un bloque entero de código, no solo un trozo dentro de una línea. Entonces usa un bloque de código con líneas claras de inicio y de fin, `=begin code … =end code`. Mantiene el texto exactamente como se escribió:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Las líneas dentro del bloque de código se muestran exactamente como se escribieron. No se leen como Pod. Con los códigos en línea y los bloques de código juntos, Pod puede documentar una API. Puede tener texto con formato y ejemplos que parecen código real que funciona. Todo esto se queda junto al código que describe.

{% include nav.html %}
