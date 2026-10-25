---
title: Typumwandlung für typisierte Variablen
---

{% include menu.html %}

Typbeschränkungen sind Regeln für die Typen von Variablen. Diese Regeln sind ziemlich streng. Nehmen Sie zum Beispiel eine Variable mit dem Typ `Int`. Sie können ihr keinen `Num`-Wert zuweisen. Das gilt auch, wenn der Wert eine ganze Zahl ist:

```raku
my Int $x = 42;
# $x = 42e1; # Fehler
```

Um den Wert umzuwandeln, verwenden Sie [eine der Methoden](/de/essentials/coercion/#topics-in-this-section).

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
