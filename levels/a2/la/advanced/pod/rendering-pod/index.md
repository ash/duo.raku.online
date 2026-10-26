---
title: Pod reddere
translations_gpt:
---

{% include menu.html %}

Fortasse fasciculus tuus Pod habet. Tum compilator eum in textum formatum vertere potest. Ad hoc programma non exsequitur. Optionem `--doc` adhibe:

```
raku --doc mymodule.raku
```

Sume exemplum superius cum titulo et paragrapho. Pro eo mandatum aliquid tale imprimit:

```
My Module

This module does something useful.
```

Hoc etiam cum indicibus et truncis codicis operatur. Specta hunc Pod:

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

Cum `raku --doc` hoc imprimit:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Quodque `=item` punctum fit. Truncus `=begin code … =end code` se paulum ad dextram movet. Textus eius prorsus manet ut eum scripsisti.

## Pod in HTML vertere

Eodem modo alia formata quoque accipere potes. Pro HTML modulum formatoris installa. Hoc semel tantum facis. Deinde nomen eius post `--doc` scribe:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Nunc idem documentum ut HTML exit. Titulus fit `<h1>`. Index fit `<ul>` cum elementis `<li>`. Truncus codicis fit `<pre>`:

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

Instrumentum hoc etiam in paginam HTML integram ponit. Documentatio officialis Raku apud [docs.raku.org](https://docs.raku.org) hoc modo fit. Ex fasciculis Pod venit.

{% include nav.html %}
