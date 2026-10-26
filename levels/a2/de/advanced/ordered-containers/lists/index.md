---
title: Listen
---

{% include menu.html %}

Eine Liste ist auch eine geordnete Sammlung von Werten. Aber sie ist nicht wie ein Array. Eine Liste ist _unveränderlich_. Du kannst ihre Elemente nicht ändern. Du kannst auch keine Elemente hinzufügen oder entfernen. Für eine Liste schreibst du Kommas zwischen die Werte. Oft stehen runde Klammern um sie herum:

```raku
my $colours = ('red', 'green', 'blue');
```

Du kannst die Elemente einer Liste über ihren Index lesen. Du kannst auch fragen, wie viele Elemente es gibt. Das ist genauso wie bei einem Array:

```raku
my $colours = ('red', 'green', 'blue');
say $colours[0];    # red
say $colours.elems; # 3
```

Versuche jetzt, ein Element zu ändern. Hier siehst du den Unterschied. Bei einem Array funktioniert das. Jedes Element eines Arrays ist ein Container:

```raku
my @array = 1, 2, 3;
@array[0] = 10;
say @array; # [10 2 3]
```

Bei einer Liste bekommst du einen Fehler. Die Elemente einer Liste sind nur Werte. Sie sind keine Container:

```raku
my $list = (1, 2, 3);
$list[0] = 10;
```

Das zweite Programm bricht ab. Es gibt diese Meldung aus:

```
Cannot modify an immutable List ((1 2 3))
  in block <unit> at t.raku line 2
```

Musst du also die Daten ändern? Dann verwende ein Array, mit dem Sigil `@`. Willst du nur einige Werte in einer festen Reihenfolge aufbewahren? Dann verwende eine Liste.

{% include nav.html %}
