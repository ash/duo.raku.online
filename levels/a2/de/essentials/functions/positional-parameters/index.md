---
title: Positionsparameter
---

{% include menu.html %}

Die Reihenfolge der Funktionsparameter ist wichtig. Nehmen Sie zum Beispiel eine Funktion. Diese Funktion berechnet die Differenz zwischen zwei Zahlen:

```raku
sub diff($a, $b) { $a - $b }
```

Natürlich geben `diff(10, 20)` und `diff(20, 10)` verschiedene Ergebnisse.

In der Funktion oben sind die Parameter eine Liste mit Kommas. Solche Parameter heißen _positionsabhängig_. Bei einem Aufruf ist die Reihenfolge der Argumente wichtig. Sie bestimmt die Bedeutung jedes Parameters.

{% include nav.html %}
