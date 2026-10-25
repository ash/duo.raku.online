---
title: Type conversion for typed variables
---

{% include menu.html %}

Type constraints are rules for the types of variables. These rules are quite strict. For example, take a variable with the type `Int`. You cannot assign a `Num` value to it. This is true even if the value is a whole number:

```raku
my Int $x = 42;
# $x = 42e1; # Error
```

To convert the value, use [one of the methods](/essentials/coercion/#topics-in-this-section).

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
