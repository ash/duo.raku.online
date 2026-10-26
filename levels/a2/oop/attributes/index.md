---
title: Attributes
---

{% include menu.html %}

An empty class is not very useful. An object needs its own data. For this, you give the class _attributes_. An attribute is a piece of data inside an object. To create an attribute, write the keyword `has` inside the class:

```raku
class Dog {
    has $.name;
    has $.age;
}
```

Each object gets its own copy of these attributes. You give them values when you make the object. Pass the values to `new` as named arguments:

```raku
class Dog {
    has $.name;
    has $.age;
}

my $rex = Dog.new(name => 'Rex', age => 3);
```

Look at `$.` in `has $.name`. It does two things. First, it creates an attribute. Second, it creates a method with the same name. This method returns the value of the attribute. Such a method is called an _accessor_:

```raku
say $rex.name; # Rex
say $rex.age;  # 3
```

Different objects keep their own values. They do not share them:

```raku
my $rex  = Dog.new(name => 'Rex',  age => 3);
my $fido = Dog.new(name => 'Fido', age => 5);

say $rex.name;  # Rex
say $fido.name; # Fido
```

The next topics show two things. First, you make attributes that you can change. Then you give attributes default values. There is also a way to make _private_ attributes. Code outside the object cannot see them. We come back to them after methods.

{% include nav.html %}
