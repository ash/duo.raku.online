---
title: Indizieren von Bereichen
---

{% include menu.html %}

Ein `Range` ist ein positionsbezogener Datentyp. Wie bei einem Array können Sie jedes seiner Elemente bekommen.

Ein Bereich erzeugt eine Folge von Elementen. So geben Sie zum Beispiel das vierte Element aus:

```raku
my $r = 10..20;
say $r[3]; # 13
```

Beachten Sie einen wichtigen Unterschied zu Arrays. Ein Bereich hält nicht immer alle seine Werte im Speicher.

## Größe

Um die Größe eines Bereichs zu bekommen, verwenden Sie die Methode `elems`. Das funktioniert genauso wie bei Arrays.

```raku
my $r = 10..20;
say $r.elems; # 11
```

{% include nav.html %}
