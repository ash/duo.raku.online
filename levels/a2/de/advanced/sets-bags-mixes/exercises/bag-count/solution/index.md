---
title: 'Solution: In einem Bag zählen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my $words = bag('the cat sat on the mat'.words);

say $words<the>;
say $words.total;
```

🦋 Du findest den Quellcode in der Datei [bag-count.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sets-bags-mixes/bag-count.raku).

## Ausgabe

```
2
6
```

## Kommentare

1. `'the cat sat on the mat'.words` gibt die sechs Wörter. `bag` zählt jedes Wort. Der Subscript `<the>` gibt zurück, wie oft der Bag `the` gesehen hat. Die Antwort ist zwei.

1. Die Methode `total` addiert alle Zähler. Diese Summe ist die Anzahl der Wörter im Bag: `6`.

{% include nav.html %}
