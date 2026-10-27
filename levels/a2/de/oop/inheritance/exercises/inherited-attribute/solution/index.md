---
title: 'Lösung: Ein geerbtes Attribut'
translations_gpt:
---

{% include menu.html %}

Hier ist ein Weg, die Aufgabe zu lösen.

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

1. `Bike` und `Car` erben beide das Attribut `wheels` von `Vehicle`. Sie erben auch seinen Accessor. Sie erstellen kein neues Attribut. Sie geben dem geerbten Attribut nur einen Standardwert. Für `Bike` ist er `2`. Für `Car` ist er `4`.

1. Jede Klasse hat ihren Standardwert in sich. Also können Sie die Objekte einfach mit `Bike.new` und `Car.new` erstellen. Der geerbte Accessor gibt dann die richtige Anzahl Räder zurück.

1. Sie können trotzdem selbst einen Wert übergeben, zum Beispiel `Car.new(wheels => 3)`. Dann ersetzt dieser Wert den Standardwert. Aber Fahrräder und Autos haben meistens ihre normale Anzahl Räder. Also machen die Standardwerte den normalen Fall einfach. Und manchmal können Sie trotzdem eine Ausnahme machen.

{% include nav.html %}
