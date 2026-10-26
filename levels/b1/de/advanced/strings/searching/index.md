---
title: In Zeichenketten suchen
---

{% include menu.html %}

Mehrere Methoden sagen dir, was ein String enthält.

Die Methode `contains` prüft, ob ein String irgendwo in einem anderen steckt:

```raku
say 'Raku'.contains('ak'); # True
say 'Raku'.contains('xy'); # False
```

Die Methoden `starts-with` und `ends-with` prüfen, wie ein String beginnt und endet:

```raku
say 'Raku'.starts-with('Ra'); # True
say 'Raku'.ends-with('ku');   # True
```

Um die genaue Position eines Teilstrings zu finden, benutze `index`. Die Methode gibt die Position des ersten Treffers zurück, gezählt ab null:

```raku
say 'Raku'.index('k'); # 2
```

Wenn `index` den Teilstring nicht findet, gibt die Methode `Nil` statt einer Zahl zurück:

```raku
say 'Raku'.index('z'); # Nil
```

{% include nav.html %}
