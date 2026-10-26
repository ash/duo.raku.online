---
title: Methods
---

{% include menu.html %}

Attributes give an object its data. With _methods_, an object can also do things. A method is a subroutine in a class. You call a method on an object. To create a method, write the keyword `method`:

```raku
class Dog {
    has $.name;

    method bark {
        return $.name ~ ' says Woof!';
    }
}
```

To call a method on an object, use a dot. It is the same as with an accessor:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.bark; # Rex says Woof!
```

Inside a method, `self` is the object. It is the object that you called the method on. You get the attributes through their accessors. You write them as `$.name`, `$.age`, and so on. You can also use them inside a string with double quotes:

```raku
class Dog {
    has $.name;

    method greet {
        "Hello, my name is $.name";
    }
}

say Dog.new(name => 'Rex').greet; # Hello, my name is Rex
```

The next topics cover three things. The first is private attributes. You need methods for them, and now you have methods. The second is methods with parameters. The third is methods that call other methods.

{% include nav.html %}
