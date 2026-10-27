---
title: 'Solutio: Attributum hereditatum'
translations_gpt:
---

{% include menu.html %}

Hoc modo exercitationem solvere potes.

## Codex

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

🦋 Inveni codicem fontem in archivo [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Exitus

```
2
4
```

## Commentarii

1. `Bike` et `Car` ambae attributum `wheels` ex `Vehicle` heredant. Etiam accessorem eius heredant. Novum attributum non faciunt. Solum attributo hereditato valorem praedefinitum dant. Pro `Bike` est `2`. Pro `Car` est `4`.

1. Quaeque classis valorem praedefinitum in se habet. Itaque obiecta solum per `Bike.new` et `Car.new` creare potes. Accessor hereditatus tum rectum numerum rotarum reddit.

1. Tamen ipse valorem tradere potes, exempli gratia `Car.new(wheels => 3)`. Tum hic valor valorem praedefinitum superat. Sed birotae et autocineta plerumque solitum numerum rotarum habent. Itaque valores praedefiniti casum solitum simplicem faciunt. Et tamen interdum exceptionem facere potes.

{% include nav.html %}
