---
title: Formato y código
translations_gpt: true
---

{% include menu.html %}

En el texto Pod, marcas las palabras con _códigos de formato_. Cada código es una letra. Después de la letra, pones paréntesis angulares alrededor del texto:

* `B<…>` — negrita
* `I<…>` — cursiva
* `C<…>` — código (todas las letras tienen el mismo ancho)
* `L<…>` — un enlace

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

En el texto con formato, `important` está en negrita. `say` está en fuente de código. Puedes poner un código dentro de otro código. De esta forma, los combinas. Así que `B<C<say>>` es código en negrita.

A veces necesitas un bloque entero de código. Un trozo corto dentro de una línea no basta. Entonces usa un bloque de código: `=begin code … =end code`. Tiene una línea al principio y una línea al final. Guarda el texto exactamente como está:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Las líneas del bloque de código aparecen exactamente como las escribes. Raku no las lee como Pod. Así que Pod tiene códigos dentro de las líneas y tiene bloques de código. Con ellos, puedes describir una API. Una API es la forma en que otros programas usan tu código. Escribes texto con formato y ejemplos. Los ejemplos parecen código que puedes ejecutar. Todo esto está junto al código que describe.

{% include nav.html %}
