---
title: 'Lösung: Kilometer in Meilen'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

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

1. Die Umrechnung hängt von keinem bestimmten Objekt ab. Deshalb ist sie eine Klassenmethode, und das Programm ruft sie direkt auf `Converter` auf.

1. Eine Klassenmethode kann trotzdem Parameter nehmen. Hier bekommt sie die Anzahl der Kilometer und gibt die Meilen zurück.

{% include nav.html %}
