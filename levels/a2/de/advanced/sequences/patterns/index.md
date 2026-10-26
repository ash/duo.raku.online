---
title: Sequenzmuster
---

{% include menu.html %}

Der Operator `...` kann mehr als arithmetische Schritte finden.

Gib ihm drei Werte, die durch Multiplikation wachsen. Dann macht er mit einer _geometrischen_ Sequenz weiter:

```raku
say 1, 2, 4 ... 64; # (1 2 4 8 16 32 64)
```

Hier ist jeder Wert zweimal so groß wie der Wert davor. Also verdoppelt sich die Sequenz jedes Mal. Sie stoppt, wenn sie `64` erreicht.

Sequenzen können auch andere Werte haben, nicht nur Zahlen. Bei Strings benutzt Raku die Reihenfolge des Alphabets:

```raku
say 'a' ... 'e'; # (a b c d e)
```

Eine Sequenz kann auch nach unten zählen. Wenn der Endpunkt kleiner als der Start ist, werden die Werte kleiner:

```raku
say 10 ... 1; # (10 9 8 7 6 5 4 3 2 1)
```

Jedes Mal zeigst du das Muster mit einem Beispiel. Dann fügt der Operator `...` die anderen Werte hinzu.

{% include nav.html %}
