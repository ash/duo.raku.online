---
title: Overriding methods
---

{% include menu.html %}

A child class inherits methods from its parent class. But it can also have its own version of such a method. This is called _overriding_. You call the method on an object of the child class. Then the version of the child runs. The version of the parent does not run.

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

`Dog` and `Cat` both override `speak`. They inherit the method `intro` from `Animal` and do not change it. This method calls `self.speak`. This call uses the object’s own `speak`:

```raku
say Dog.new(name => 'Rex').intro; # Rex says Woof
say Cat.new(name => 'Tom').intro; # Tom says Meow
```

So the same inherited `intro` gives different results. This is because each object has its own `speak`. This is one of the main ideas of object-oriented programming. The code is shared. But it works in a different way for each kind of object.

{% include nav.html %}
