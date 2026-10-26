---
title: 'Solution: Die letzten drei'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
say (5, 10 ... 50).tail(3);
```

🦋 Du findest den Quellcode in der Datei [last-three.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/sequences/last-three.raku).

## Ausgabe

```
(40 45 50)
```

## Kommentare

1. Die Startwerte `5, 10` legen einen arithmetischen Schritt von fünf fest. Die Sequenz geht bis zu ihrem Endpunkt `50`.

1. `tail(3)` gibt die letzten drei Werte der endlichen Sequenz zurück: `40, 45, 50`. Genauso würde `head` die ersten paar zurückgeben.

{% include nav.html %}
