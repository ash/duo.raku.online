---
title: Rückgabetyp
---

{% include menu.html %}

Sie können dem Ergebnis einer Funktion auch ausdrücklich einen Typ geben. Es gibt ein paar Wege, das im Code zu schreiben.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Wählen Sie den Weg, der Ihnen am besten gefällt. Beachten Sie das vierte Beispiel. Dort steht der Rückgabetyp in den Klammern, zusammen mit den Funktionsparametern.

{% include nav.html %}
