---
title: The solution of ’An inherited attribute‘
---

{% include menu.html %}

Here is one way to solve the task.

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

🦋 You can find the source code in the file [inherited-attribute.raku](https://github.com/ash/raku-course/blob/master/exercises/oop/inheritance/inherited-attribute.raku).

## Output

```
2
4
```

## Comments

1. `Bike` and `Car` both inherit the attribute `wheels` from `Vehicle`. They also inherit its accessor. They do not make a new attribute. They only give the inherited attribute a default value. For `Bike`, it is `2`. For `Car`, it is `4`.

1. Each class has its default value inside it. So you can create the objects with just `Bike.new` and `Car.new`. The inherited accessor then returns the right number of wheels.

1. You can still pass a value yourself, for example, `Car.new(wheels => 3)`. Then this value replaces the default. But bikes and cars usually have their normal number of wheels. So the defaults make the usual case simple. And you can still make an exception sometimes.

{% include nav.html %}
