---
title: Zeichenketten
---

{% include menu.html %}

Im Essentials-Teil hast du gelernt, [wie man Strings baut](/de/essentials/strings). Du hast gelernt, Strings zu verbinden und zu interpolieren. Du hast auch gelernt, die Länge eines Strings zu finden. Strings haben auch viele Methoden. Dieser Abschnitt zeigt die nützlichsten davon. Die Suche mit [regulären Ausdrücken](/de/regexes) ist ein eigenes, größeres Thema. Es hat später im Kurs einen eigenen Teil.

Drei Methoden ändern die Groß- und Kleinschreibung eines Strings. Es geht um große oder kleine Buchstaben:

```raku
say 'raku'.uc; # RAKU  — upper case
say 'RAKU'.lc; # raku  — lower case
say 'raku'.tc; # Raku  — title case (first letter capitalised)
```

Die Methode `flip` schreibt die Zeichen eines Strings rückwärts:

```raku
say 'Raku'.flip; # ukaR
```

Und der Operator `x` wiederholt einen String mehrmals. Du gibst an, wie oft:

```raku
say 'ab' x 3; # ababab
```

Die nächsten Themen zeigen, wie du in Strings suchst. Sie zeigen auch, wie du Strings in Teile zerlegst. Und sie zeigen, wie du die Teile wieder verbindest.

{% include nav.html %}
