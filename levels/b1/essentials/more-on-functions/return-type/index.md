---
title: Return type of functions
---

{% include menu.html %}

You can also give an explicit type to the result of a function. There are a few ways to write this in code.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Choose the one that you like best. Note the fourth example. There, the return type is inside the parentheses, together with the function parameters.

{% include nav.html %}
