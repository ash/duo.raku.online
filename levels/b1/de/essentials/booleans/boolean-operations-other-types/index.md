---
title: Boolesche Operationen mit anderen Typen
---

{% include menu.html %}

Im nächsten Abschnitt sprechen wir darüber, wie man [Daten von einem Typ in einen anderen umwandelt](/de/essentials/coercion). Aber vorher ist es wichtig, auf eine Eigenschaft von Raku hinzuweisen. Sie können boolesche Operationen mit Zeichenketten oder Ganzzahlen verwenden. In diesem Fall werden die Werte nicht in Boolesche Werte umgewandelt. Auch das Ergebnis ist kein Boolescher Wert. Sehen Sie sich diese Beispiele an:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Lassen Sie uns die Regeln 📖 [aus der Dokumentation](https://docs.raku.org/language/operators#Tight_AND_precedence) lesen:

* `&&` gibt das erste Argument zurück, das als Boolescher Wert False ist. Wenn es keines gibt, gibt es das letzte Argument zurück.
* `||` gibt das erste Argument zurück, das als Boolescher Wert True ist. Wenn es keines gibt, gibt es das letzte Argument zurück.
* `^^` gibt das True-Argument zurück, wenn es genau eines gibt. Wenn alle Argumente False sind, gibt es das letzte zurück. Wenn mehr als ein Argument True ist, gibt es `Nil` zurück.

Beachten Sie, dass wir gerade `Nil` kennengelernt haben, einen ‘Null’-Wert.

{% include nav.html %}
