---
title: Pod reddere
translations_gpt:
---

{% include menu.html %}

Cum fasciculus Pod continet, compilator eum in textum formatum vertere potest. Non necesse est programma exsequi. Ad hoc optione `--doc` utere:

```
raku --doc mymodule.raku
```

Pro exemplo superiore cum titulo et paragrapho hoc aliquid tale imprimit:

```
My Module

This module does something useful.
```

Indices et trunci codicis quoque reddi possunt. Sume hunc Pod ut exemplum:

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

Si eum cum `raku --doc` reddis, hoc imprimit:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Quodque `=item` punctum fit. Truncus `=begin code … =end code` cum incisura ostenditur, prorsus ut scriptus est.

## Redditio in HTML

Hoc etiam alia formata producere potest. Pro HTML modulum formatoris semel installas et deinde nomen eius post `--doc` das:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Nunc prorsus idem documentum ut HTML exit. Titulus fit `<h1>`, et index fit `<ul>` elementorum `<li>`. Truncus codicis fit `<pre>`:

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

Instrumentum hoc in paginam HTML integram ponit. Documentatio officialis Raku apud [docs.raku.org](https://docs.raku.org) sic fit. Ex fontibus Pod venit.

{% include nav.html %}
