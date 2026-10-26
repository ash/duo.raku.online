---
title: Flattening und Itemisierung
---

{% include menu.html %}

Wenn du ein Array in ein anderes steckst, fügt Raku ihre Elemente _nicht_ von selbst zusammen. Sieh dir dieses Programm an:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

Das Array `@c` hat nur zwei Elemente, die Arrays `@a` und `@b`. Raku behält jeden Container als ein Element. Es packt seinen Inhalt nicht in das äußere Array aus. Dasselbe passiert, wenn du ein Array zwischen andere Werte setzt:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Wenn du wirklich eine flache Sequenz willst, frage mit der Routine `flat` direkt danach:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemisierung

Manchmal willst du das Gegenteil. Du willst einen Container davor schützen, abgeflacht zu werden, auch innerhalb von `flat`. Das Konstrukt `$(...)` _itemisiert_ sein Argument. Das bedeutet, es markiert das Ergebnis als einzelnes Element. Vergleiche das vorherige Beispiel mit diesem:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Hier behält `$(@a)` `@a` als ein Element. Aber `@b` wird weiterhin in seine zwei Werte abgeflacht. Das ist wieder die Idee des Sigils `$`. Ein `$` bedeutet "behandle dies als eine einzelne Sache".

{% include nav.html %}
