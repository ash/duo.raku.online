---
title: 'Solution: Überlauf'
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
my uint8 $u = 250;
$u += 10;
say $u;

my uint8 $v = 0;
$v--;
say $v;
```

🦋 Du findest den Quellcode in der Datei [wrap-around.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/native-types/wrap-around.raku).

## Ausgabe

```
4
255
```

## Kommentare

1. Ein `uint8` geht von `0` bis `255`. Das sind 256 verschiedene Werte. Tatsächlich ist jede Rechnung damit modulo 256. Das Ergebnis ist der Rest nach der Division durch 256.

1. Normalerweise ist `250 + 10` gleich `260`. Aber `260` passt nicht hinein. Deshalb läuft der Wert um. Er beginnt wieder unten und landet bei `260 - 256 = 4`. Ein Überlauf ist nicht nur ein Schritt über das obere Ende. Jedes Ergebnis außerhalb des Bereichs kommt in den Bereich zurück.

1. Auch in die andere Richtung gibt es einen Überlauf. In einem vorzeichenlosen Typ kann ein Dekrement von `0` nicht `-1` ergeben. Deshalb springt der Wert auf den größten Wert, `255`.

{% include nav.html %}
