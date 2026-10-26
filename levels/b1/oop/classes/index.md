---
title: Classes
---

{% include menu.html %}

So far, all the data types you have used were built into Raku. These were numbers, strings, arrays and so on. With _object-oriented programming_, you can define your own types, which are called _classes_. You can also create values of these types, which are called _objects_.

To define a class, write the `class` keyword, then a name and a block:

```raku
class Dog {
}
```

This `Dog` class is still empty, but it is already a new type. An object of a class is also called an _instance_. To create one, call the `new` method on the class name:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Now `$rex` contains a `Dog` object. Each time you call `new`, you get a new, separate object:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` and `$fido` are two different dogs, even though the class is still empty. In the next sections, you will give a class its own data, called _attributes_. You will also give it its own behaviour, called _methods_. The first topic looks more closely at how a class differs from its instances.

{% include nav.html %}
