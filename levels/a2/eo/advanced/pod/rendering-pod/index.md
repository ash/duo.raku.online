---
title: Bildigi Pod
translations_gpt:
---

{% include menu.html %}

Eble via dosiero havas Pod. Tiam la kompililo povas fari el ĝi formatitan tekston. Ĝi ne rulas la programon por tio. Uzu la opcion `--doc`:

```
raku --doc mymodule.raku
```

Prenu la pli fruan ekzemplon kun titolo kaj alineo. Por ĝi la komando presas ion tian:

```
My Module

This module does something useful.
```

Tio funkcias ankaŭ kun listoj kaj kodblokoj. Rigardu ĉi tiun Pod:

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

Per `raku --doc` ĝi presas jenon:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Ĉiu `=item` fariĝas bulpunkto. La bloko `=begin code … =end code` moviĝas iom dekstren. Ĝia teksto restas ekzakte kiel vi skribis ĝin.

## Fari HTML el Pod

Same tiel vi povas ricevi ankaŭ aliajn formatojn. Por HTML, instalu formatilan modulon. Vi faras tion nur unufoje. Poste skribu ĝian nomon post `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Nun la sama dokumento eliras kiel HTML. La titolo fariĝas `<h1>`. La listo fariĝas `<ul>` kun eroj `<li>`. La kodbloko fariĝas `<pre>`:

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

La ilo ankaŭ metas tion en plenan HTML-paĝon. Tiel oni faras la oficialan dokumentadon de Raku ĉe [docs.raku.org](https://docs.raku.org). Ĝi venas el Pod-dosieroj.

{% include nav.html %}
