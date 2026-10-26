---
title: Pod rendern
---

{% include menu.html %}

Wenn eine Datei Pod enthält, kann der Compiler es in formatierten Text umwandeln. Er muss das Programm nicht ausführen. Benutze dafür die Option `--doc`:

```
raku --doc mymodule.raku
```

Für das Beispiel von vorhin mit Überschrift und Absatz gibt das etwa Folgendes aus:

```
My Module

This module does something useful.
```

Auch Listen und Codeblöcke kann man rendern. Nimm dieses Pod als Beispiel:

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

Wenn du es mit `raku --doc` renderst, gibt es Folgendes aus:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Jedes `=item` wird zu einem Aufzählungspunkt. Der Block `=begin code … =end code` wird eingerückt und genau so angezeigt, wie er geschrieben wurde.

## Rendern als HTML

So kannst du auch andere Formate erzeugen. Für HTML installierst du einmal ein Formatierungsmodul und gibst dann seinen Namen nach `--doc` an:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Jetzt kommt genau dasselbe Dokument als HTML heraus. Die Überschrift wird zu einem `<h1>`, und die Liste wird zu einer `<ul>` aus `<li>`-Einträgen. Der Codeblock wird zu einem `<pre>`:

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

Das Werkzeug packt das in eine vollständige HTML-Seite. Die offizielle Raku-Dokumentation auf [docs.raku.org](https://docs.raku.org) wird auf diese Weise erzeugt. Sie entsteht aus Pod-Quelldateien.

{% include nav.html %}
