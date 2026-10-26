---
title: 'Solution: Ein offener Bereich'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say (2, 4 ... *).head(4);
```

🦋 Den Quellcode findest du in der Datei [open-range.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/whatever/open-range.raku).

## Ausgabe

```
(2 4 6 8)
```

## Kommentare

1. Die ersten Werte, `2, 4`, legen den Schritt fest. Jede Zahl ist um zwei größer als die davor. Der Stern allein am Ende bedeutet, dass die Sequenz nie endet.

1. `head(4)` nimmt nur die ersten vier Werte: `2, 4, 6, 8`. Die Sequenz ist lazy. Also berechnet Raku den endlosen Rest nie. Hier bedeutet der Stern allein „egal, ohne obere Grenze“.

{% include nav.html %}
