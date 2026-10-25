---
title: Endpunkte ausschließen
---

{% include menu.html %}

Sie können ein Ende des Bereichs weglassen oder beide Enden. Dafür fügen Sie das Zeichen `^` zum Bereichsoperator hinzu. So bekommen Sie drei weitere Operatoren. Die Kommentare zeigen die Zahlen, die jeder Bereich liefert.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

Die Fälle oben sind einfach. In solchen Fällen können Sie die Leerzeichen um den Bereichsoperator weglassen:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Manche Bereiche beginnen mit 0, zum Beispiel `0..^5`. Für solche Bereiche gibt es eine kurze Schreibweise: `^5`.

{% include nav.html %}
