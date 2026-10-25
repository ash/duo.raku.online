---
title: Return type of functions
---

{% include menu.html %}

You can also set a type for the result of a function. There are a few ways to write this in code.

```raku
sub add(Int $x, Int $y) returns Int { $x + $y }

my Int sub add(Int $x, Int $y) { $x + $y }

sub add(Int $x, Int $y) of Int { $x + $y }

sub add(Int $x, Int $y --> Int) { $x + $y }
```

Choose the one that you like most. Look at the fourth example. There, the type of the result is inside the parentheses. The parameters of the function are there too.

{% include nav.html %}
