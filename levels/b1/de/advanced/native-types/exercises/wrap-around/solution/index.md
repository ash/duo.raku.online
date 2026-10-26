---
title: 'Solution: Überlauf'
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Ein `uint8` geht von `0` bis `255`, er hat also 256 verschiedene Werte. In der Praxis wird damit modulo 256 gerechnet.

1. `250 + 10` wäre `260`, und das passt nicht hinein. Deshalb läuft der Wert um und landet `260 - 256 = 4` über dem unteren Ende. Das heißt, bei einem Überlauf geht es nicht nur um einen Schritt über das obere Ende. Jedes Ergebnis außerhalb des Bereichs wird in den Bereich zurückgeholt.

1. Auch die andere Richtung führt zu einem Überlauf. In einem vorzeichenlosen Typ kann das Dekrementieren von `0` nicht `-1` ergeben. Deshalb springt der Wert zum Maximum, `255`.

{% include nav.html %}
