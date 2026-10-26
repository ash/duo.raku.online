---
title: Sequenzmuster
---

{% include menu.html %}

Der Operator `...` kennt mehr Muster als nur arithmetische Schritte.

Nimm an, du gibst ihm drei Werte, die durch Multiplikation wachsen. Dann macht er mit einer _geometrischen_ Sequenz weiter:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Hier ist jeder Wert doppelt so groß wie der vorherige. Also verdoppelt sich die Sequenz immer weiter, bis sie `64` erreicht.

Sequenzen können mehr als Zahlen enthalten. Bei Strings folgt Raku der normalen Reihenfolge des Alphabets:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Eine Sequenz kann auch abwärts zählen. Wenn der Endpunkt niedriger als der Start ist, werden die Werte kleiner:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

In jedem Fall zeigst du das Muster an einem Beispiel. Der Operator `...` ergänzt dann den Rest.

{% include nav.html %}
