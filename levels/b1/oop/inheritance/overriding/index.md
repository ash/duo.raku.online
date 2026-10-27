---
title: Overriding methods
---

{% include menu.html %}

A child class can have its own version of a method that it inherits. This is called _overriding_. For an object of the child class, the method call runs the child’s version. The parent’s version does not run.

```raku
class Animal {
    has $.name;
    method speak {
        'some sound';
    }
    method intro {
        "$.name says " ~ self.speak;
    }
}

class Dog is Animal {
    method speak {
        'Woof';
    }
}

class Cat is Animal {
    method speak {
        'Meow';
    }
}
```

`Dog` and `Cat` each override `speak`. The `intro` method comes from `Animal` without changes. It calls `self.speak`, and this call uses the `speak` that belongs to the actual object:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

So the same inherited `intro` gives different results, because each object has its own `speak`. This is one of the central ideas of object-oriented programming. Shared code changes its behaviour to fit each kind of object.

{% include nav.html %}
