---
title: 'Solutio: Attributum hereditatum'
translations_gpt:
---

{% include menu.html %}

Hic est una solutio possibilis.

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

1. `Bike` et `Car` ambae attributum `wheels`, et accessorem eius, ex `Vehicle` heredant. Neutra attributum ab initio iterum declarat. Solum attributo hereditato valorem praedefinitum dant: `2` pro `Bike` et `4` pro `Car`.

1. Valor praedefinitus in quaque classe positus est. Itaque obiecta simplici `Bike.new` et `Car.new` creare potes. Accessor hereditatus tum rectum numerum rotarum reddit.

1. Valorem tamen ipse tradere potes, exempli gratia `Car.new(wheels => 3)`. Tale argumentum valorem praedefinitum superat. Sed birota vel autocinetum verisimiliter iam solitum numerum rotarum habet. Itaque valores praedefiniti casum communem simplicem servant. Sed tamen spatium manet pro exceptione rara.

{% include nav.html %}
