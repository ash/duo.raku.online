---
title: Type conversion for typed variables
---

{% include menu.html %}

Type constraints are quite strict. For example, you cannot assign a `Num` value to a variable declared as `Int`. This is true even if the value is a whole number:

```raku
my Int $x = 42;
# $x = 42e1; # Error
```

Use [one of the methods](/essentials/coercion/#topics-in-this-section) to convert the value to the right type.

```raku
my Int $x = 42;
$x = 42e1.Int;
$x = Int(42e1);
```

{% include nav.html %}
