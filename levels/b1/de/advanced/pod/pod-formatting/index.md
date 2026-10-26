---
title: Formatierung und Code
---

{% include menu.html %}

Im Pod-Text markierst du Wörter mit _Formatierungscodes_ aus einem einzigen Buchstaben. Du schreibst den Buchstaben und dann spitze Klammern um den Text:

* `B<…>` — fett
* `I<…>` — kursiv
* `C<…>` — Code (alle Buchstaben haben die gleiche Breite)
* `L<…>` — ein Link

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Nach dem Rendern ist `important` fett und `say` in einer Code-Schrift. Codes kann man ineinander setzen und kombinieren, also ist `B<C<say>>` fetter Code.

Manchmal brauchst du einen ganzen Codeblock, nicht nur ein Stück in einer Zeile. Dann benutze einen Codeblock mit klaren Anfangs- und Endzeilen, `=begin code … =end code`. Er behält den Text genau so, wie er geschrieben ist:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Die Zeilen im Codeblock werden genau so angezeigt, wie sie geschrieben sind. Sie werden nicht als Pod gelesen. Mit Inline-Codes und Codeblöcken zusammen kann Pod eine API dokumentieren. Es kann formatierten Text und Beispiele enthalten, die wie echter, funktionierender Code aussehen. All das steht direkt neben dem Code, den es beschreibt.

{% include nav.html %}
