---
title: Inheritance
---

{% include menu.html %}

_Inheritance_ lets one class build on another class. To do this, write `is` after the name of the new class. Then write the name of the other class. The new class inherits from the other class. It gets all its attributes and methods. The other class is the _parent_ class, or the _base_ class.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
}

class Dog is Animal {
}
```

`Dog is Animal` means that a `Dog` is a kind of `Animal`. We write nothing new in `Dog`. But `Dog` already has the attribute `name` from `Animal`. It also has the method `speak` from `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

A `Dog` object is also an `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

You can smart-match an object against a type with `~~`. The result is true when the object has this type. It is also true when the object inherits from this type. The next topic is about a child class. A child class inherits from a parent class. It can replace a method from its parent with its own version.

{% include nav.html %}
