---
title: Rückgabetyp
---

{% include menu.html %}

Sie können auch einen Typ für das Ergebnis einer Funktion festlegen. Es gibt ein paar Wege, das im Code zu schreiben.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Wählen Sie den Weg, der Ihnen am besten gefällt. Sehen Sie sich das vierte Beispiel an. Dort steht der Typ des Ergebnisses in den Klammern. Die Parameter der Funktion stehen auch dort.

{% include nav.html %}
