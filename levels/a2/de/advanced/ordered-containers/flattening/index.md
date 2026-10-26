---
title: Flattening und Itemisierung
---

{% include menu.html %}

Du kannst ein Array in ein anderes stecken. Raku verbindet ihre Elemente _nicht_ von selbst. Sieh dir dieses Programm an:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;
my @c = @a, @b;

say @c.elems; # 2
say @c;       # [[1 2 3] [4 5]]
```

Das Array `@c` hat nur zwei Elemente: die Arrays `@a` und `@b`. Raku behält jeden Container als ein Element. Seine Elemente kommen nicht in das äußere Array. Mit einem Array zwischen anderen Werten ist es genauso:

```raku
my @a = 1, 2, 3;
my @d = 0, @a, 99;
say @d; # [0 [1 2 3] 99]
```

Willst du eine flache Sequenz? Dann frage mit der Routine `flat` danach:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat(@a, @b);       # (1 2 3 4 5)
say flat(@a, @b).elems; # 5
```

## Itemisierung

Manchmal willst du das Gegenteil. Du willst einen Container in einem Stück behalten, auch innerhalb von `flat`. Das Konstrukt `$(...)` _itemisiert_ sein Argument. Das heißt, es markiert das Ergebnis als ein einzelnes Element. Vergleiche das letzte Beispiel mit diesem:

```raku
my @a = 1, 2, 3;
my @b = 4, 5;

say flat($(@a), @b); # ([1 2 3] 4 5)
```

Hier behält `$(@a)` `@a` als ein Element. Aber `@b` wird trotzdem flach. Es liefert seine zwei Werte. Das ist wieder die Idee des Sigils `$`. Ein `$` bedeutet "behandle dies als eine einzelne Sache".

{% include nav.html %}
