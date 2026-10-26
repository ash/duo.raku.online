---
title: Formatierung und Code
---

{% include menu.html %}

Im Pod-Text markierst du Wörter mit _Formatierungscodes_. Jeder Code ist ein Buchstabe. Nach dem Buchstaben setzt du spitze Klammern um den Text:

* `B<…>` — fett
* `I<…>` — kursiv
* `C<…>` — Code (alle Buchstaben sind gleich breit)
* `L<…>` — ein Link

```raku
=begin pod

This is B<important>, and C<say> is a built-in.

=end pod
```

Im formatierten Text ist `important` fett. `say` steht in einer Code-Schrift. Du kannst einen Code in einen anderen Code setzen. So kombinierst du sie. Also ist `B<C<say>>` fetter Code.

Manchmal brauchst du einen ganzen Block Code. Ein kurzes Stück in einer Zeile reicht nicht. Dann benutze einen Codeblock: `=begin code … =end code`. Er hat eine Zeile am Anfang und eine Zeile am Ende. Er behält den Text genau so, wie er ist:

```raku
=begin pod

Here is how to call it:

=begin code
say greet('world');
=end code

=end pod
```

Die Zeilen im Codeblock erscheinen genau so, wie du sie schreibst. Raku liest sie nicht als Pod. Pod hat also Codes innerhalb von Zeilen, und es hat Codeblöcke. Damit kannst du eine API beschreiben. Eine API ist die Art, wie andere Programme deinen Code benutzen. Du schreibst formatierten Text und Beispiele. Die Beispiele sehen wie Code aus, den du ausführen kannst. All das steht direkt neben dem Code, den es beschreibt.

{% include nav.html %}
