---
title: 'Oplossing: Een geërfd attribuut'
translations_gpt:
---

{% include menu.html %}

Hier is een mogelijke oplossing.

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

1. `Bike` en `Car` erven allebei het attribuut `wheels`, en zijn accessor, van `Vehicle`. Geen van beide declareert het attribuut opnieuw vanaf het begin. Ze geven het geërfde attribuut alleen een standaardwaarde: `2` voor `Bike` en `4` voor `Car`.

1. De standaardwaarde zit in elke klasse ingebouwd. Dus kun je de objecten maken met een simpele `Bike.new` en `Car.new`. De geërfde accessor geeft dan het juiste aantal wielen terug.

1. Je kunt de waarde nog steeds zelf meegeven, bijvoorbeeld `Car.new(wheels => 3)`. Zo'n argument overschrijft de standaardwaarde. Maar een fiets of een auto heeft zeer waarschijnlijk al zijn gewone aantal wielen. Dus houden de standaardwaarden het gewone geval eenvoudig. Maar er blijft ruimte voor een zeldzame uitzondering.

{% include nav.html %}
