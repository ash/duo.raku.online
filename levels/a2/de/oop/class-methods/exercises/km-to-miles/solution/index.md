---
title: 'Lösung: Kilometer in Meilen'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

## Code

```raku
class Converter {
    method km-to-miles($km) {
        $km * 0.621;
    }
}

say Converter.km-to-miles(10);
```

🦋 Du findest den Quellcode in der Datei [km-to-miles.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/class-methods/km-to-miles.raku).

## Ausgabe

```
6.21
```

## Kommentare

1. Die Umrechnung braucht kein Objekt. Also ist sie eine Klassenmethode. Das Programm ruft sie direkt auf `Converter` auf.

1. Eine Klassenmethode kann trotzdem Parameter haben. Hier bekommt sie die Anzahl der Kilometer. Sie gibt die Meilen zurück.

{% include nav.html %}
