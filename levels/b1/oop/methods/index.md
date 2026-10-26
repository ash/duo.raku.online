---
title: Methods
---

{% include menu.html %}

Attributes give an object its data, and _methods_ give it behaviour. A method is a subroutine that belongs to a class. You call it on an object. You declare a method with the `method` keyword:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

To call a method on an object, use a dot, as with an accessor:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Inside a method, `self` is the object that the method was called on. You reach the attributes through their accessors. You write them as `$.name`, `$.age` and so on. They also work inside double-quoted strings, where Raku inserts their values:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

The next topics cover private attributes, because now we have methods to use them. Then they cover methods that take parameters, and methods that call other methods.

{% include nav.html %}
