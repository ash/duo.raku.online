---
title: 'Solvo: Heredita atributo'
translations_gpt:
---

{% include menu.html %}

Jen unu maniero solvi la taskon.

## Kodo

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

🦋 Vi povas trovi la fontkodon en la dosiero [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Eligo

```
2
4
```

## Komentoj

1. `Bike` kaj `Car` ambaŭ heredas la atributon `wheels` el `Vehicle`. Ili ankaŭ heredas ĝian atingilon. Ili ne faras novan atributon. Ili nur donas al la heredita atributo defaŭltan valoron. Por `Bike`, ĝi estas `2`. Por `Car`, ĝi estas `4`.

1. Ĉiu klaso havas sian defaŭltan valoron en si. Do vi povas krei la objektojn per nur `Bike.new` kaj `Car.new`. La heredita atingilo tiam redonas la ĝustan nombron de radoj.

1. Vi ankoraŭ povas mem transdoni valoron, ekzemple `Car.new(wheels => 3)`. Tiam ĉi tiu valoro anstataŭas la defaŭlton. Sed bicikloj kaj aŭtoj kutime havas sian normalan nombron de radoj. Do la defaŭltoj faras la kutiman kazon simpla. Kaj vi ankoraŭ povas fari escepton foje.

{% include nav.html %}
