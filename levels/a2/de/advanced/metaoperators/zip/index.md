---
title: Zip-Metaoperatoren
translations_gpt:
---

{% include menu.html %}

Der Zip-Meta-Operator `Z` nimmt zwei Listen oder mehr. Er bringt ihre Elemente nach der Position zusammen:

```raku
say (1, 2, 3) Z (4, 5, 6); # ((1 4) (2 5) (3 6))
```

Das Ergebnis ist eine Liste von Gruppen. Die erste Gruppe hat das erste Element jeder Liste. Die zweite Gruppe hat das zweite Element jeder Liste, und so weiter.

Es gibt auch einen noch klügeren Weg. Sie können `Z` mit einem Operator verwenden. Dann arbeitet der Operator mit jedem Paar. Zum Beispiel addiert `Z+` die Elemente an denselben Positionen:

```raku
say (1, 2, 3) Z+ (10, 20, 30); # (11 22 33)
```

Hier arbeitet der Zip-Meta-Operator mit dem Operator `+`. Er rechnet `1 + 10`, `2 + 20` und `3 + 30`. Genauso multipliziert `Z*` die Elemente an denselben Positionen:

```raku
say (1, 2, 3) Z* (10, 20, 30); # (10 40 90)
```

Und `Z~` verbindet die Zeichenketten an denselben Positionen:

```raku
say <a b c> Z~ <1 2 3>; # (a1 b2 c3)
```

{% include nav.html %}
