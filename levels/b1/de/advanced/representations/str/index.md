---
title: Die `.Str`-Methode
---

{% include menu.html %}

Die Methode `.Str` gibt die **einfache Stringform** eines Wertes zurück. Raku ruft sie immer dann auf, wenn es einen Wert im *Stringkontext* verwendet. Das passiert bei `print` und `put` und beim Operator `~`, der Strings verbindet. Es passiert auch, wenn du einen Wert in einen String in doppelten Anführungszeichen einfügst.

```raku
say 42.Str;    # 42
my @a = 'alpha', 'beta', 'gamma';
say @a.Str;    # alpha beta gamma
```

Beachte, dass das Array **ohne Klammern** zurückkam. Seine Elemente sind einfach durch Leerzeichen verbunden. Das ist der sichtbare Unterschied zu [`.gist`](../gist), das die Klammern behält. Vergleiche die beiden nebeneinander:

```raku
my @data = 1, 2, 3;
say @data.gist; # [1 2 3]
say @data.Str;  # 1 2 3
```

Wenn du ein Array in einen String einfügst, verwendet Raku `.Str`. Deshalb wird das Array auf die einfache Art dargestellt:

```raku
my @data = 10, 20, 30;
say "data: @data[]"; # data: 10 20 30
```

{% include nav.html %}
