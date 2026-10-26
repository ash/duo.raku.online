---
title: Read-write attributes
---

{% include menu.html %}

By default, the accessor that `has $.name` creates is _read-only_. The constructor, `new`, sets the value when it creates the object. After that, code outside the object can read the value but cannot change it. Assigning to it is an error:

```raku
class Dog {
    has $.name;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
```

The program stops with this message:

```
Cannot modify an immutable Str (Rex)
```

Do you want to change the value through the accessor? Then mark the attribute with the `is rw` trait:

```raku
class Dog {
    has $.name is rw;
}

my $rex = Dog.new(name => 'Rex');
$rex.name = 'Max';
say $rex.name; # Max
```

Now the accessor returns a writable container. So the assignment works, and the object’s `name` changes to `Max`.

{% include nav.html %}
