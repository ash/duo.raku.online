---
title: Read-write attributes
---

{% include menu.html %}

By default, the accessor from `has $.name` is _read-only_. The constructor gives the attribute its value. The constructor is the method that makes the object, here `new`. After that, code outside the object can read the value. But it cannot change it. Try to assign a new value to it. This gives an error:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

The program stops with this error:

```
Cannot modify an immutable Str (Rex)
```

Do you want to change the value through the accessor? Then mark the attribute with the trait `is rw`:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Now the accessor returns a container that you can write to. So the assignment works. The `name` of the object is now `Max`.

{% include nav.html %}
