---
title: Typisierte Parameter
---

{% include menu.html %}

In Raku können Sie Funktionsparameter auf einen Typ beschränken. Das ist sehr ähnlich wie bei [typisierten Variablen](/de/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Jetzt verlangt die Funktion, dass ihre Argumente ganze Zahlen sind.

```raku
say add(10, 20);
# say add(pi, e); # Fehler
```

Wenn Sie einen Wert von einem anderen Typ als `Int` übergeben, gibt es einen Kompilierungsfehler.

```
$ raku t.raku
===SORRY!=== Fehler beim Kompilieren von t.raku
Das Aufrufen von add(Num, Num) wird niemals mit der deklarierten Signatur (Int $x, Int $y) funktionieren
in t.raku:5
------> say ⏏add(pi, e);
```

Beachten Sie, dass Raku die Typen hier nicht automatisch umwandelt. In anderen Fällen kann Raku so eine Umwandlung machen.

```raku
# say add('3', '4'); # Fehler
say '3' + '4'; # OK und ergibt 7
```

%%tipblock
## Woran man einen Kompilierungsfehler erkennt
Wenn die Fehlermeldung mit `===SORRY!=== Fehler beim Kompilieren` beginnt, ist der Fehler zur Kompilierzeit passiert.
%%/tipblock

{% include nav.html %}
