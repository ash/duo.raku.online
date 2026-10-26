---
title: 'Solution: In einem Bag zählen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. `'the cat sat on the mat'.words` liefert die sechs Wörter, und `bag` zählt jedes davon. Der Subscript `<the>` gibt zurück, wie oft `the` vorkam, nämlich zweimal.

1. Die Methode `total` addiert alle Zähler. Das ist gleich der Anzahl der Wörter, die in den Bag gelegt wurden, also `6`.

{% include nav.html %}
