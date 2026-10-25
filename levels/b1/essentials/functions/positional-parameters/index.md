---
title: Positional parameters
---

{% include menu.html %}

The order of function parameters matters. For example, let us create a function that calculates the difference between two numbers:

```raku
sub diff($a, $b) { $a - $b }
```

It is clear that calling `diff(10, 20)` gives a different result from `diff(20, 10)`.

Parameters in a list with commas, like in the function above, are called _positional_. Their meaning depends on the order of the arguments when you call the function.

{% include nav.html %}
