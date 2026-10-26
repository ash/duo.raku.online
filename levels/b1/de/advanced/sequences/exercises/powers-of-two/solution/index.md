---
title: 'Solution: Zweierpotenzen'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die drei Startwerte `1, 2, 4` wachsen durch Multiplikation. Also erkennt `...`, dass das eine geometrische Sequenz ist. Weil der Endpunkt `Inf` ist, hört sie nie von selbst auf.

1. `head(8)` nimmt nur die ersten acht Werte. Weil die Sequenz lazy ist, werden die anderen Werte nie erzeugt. Nur deshalb ist es sicher, eine unendliche Sequenz zu schreiben.

{% include nav.html %}
