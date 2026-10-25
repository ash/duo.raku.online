---
title: Bereiche
---

{% include menu.html %}

In Raku macht ein Bereich eine Liste von Elementen. Die Elemente kommen der Reihe nach, eins nach dem anderen.

Im einfachsten Fall ist ein Bereich eine Liste von ganzen Zahlen. Jede Zahl ist um 1 größer als die Zahl davor. Für einen Bereich verwenden Sie den `..`-Operator mit zwei Werten. Der erste Wert ist der kleinste Wert des Bereichs. Der zweite Wert ist der größte Wert:

```raku
1 .. 5
```

Sie brauchen keine Leerzeichen um den Operator. Also können Sie denselben Bereich auch so schreiben:

```raku
1..5
```

Ein Bereich macht eine Liste. Aber der Bereich selbst ist ein einziges Objekt. Also können Sie ihn in einer skalaren Variablen speichern:

```raku
my $r = 1 .. 5;
```

## Nicht nur Zahlen

Sie können Bereiche auch aus anderen Datentypen machen. Das geht, wenn Raku den nächsten Wert finden kann. Zum Beispiel:

```raku
my $letters = 'a' .. 'z';
```

In Raku haben Bereiche einen eigenen Datentyp. Die Variable `$r` hat den Typ `Range`.

{% include nav.html %}
