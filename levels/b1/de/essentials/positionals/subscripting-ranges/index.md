---
title: Indizieren von Bereichen
---

{% include menu.html %}

Ein `Range` ist ein positionsbezogener Datentyp. Wie bei Arrays können Sie jedes seiner Elemente bekommen.

So geben Sie zum Beispiel das vierte Element aus, das der Bereich erzeugt:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Es gibt einen wichtigen Unterschied. Anders als Arrays behalten Bereiche nicht immer alle ihre Werte im Speicher.

## Größe

Um die Größe eines Bereichs zu bekommen, verwenden Sie die Methode `elems`, genau wie bei Arrays.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
