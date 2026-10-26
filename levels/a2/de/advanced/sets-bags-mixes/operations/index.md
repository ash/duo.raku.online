---
title: Mengenoperationen
---

{% include menu.html %}

Du kannst Sets mit den üblichen Operationen aus der Mengenlehre kombinieren. Die Mengenlehre ist ein Teil der Mathematik. Jeder Operator hat ein Unicode-Symbol. Man kann ihn auch in ASCII schreiben. Benutze die Form, die dir besser gefällt.

Die _Vereinigung_ ist `∪`, oder `(|)` in ASCII. Sie nimmt alle Werte aus beiden Sets:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Der Wert `3` ist in beiden Sets. Also hat die Vereinigung fünf verschiedene Elemente: `1, 2, 3, 4, 5`.

Der _Durchschnitt_ ist `∩`, oder `(&)` in ASCII. Er behält nur die Werte, die in beiden Sets sind:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — beachte, dass Sets ungeordnet sind
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Hier hat der Durchschnitt `2` und `3`. Diese Werte sind in beiden Sets. Ein Set hat keine Reihenfolge. Also können die zwei Elemente in der Ausgabe in jeder Reihenfolge kommen.

Diese Operationen geben auch ein Set. Also kannst du ihm dieselben Fragen stellen. Wie viele Elemente hat das Set? Ist ein bestimmter Wert darin?

{% include nav.html %}
