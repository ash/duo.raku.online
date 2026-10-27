---
title: The solution of ’An inherited attribute‘
---

{% include menu.html %}

Here is one possible solution.

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

1. `Bike` and `Car` both inherit the `wheels` attribute, and its accessor, from `Vehicle`. Neither of them declares the attribute again from the start. They only give the inherited attribute a default value: `2` for `Bike` and `4` for `Car`.

1. The default is built into each class. So you can create the objects with a simple `Bike.new` and `Car.new`. The inherited accessor then returns the right number of wheels.

1. You can still pass the value yourself, for example `Car.new(wheels => 3)`. Such an argument overrides the default. But a bike or a car most likely has its usual number of wheels already. So the defaults keep the common case simple. But there is still room for a rare exception.

{% include nav.html %}
