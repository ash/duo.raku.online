---
title: Attributes
---

{% include menu.html %}

An empty class is not very useful. To let an object keep its own data, give the class _attributes_. You declare an attribute inside the class with the `has` keyword:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Every object of the class has its own copy of these attributes. You set their values when you create the object. To do this, pass them to `new` as named arguments:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

The `$.` in `has $.name` does two things at once. It declares an attribute, and it creates a method with the same name. This method is called an _accessor_, and it returns the value of the attribute:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Different objects keep their own values, which do not depend on each other:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

The next topics show how to make attributes changeable. They also show how to give attributes default values. There is also a way to declare _private_ attributes, which are hidden from the outside. We will come back to them after we introduce methods.

{% include nav.html %}
