---
title: Inheritance
---

{% include menu.html %}

_Inheritance_ lets one class build on another. After the new class name, you write `is` and the name of another class. The new class then inherits all the attributes and methods of that class. That class is called its _parent_ (or _base_) class.

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

`Dog is Animal` means that a `Dog` is a kind of `Animal`. The class `Dog` has no code of its own. But it already has the `name` attribute and the `speak` method from `Animal`:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.name;  # Rex
say $rex.speak; # some sound
```

A `Dog` object also counts as an `Animal`:

```raku
say Dog.new ~~ Animal; # True
```

The smart-match `~~` against a type is true if the object has that type. It is also true if the object inherits from that type. In the next topic, a child class replaces an inherited method with its own version.

{% include nav.html %}
