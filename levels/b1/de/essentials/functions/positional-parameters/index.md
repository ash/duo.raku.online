---
title: Positionsparameter
---

{% include menu.html %}

Die Reihenfolge der Funktionsparameter spielt eine Rolle. Erstellen wir zum Beispiel eine Funktion, die die Differenz zwischen zwei Zahlen berechnet:

```raku
sub diff($a, $b) { $a - $b }
```

Es ist klar, dass der Aufruf `diff(10, 20)` ein anderes Ergebnis liefert als `diff(20, 10)`.

Parameter in einer Liste mit Kommas, wie in der Funktion oben, heißen _positionsabhängig_. Ihre Bedeutung hängt von der Reihenfolge der Argumente ab, wenn Sie die Funktion aufrufen.

{% include nav.html %}
