---
title: 'Solvo: Heredita atributo'
translations_gpt:
---

{% include menu.html %}

Jen unu ebla solvo.

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

1. `Bike` kaj `Car` ambaŭ heredas la atributon `wheels`, kaj ĝian atingilon, el `Vehicle`. Neniu el ili deklaras la atributon denove de la komenco. Ili nur donas al la heredita atributo defaŭltan valoron: `2` por `Bike` kaj `4` por `Car`.

1. La defaŭlto estas enkonstruita en ĉiun klason. Do vi povas krei la objektojn per simpla `Bike.new` kaj `Car.new`. La heredita atingilo tiam redonas la ĝustan nombron de radoj.

1. Vi ankoraŭ povas mem transdoni la valoron, ekzemple `Car.new(wheels => 3)`. Tia argumento superregas la defaŭlton. Sed biciklo aŭ aŭto plej verŝajne jam havas sian kutiman nombron de radoj. Do la defaŭltoj tenas la oftan kazon simpla. Sed ankoraŭ restas loko por malofta escepto.

{% include nav.html %}
