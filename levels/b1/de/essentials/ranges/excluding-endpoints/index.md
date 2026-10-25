---
title: Endpunkte ausschließen
---

{% include menu.html %}

Sie können ein Ende eines Bereichs ausschließen oder beide Enden. Fügen Sie dazu das Zeichen `^` zum Bereichsoperator hinzu. Auf diese Weise können Sie drei weitere Operatoren bilden. Die Kommentare listen die Zahlen auf, die jeder Bereich erzeugt.

```raku
1 ..^ 5;  # 1, 2, 3, 4
1 ^.. 5;  #    2, 3, 4, 5
1 ^..^ 5; #    2, 3, 4
```

In einfachen Fällen wie diesen können Sie die Leerzeichen um den Operator weglassen:

```raku
my $r1 = 1..5;
my $r2 = 1..^5;
```

Für einen Bereich, der mit 0 beginnt, wie `0..^5`, gibt es eine Kurzform: `^5`.

{% include nav.html %}
