---
title: Renderizar Pod
translations_gpt: true
---

{% include menu.html %}

Tu archivo puede tener Pod. Entonces el compilador puede convertirlo en texto con formato. Para esto, no ejecuta el programa. Usa la opción `--doc`:

```
raku --doc mymodule.raku
```

Toma el ejemplo anterior con un encabezado y un párrafo. Con ese ejemplo, el comando imprime algo así:

```
My Module

This module does something useful.
```

Esto también funciona con listas y bloques de código. Mira este Pod:

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

Con `raku --doc`, imprime esto:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Cada `=item` se convierte en una viñeta. El bloque `=begin code … =end code` se mueve un poco a la derecha. Su texto queda exactamente como lo escribiste.

## Convertir Pod en HTML

De la misma forma, también puedes obtener otros formatos. Para HTML, instala un módulo formateador. Lo haces solo una vez. Luego escribe su nombre después de `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Ahora el mismo documento sale como HTML. El encabezado se convierte en un `<h1>`. La lista se convierte en un `<ul>` con elementos `<li>`. El bloque de código se convierte en un `<pre>`:

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

La herramienta también pone esto en una página HTML completa. La documentación oficial de Raku en [docs.raku.org](https://docs.raku.org) se hace de esta forma. Viene de archivos Pod.

{% include nav.html %}
