---
title: Boolesche Operationen mit anderen Typen
---

{% include menu.html %}

Im nächsten Abschnitt geht es um das [Ändern von Datentypen](/de/essentials/coercion). Aber sehen Sie sich zuerst eine wichtige Eigenschaft von Raku an. Sie können boolesche Operationen mit Zeichenketten oder Ganzzahlen verwenden. Dann wandelt Raku die Werte nicht in Boolesche Werte um. Auch das Ergebnis ist kein Boolescher Wert. Sehen Sie sich diese Beispiele an:

```raku
say 'Hello' && 'World'; # World
say 'Alpha' || 'Beta';  # Alpha
say 0 ^^ 42;            # 42
```

Hier sind die Regeln 📖 [aus der Dokumentation](https://docs.raku.org/language/operators#Tight_AND_precedence):

* `&&` gibt den ersten Wert zurück, der für Raku False ist. Wenn es keinen solchen Wert gibt, gibt es den letzten Wert zurück.
* `||` gibt den ersten Wert zurück, der für Raku True ist. Wenn es keinen solchen Wert gibt, gibt es den letzten Wert zurück.
* `^^` gibt den True-Wert zurück, wenn es nur einen True-Wert gibt. Wenn alle Werte False sind, gibt es den letzten Wert zurück. Wenn mehr als ein Wert True ist, gibt es `Nil` zurück.

Hier sehen wir einen neuen Wert: `Nil`. Das ist ein ‘Null’-Wert.

{% include nav.html %}
