---
title: Typisierte Parameter
---

{% include menu.html %}

In Raku kann ein Funktionsparameter einen Typ haben. Dann nimmt er nur Werte von diesem Typ. Das ist sehr ähnlich wie bei [typisierten Variablen](/de/essentials/typed-variables/type-constraints/).

```raku
sub add(Int $x, Int $y) { $x + $y }
```

Jetzt müssen die Argumente der Funktion ganze Zahlen sein.

```raku
say add(10, 20);
# say add(pi, e); # Fehler
```

Sie können nur Werte vom Typ `Int` übergeben. Jeder andere Typ führt zu einem Kompilierungsfehler. So ein Fehler kommt vor dem Start des Programms.

```
$ raku t.raku
===SORRY!=== Fehler beim Kompilieren von t.raku
Das Aufrufen von add(Num, Num) wird niemals mit der deklarierten Signatur (Int $x, Int $y) funktionieren
in t.raku:5
------> say ⏏add(pi, e);
```

Beachten Sie: Raku wandelt die Typen hier nicht für Sie um. In anderen Fällen ist so eine Umwandlung möglich.

```raku
# say add('3', '4'); # Fehler
say '3' + '4'; # OK und ergibt 7
```

%%tipblock
## Ist es ein Kompilierungsfehler?
Sehen Sie sich den Anfang der Fehlermeldung an. Steht dort `===SORRY!=== Fehler beim Kompilieren`? Dann ist der Fehler zur Kompilierzeit passiert.
%%/tipblock

{% include nav.html %}
