---
title: Typumwandlung für typisierte Variablen
---

{% include menu.html %}

Typbeschränkungen sind ziemlich streng. Zum Beispiel können Sie einer als `Int` deklarierten Variable keinen `Num`-Wert zuweisen. Das gilt auch dann, wenn der Wert eine ganze Zahl ist:

```raku
my Int $x = 42;
# $x = 42e1; # Fehler
```

Verwenden Sie [eine der Methoden](/de/essentials/coercion/#topics-in-this-section), um den Wert in den richtigen Typ umzuwandeln.

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
