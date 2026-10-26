---
title: 'Solution: Die letzten drei'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Die Startwerte sind die Werte am Anfang: `5, 10`. Sie geben einen Schritt von fünf. Die Sequenz geht bis zu ihrem Endpunkt, `50`.

1. `tail(3)` gibt die letzten drei Werte der Sequenz zurück: `40, 45, 50`. Die Sequenz ist endlich, sie hat also ein Ende. `head` funktioniert genauso. Diese Methode gibt die ersten paar Werte zurück.

{% include nav.html %}
