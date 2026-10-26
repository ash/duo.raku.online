---
title: 'Lösung: Fläche eines Rechtecks'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. Die Methode `area` liest `width` und `height` des Objekts. Dafür benutzt sie ihre Accessoren. Dann multipliziert sie die beiden Werte. Für ein Rechteck von `3` mal `4` ist das Ergebnis `12`.

1. Die Methode `describe` macht diese Rechnung nicht noch einmal. Sie ruft `self.area` auf. Das führt die Methode `area` auf demselben Objekt aus. Dann benutzt `describe` ihr Ergebnis. So bauen Sie größeres Verhalten aus kleinen Methoden. Jede Methode hat nur eine Aufgabe.

{% include nav.html %}
