---
title: Verschachtelte Arrays
---

{% include menu.html %}

Arrays können beliebige andere Daten enthalten, auch andere Arrays. Um zu zeigen, wo jedes verschachtelte Array beginnt und endet, verwenden Sie eckige Klammern:

```raku
my @table = 
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400];
```

Sie können auch ein weiteres Paar Klammern um das oberste Array setzen. Dieses Beispiel zeigt dieselbe Datenstruktur wie das vorherige.

```raku
my @table = [
    [1, 2, 3, 4],
    [10, 20, 30, 40],
    [100, 200, 300, 400]
];
```

Um die inneren Elemente zu bekommen, fügen Sie so viele Indizes hinzu, wie Sie brauchen. Jedes Paar eckiger Klammern bringt Sie eine Ebene tiefer in die Struktur:

```raku
say @table[0][3]; # Gibt 4 aus
say @table[2][1]; # Gibt 200 aus
```

{% include nav.html %}
