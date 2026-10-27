---
title: 'Lösung: Ein geerbtes Attribut'
translations_gpt:
---

{% include menu.html %}

Hier ist eine mögliche Lösung.

## Code

```raku
class Vehicle {
    has $.wheels;
}

class Bike is Vehicle {
    has $.wheels = 2;
}

class Car is Vehicle {
    has $.wheels = 4;
}

say Bike.new.wheels;
say Car.new.wheels;
```

🦋 Du findest den Quellcode in der Datei [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Ausgabe

```
2
4
```

## Kommentare

1. `Bike` und `Car` erben beide das Attribut `wheels` und seinen Accessor von `Vehicle`. Keine von beiden deklariert das Attribut noch einmal ganz neu. Sie geben dem geerbten Attribut nur einen Standardwert: `2` für `Bike` und `4` für `Car`.

1. Der Standardwert ist in jede Klasse eingebaut. Deshalb können Sie die Objekte mit einem einfachen `Bike.new` und `Car.new` erzeugen. Der geerbte Accessor gibt dann die richtige Anzahl Räder zurück.

1. Sie können den Wert trotzdem selbst übergeben, zum Beispiel `Car.new(wheels => 3)`. So ein Argument überschreibt den Standardwert. Aber ein Fahrrad oder ein Auto hat sehr wahrscheinlich schon seine übliche Anzahl Räder. Also halten die Standardwerte den häufigen Fall einfach. Aber es bleibt noch Platz für eine seltene Ausnahme.

{% include nav.html %}
