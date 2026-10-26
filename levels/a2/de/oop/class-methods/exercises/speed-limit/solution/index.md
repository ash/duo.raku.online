---
title: 'Lösung: Eine Formel auf der Klasse'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Die Methode benutzt kein Attribut. Sie arbeitet nur mit ihrem Parameter `$r`. Also können Sie sie auf der Klasse selbst aufrufen. Sie müssen nicht zuerst ein Objekt erstellen.

1. `Geometry.circle-area(10)` ruft die Methode auf dem Typobjekt auf. Der Aufruf übergibt `10` an die Methode. Das Ergebnis ist `π * 10 * 10`. Nach dem Runden ist es `314`.

{% include nav.html %}
