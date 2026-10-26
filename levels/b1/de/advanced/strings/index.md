---
title: Zeichenketten
---

{% include menu.html %}

Im Essentials-Teil hast du gelernt, [wie man Strings erstellt](/de/essentials/strings). Du hast Verkettung, Interpolation und die Länge eines Strings gesehen. Strings haben auch eine große Sammlung von Methoden. Dieser Abschnitt sammelt die nützlichsten. Die Suche mit [regulären Ausdrücken](/de/regexes) ist ein eigenes, größeres Thema. Es wird später in einem eigenen Teil behandelt.

Drei Methoden ändern die Groß- und Kleinschreibung der Buchstaben in einem String:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

Die Methode `flip` kehrt die Reihenfolge der Zeichen in einem String um:

```raku
say 'Raku'.flip; # ukaR
```

Und der Operator `x` wiederholt einen String so oft, wie du willst:

```raku
say 'ab' x 3; # ababab
```

Die nächsten Themen zeigen, wie man in Strings sucht. Sie zeigen auch, wie man Strings in Teile zerlegt und wieder zusammenfügt.

{% include nav.html %}
