---
title: Listen
---

{% include menu.html %}

Eine Liste ist auch eine geordnete Sammlung von Werten. Aber anders als ein Array ist sie _unveränderlich_. Das bedeutet, dass du ihre Elemente nicht ändern, hinzufügen oder entfernen kannst. Du schreibst eine Liste als Werte mit Kommas dazwischen, oft in runden Klammern:

```raku
my $colours = ('red', 'green', 'blue');
```

Du kannst die Elemente einer Liste wie bei einem Array über ihren Index lesen. Du kannst auch fragen, wie viele es gibt:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Du siehst den Unterschied, wenn du versuchst, ein Element zu ändern. Bei einem Array funktioniert das, weil jedes Element ein Container ist:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Bei einer Liste bekommst du einen Fehler. Die Elemente einer Liste sind nur Werte, keine Container:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Das zweite Programm bricht mit einer Meldung ab:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Verwende also ein Array, mit dem Sigil `@`, wenn du seinen Inhalt ändern musst. Verwende eine Liste, wenn du nur eine feste Folge von Werten aufbewahren willst.

{% include nav.html %}
