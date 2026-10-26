---
title: Default values
---

{% include menu.html %}

You can give an attribute a _default value_. It is used when you create an object without a value for that attribute. Write the default after the attribute, with `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Note that you can give attributes a type, just as you do with variables.

When you do not pass `weight` to `new`, the attribute gets its default value:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

You can still replace the default if you pass a value:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

An attribute with no default and no value from `new` is simply undefined. It is exactly like a new scalar variable.

{% include nav.html %}
