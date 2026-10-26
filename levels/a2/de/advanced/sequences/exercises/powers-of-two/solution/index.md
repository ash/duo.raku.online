---
title: 'Solution: Zweierpotenzen'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
say (1, 2, 4 ... Inf).head(8);
```

🦋 Du findest den Quellcode in der Datei [powers-of-two.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/powers-of-two.raku).

## Ausgabe

```
(1 2 4 8 16 32 64 128)
```

## Kommentare

1. Die drei Werte am Anfang sind `1, 2, 4`. Sie wachsen durch Multiplikation. Also erkennt `...` eine geometrische Sequenz. Der Endpunkt ist `Inf`. Also hört die Sequenz nie von selbst auf.

1. `head(8)` nimmt nur die ersten acht Werte. Die Sequenz ist lazy. Also macht Raku die anderen Werte nie. Nur deshalb kannst du eine unendliche Sequenz sicher schreiben.

{% include nav.html %}
