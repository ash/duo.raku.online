---
title: 'Lösung: Eine Formel auf der Klasse'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Geometry {
    method circle-area($r) {
        (π * $r * $r).round
    }
}

say Geometry.circle-area(10);
```

🦋 Du findest den Quellcode in der Datei [speed-limit.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/speed-limit.raku).

## Ausgabe

```
314
```

## Kommentare

1. Die Methode benutzt kein Attribut, nur ihren Parameter `$r`. Deshalb können Sie sie auf der Klasse selbst aufrufen, ohne zuerst ein Objekt zu erzeugen.

1. `Geometry.circle-area(10)` ruft die Methode auf dem Typobjekt auf und übergibt ihr `10`. Das Ergebnis ist `π * 10 * 10`, nach dem Runden also `314`.

{% include nav.html %}
