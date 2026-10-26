---
title: In Zeichenketten suchen
---

{% include menu.html %}

Manche Methoden sagen dir, was in einem String ist.

Die Methode `contains` prüft, ob ein String in einem anderen String steckt. Er kann an jeder Stelle stehen:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Die Methode `starts-with` prüft den Anfang eines Strings. Die Methode `ends-with` prüft das Ende:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Brauchst du die genaue Position von einem Teil eines Strings? Dann benutze `index`. Die Methode gibt die Position des ersten Treffers zurück. Sie zählt ab null:

```raku
say 'Raku'.index('k'); # 2
```

Manchmal findet `index` den Teil nicht. Dann liefert die Methode `Nil`, keine Zahl:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
