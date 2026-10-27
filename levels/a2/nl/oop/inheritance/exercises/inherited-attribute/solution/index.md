---
title: 'Oplossing: Een geërfd attribuut'
translations_gpt:
---

{% include menu.html %}

Hier is een manier om de taak op te lossen.

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

🦋 Je kunt de broncode vinden in het bestand [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Uitvoer

```
2
4
```

## Opmerkingen

1. `Bike` en `Car` erven allebei het attribuut `wheels` van `Vehicle`. Ze erven ook zijn accessor. Ze maken geen nieuw attribuut. Ze geven het geërfde attribuut alleen een standaardwaarde. Voor `Bike` is dat `2`. Voor `Car` is dat `4`.

1. Elke klasse heeft haar standaardwaarde in zich. Dus kun je de objecten maken met alleen `Bike.new` en `Car.new`. De geërfde accessor geeft dan het juiste aantal wielen terug.

1. Je kunt nog steeds zelf een waarde meegeven, bijvoorbeeld `Car.new(wheels => 3)`. Dan vervangt deze waarde de standaardwaarde. Maar fietsen en auto's hebben meestal hun normale aantal wielen. Dus maken de standaardwaarden het gewone geval eenvoudig. En soms kun je toch een uitzondering maken.

{% include nav.html %}
