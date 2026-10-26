---
title: Pod renderen
translations_gpt:
---

{% include menu.html %}

Misschien staat er Pod in je bestand. Dan kan de compiler de Pod omzetten in opgemaakte tekst. Hij voert het programma daarvoor niet uit. Gebruik de optie `--doc`:

```
raku --doc mymodule.raku
```

Neem het eerdere voorbeeld met een kop en een alinea. Daarvoor print het commando zoiets als dit:

```
My Module

This module does something useful.
```

Dit werkt ook met lijsten en codeblokken. Kijk naar deze Pod:

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

Met `raku --doc` print het dit:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Elk `=item` wordt een punt met een bolletje. Het blok `=begin code … =end code` schuift een beetje naar rechts. De tekst ervan blijft precies zoals je hem schreef.

## Pod omzetten naar HTML

Op dezelfde manier kun je ook andere formaten krijgen. Installeer voor HTML een formatter-module. Dat doe je maar één keer. Schrijf dan de naam ervan na `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Nu komt hetzelfde document eruit als HTML. De kop wordt een `<h1>`. De lijst wordt een `<ul>` met `<li>`-items. Het codeblok wordt een `<pre>`:

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

De tool zet dit ook in een volledige HTML-pagina. De officiële Raku-documentatie op [docs.raku.org](https://docs.raku.org) wordt op deze manier gemaakt. Ze komt uit Pod-bestanden.

{% include nav.html %}
