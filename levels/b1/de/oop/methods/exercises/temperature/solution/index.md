---
title: 'Lösung: Temperaturumrechnung'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Celsius {
    has $.degrees;

    method to-fahrenheit {
        $.degrees * 9 / 5 + 32;
    }
}

say Celsius.new(degrees => 100).to-fahrenheit;
```

🦋 Du findest den Quellcode in der Datei [temperature.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/methods/temperature.raku).

## Ausgabe

```
212
```

## Kommentare

1. Die Methode benutzt das eigene Attribut `degrees` des Objekts. Sie müssen also kein Argument für die Formel übergeben.

1. Für `100` Grad Celsius ist das Ergebnis `212` Grad Fahrenheit.

{% include nav.html %}
