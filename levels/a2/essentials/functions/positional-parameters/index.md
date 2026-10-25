---
title: Positional parameters
---

{% include menu.html %}

The order of function parameters is important. For example, take a function. It finds the difference between two numbers:

```raku
sub diff($a, $b) { $a - $b }
```

Of course, `diff(10, 20)` and `diff(20, 10)` give different results.

In the function above, the parameters are a list with commas. Such parameters are called _positional_. In a call, the order of the arguments is important. It decides the meaning of each parameter.

{% include nav.html %}
