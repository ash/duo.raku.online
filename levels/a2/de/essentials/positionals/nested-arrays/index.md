---
title: Verschachtelte Arrays
---

{% include menu.html %}

Ein Array kann beliebige andere Daten enthalten. Es kann sogar andere Arrays enthalten. Das sind verschachtelte Arrays. Zeigen Sie mit eckigen Klammern, wo jedes verschachtelte Array beginnt und endet:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Sie können auch noch ein Paar Klammern hinzufügen. Die Klammern stehen um das äußere, oberste Array. Das nächste Beispiel hat dieselbe Datenstruktur wie vorher.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Um ein inneres Element zu bekommen, fügen Sie weitere Indizes hinzu. Nehmen Sie so viele, wie Sie brauchen. Mit jedem Paar eckiger Klammern gehen Sie eine Ebene tiefer:

```raku
say @table[0][3]; # Gibt 4 aus
say @table[2][1]; # Gibt 200 aus
```

{% include nav.html %}
