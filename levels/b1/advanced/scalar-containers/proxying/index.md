---
title: Proxying method calls
---

{% include menu.html %}

In fact, a scalar container is an object of the `Scalar` type. In most cases, you do not even notice the container when you use a scalar. You do not need to think about it. You can imagine that you work directly with the values in it.

This works because a scalar container passes method calls on to its value. For example, after `my $lang = 'Raku'`, you can call the `.chars` method on the variable:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

The program prints `4`, the number of characters in the string `'Raku'`. Now call `.chars` directly on the string value, not on the container variable. The result is exactly the same:

```raku
say 'Raku'.chars; # 4
```

In other words, the container quietly passes the `.chars` call to the string inside it. Then it returns the result to you.

{% include nav.html %}
