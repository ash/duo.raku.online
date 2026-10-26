---
title: Pod rendern
---

{% include menu.html %}

Vielleicht steht in deiner Datei Pod. Dann kann der Compiler es in formatierten Text verwandeln. Dafür führt er das Programm nicht aus. Benutze die Option `--doc`:

```
raku --doc mymodule.raku
```

Nimm das Beispiel von vorhin mit einer Überschrift und einem Absatz. Dafür gibt der Befehl etwa das hier aus:

```
My Module

This module does something useful.
```

Das funktioniert auch mit Listen und Codeblöcken. Sieh dir dieses Pod an:

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

Mit `raku --doc` sieht die Ausgabe so aus:

```
Shopping list

Things to buy:

  * Apples

  * Bread

  * Cheese

Run it like this:

    say 'hello';
```

Jedes `=item` wird zu einem Aufzählungspunkt. Der Block `=begin code … =end code` rückt ein Stück nach rechts. Sein Text bleibt genau so, wie du ihn geschrieben hast.

## Pod in HTML umwandeln

Auf die gleiche Weise bekommst du auch andere Formate. Für HTML installiere ein Formatierungsmodul. Das machst du nur einmal. Dann schreib seinen Namen nach `--doc`:

```
zef install Pod::To::HTML
raku --doc=HTML mymodule.raku > mymodule.html
```

Jetzt kommt dasselbe Dokument als HTML heraus. Die Überschrift wird zu einem `<h1>`. Die Liste wird zu einer `<ul>` mit `<li>`-Einträgen. Der Codeblock wird zu einem `<pre>`:

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

Das Werkzeug packt das auch in eine vollständige HTML-Seite. So entsteht die offizielle Raku-Dokumentation auf [docs.raku.org](https://docs.raku.org). Sie kommt aus Pod-Dateien.

{% include nav.html %}
