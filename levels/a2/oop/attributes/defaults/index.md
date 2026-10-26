---
title: Default values
---

{% include menu.html %}

An attribute can have a _default value_. Sometimes you make an object without a value for the attribute. Then Raku uses the default value. Write the default after the attribute, with `=`:

```raku
class Dog {
    has Str $.name;
    has Rat $.weight = 4.0;
}
```

Note one more thing. You can give an attribute a type, like a variable. The value must then have this type.

Here, `new` gets no `weight`. So the attribute gets the default:

```raku
my $rex = Dog.new(name => 'Rex');
say $rex.weight; # 4
```

But you can still give your own value. It replaces the default:

```raku
my $lighty = Dog.new(name => 'Lighty', weight => 3.2);
say $lighty.weight; # 3.2
```

Sometimes an attribute has no default. You also do not pass a value for it to `new`. Then the attribute is simply undefined. It is like a new scalar variable.

{% include nav.html %}
