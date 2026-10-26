---
title: 'Lösung: Fläche eines Rechtecks'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Rectangle {
    has $.width;
    has $.height;

    method area {
        $.width * $.height;
    }

    method describe {
        "area is " ~ self.area;
    }
}

say Rectangle.new(width => 3, height => 4).describe;
```

🦋 Du findest den Quellcode in der Datei [rectangle-area.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/rectangle-area.raku).

## Ausgabe

```
area is 12
```

## Kommentare

1. Die Methode `area` liest die eigene `width` und `height` des Objekts über ihre Accessoren. Dann multipliziert sie die beiden Werte. Für ein Rechteck von `3` mal `4` ist das Ergebnis `12`.

1. Die Methode `describe` wiederholt die Rechnung nicht. Stattdessen ruft sie `self.area` auf, um die Methode `area` auf demselben Objekt auszuführen. Dann verwendet sie das Ergebnis wieder. Auf diese Weise bauen Sie größeres Verhalten aus kleineren Methoden. Jede Methode hat dann nur eine Aufgabe.

{% include nav.html %}
