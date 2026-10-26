---
title: Renderizar Pod
translations_gpt: true
---

{% include menu.html %}

Cuando un archivo contiene Pod, el compilador puede convertirlo en texto con formato. No necesita ejecutar el programa. Para esto, usa la opción `--doc`:

```
raku --doc mymodule.raku
```

Para el ejemplo anterior con un encabezado y un párrafo, esto imprime algo como:

```
My Module

This module does something useful.
```

Las listas y los bloques de código también se pueden renderizar. Toma este Pod como ejemplo:

```raku
=begin pod

=head1 Shopping list

Things to buy:

=item Apples
=item Bread
=item Cheese

Run it like this:

=begin code
say 'hello';
=end code

=end pod
```

Cuando lo renderizas con `raku --doc`, imprime:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Cada `=item` se convierte en una viñeta. El bloque `=begin code … =end code` se muestra con sangría y exactamente como se escribió.

## Renderizado a HTML

Esto también puede producir otros formatos. Para HTML, instalas un módulo formateador una vez y luego das su nombre después de `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Ahora exactamente el mismo documento sale como HTML. El encabezado se convierte en un `<h1>`, y la lista en un `<ul>` de elementos `<li>`. El bloque de código se convierte en un `<pre>`:

```html
<h1>Shopping list</h1>
<p>Things to buy:</p>
<ul>
  <li>Apples</li>
  <li>Bread</li>
  <li>Cheese</li>
</ul>
<p>Run it like this:</p>
<pre class="pod-block-code">say 'hello';</pre>
```

La herramienta pone esto dentro de una página HTML completa. La documentación oficial de Raku en [docs.raku.org](https://docs.raku.org) se hace así. Viene de archivos fuente con Pod.

{% include nav.html %}
