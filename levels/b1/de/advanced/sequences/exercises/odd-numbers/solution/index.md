---
title: 'Solution: Ungerade Zahlen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
say 1, 3 ... 19;
```

🦋 Du findest den Quellcode in der Datei [odd-numbers.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/odd-numbers.raku).

## Ausgabe

```
(1 3 5 7 9 11 13 15 17 19)
```

## Kommentare

1. Die zwei Startwerte `1, 3` machen den Schritt zwei. Also zählt die Sequenz in Zweierschritten hoch.

1. Wenn die Sequenz beim Endpunkt `19` ankommt, stoppt sie.

{% include nav.html %}
