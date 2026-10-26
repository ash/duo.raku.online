---
title: Pod renderen
translations_gpt:
---

{% include menu.html %}

Als een bestand Pod bevat, kan de compiler die omzetten in opgemaakte tekst. Hij hoeft het programma niet uit te voeren. Gebruik hiervoor de optie `--doc`:

```
raku --doc mymodule.raku
```

Voor het eerdere voorbeeld met een kop en een alinea print dit zoiets als:

```
My Module

This module does something useful.
```

Lijsten en codeblokken kunnen ook gerenderd worden. Neem deze Pod als voorbeeld:

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

Als je het met `raku --doc` rendert, print het dit:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Elk `=item` wordt een opsommingspunt. Het blok `=begin code … =end code` springt in en wordt precies getoond zoals het geschreven is.

## Renderen naar HTML

Dit kan ook andere formaten maken. Voor HTML installeer je één keer een formatter-module en geef je de naam ervan op na `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Nu komt precies hetzelfde document eruit als HTML. De kop wordt een `<h1>`, en de lijst wordt een `<ul>` van `<li>`-items. Het codeblok wordt een `<pre>`:

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

De tool zet dit in een complete HTML-pagina. De officiële Raku-documentatie op [docs.raku.org](https://docs.raku.org) wordt zo gemaakt. Ze komt uit Pod-bronbestanden.

{% include nav.html %}
