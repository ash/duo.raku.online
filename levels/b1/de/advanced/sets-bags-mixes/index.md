---
title: Sets, Bags und Mixes
---

{% include menu.html %}

Neben Arrays und Hashes hat Raku ein paar besondere Container für Sammlungen von Werten. Der einfachste ist das `Set`. Es ist eine Sammlung von _verschiedenen_ Werten ohne bestimmte Reihenfolge. Jeder Wert ist entweder im Set oder nicht, und wiederholte Werte werden ignoriert.

Du erstellst ein Set mit der `set`-Routine. Wenn ein Wert mehrmals vorkommt, behält das Set nur eine Kopie:

```raku
my $s = set(1, 2, 3, 2, 1);
say $s.elems; # 3
```

Wir haben fünf Zahlen übergeben, aber das Set hat nur drei Elemente. Das liegt daran, dass `1` und `2` mehr als einmal vorkamen.

Die wichtigste Frage an ein Set ist, ob ein Wert darin ist. Der Operator `∈`, den du als "ist Element von" liest, gibt einen Booleschen Wert zurück:

```raku
say 2 ∈ set(1, 2, 3); # True
say 9 ∈ set(1, 2, 3); # False
```

Wenn du bei reinem ASCII bleiben willst, schreib denselben Operator als `(elem)`:

```raku
say 2 (elem) set(1, 2, 3); # True
```

Als Nächstes siehst du, wie man Sets kombiniert. Du lernst auch Bags und Mixes kennen, die enge Verwandte von Sets sind.

{% include nav.html %}
