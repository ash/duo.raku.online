---
title: Zip-Metaoperatoren
translations_gpt:
---

{% include menu.html %}

Der Zip-Meta-Operator `Z` nimmt zwei oder mehr Listen. Er bildet aus ihren Elementen Paare, nach der Position:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Das Ergebnis ist eine Liste von Gruppen. Die erste Gruppe enthält das erste Element jeder Liste. Die nächste Gruppe enthält die zweiten Elemente, und so weiter.

Noch geschickter: Sie können `Z` mit einem Operator kombinieren, der mit jedem Paar arbeitet. Zum Beispiel addiert `Z+` die Elemente Position für Position:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Hier umhüllt der Zip-Meta-Operator den Operator `+`. Er berechnet `1 + 10`, `2 + 20` und `3 + 30`. Genauso multipliziert `Z*` die passenden Elemente:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Und `Z~` verbindet die passenden Zeichenketten:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
