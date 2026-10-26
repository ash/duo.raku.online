---
title: Mengenoperationen
---

{% include menu.html %}

Du kannst Sets mit den üblichen Operationen aus der Mengenlehre kombinieren. Jeder Operator hat ein Unicode-Symbol und eine ASCII-Schreibweise. Du kannst jede der beiden benutzen.

Die _Vereinigung_ `∪`, oder `(|)`, sammelt alle Werte beider Sets:

```raku
say (set(1, 2, 3) ∪ set(3, 4, 5)).elems; # 5
```

Da beide Sets `3` enthalten, hat die Vereinigung fünf verschiedene Elemente: `1, 2, 3, 4, 5`.

Der _Durchschnitt_ `∩`, oder `(&)`, behält nur die Werte, die beide Sets haben:

```raku
my $common = set(1, 2, 3) ∩ set(2, 3, 4);
say $common;       # Set(2 3) — beachte, dass Sets ungeordnet sind
say $common.elems; # 2
say 2 ∈ $common;   # True
```

Hier enthält der Durchschnitt `2` und `3`, also die Werte, die in beiden Sets sind. Ein Set hat keine eigene Reihenfolge. Wenn du es ausgibst, können die zwei Elemente also in beliebiger Reihenfolge kommen.

Das Ergebnis dieser Operationen ist auch ein Set. Also kannst du ihm dieselben Fragen stellen. Wie viele Elemente hat es, und ist ein bestimmter Wert darin?

{% include nav.html %}
