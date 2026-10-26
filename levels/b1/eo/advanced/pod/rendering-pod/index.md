---
title: Bildigi Pod
translations_gpt:
---

{% include menu.html %}

Kiam dosiero enhavas Pod, la kompililo povas ŝanĝi ĝin en formatitan tekston. Ĝi ne bezonas ruli la programon. Por tio, uzu la opcion `--doc`:

```
raku --doc mymodule.raku
```

Por la pli frua ekzemplo kun titolo kaj alineo, tio presas ion kiel:

```
My Module

This module does something useful.
```

Oni povas bildigi ankaŭ listojn kaj kodblokojn. Prenu ĉi tiun Pod kiel ekzemplon:

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

Kiam vi bildigas ĝin per `raku --doc`, ĝi presas:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Ĉiu `=item` fariĝas bulpunkto. La bloko `=begin code … =end code` estas indentita kaj montrata ekzakte kiel ĝi estis skribita.

## Bildigi al HTML

Tio povas produkti ankaŭ aliajn formatojn. Por HTML, vi instalas formatilan modulon unufoje kaj poste donas ĝian nomon post `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Nun ekzakte la sama dokumento eliras kiel HTML. La titolo fariĝas `<h1>`, kaj la listo fariĝas `<ul>` el eroj `<li>`. La kodbloko fariĝas `<pre>`:

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

La ilo metas tion en kompletan HTML-paĝon. La oficiala dokumentado de Raku ĉe [docs.raku.org](https://docs.raku.org) estas farita tiel. Ĝi venas el Pod-fontdosieroj.

{% include nav.html %}
