---
title: Classes
---

{% include menu.html %}

So far, you used only the types that come with Raku. These are numbers, strings, arrays and so on. With _object-oriented programming_, you can make your own types. Such a type is called a _class_. A value of this type is called an _object_.

To make a class, write the keyword `class`. After it, write a name and a block:

```raku
class Dog {
}
```

This class `Dog` is empty for now. But it is already a new type. An object of a class is also called an _instance_. `new` is a method. To make an instance, call it on the class name:

```raku
class Dog {
}

my $rex = Dog.new;
say $rex; # Dog.new
```

Now the variable `$rex` has a `Dog` object in it. Each call to `new` makes a new, separate object:

```raku
my $rex = Dog.new;
my $fido = Dog.new;
```

`$rex` and `$fido` are two different dogs. The class is still empty, but the dogs are different. In the next sections, you give a class its own data. These pieces of data are called _attributes_. A class also gets its own behaviour, or actions. These actions are called _methods_. The first topic looks closer at a class and its instances. It shows how they are different.

{% include nav.html %}
