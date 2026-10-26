---
title: Proxying method calls
---

{% include menu.html %}

A scalar container is really an object of the `Scalar` type. Usually, you do not see this container at all. You do not need to think about it. You can imagine that you work directly with the values in it.

Why does this work? A scalar container passes method calls on to the value in it. For example, take the assignment `my $lang = 'Raku'`. After it, you can call the `.chars` method on the variable:

```raku
my $lang = 'Raku';
say $lang.chars; # 4
```

The program prints `4`. This is the number of characters in the string `'Raku'`. Now call `.chars` on the string value itself, not on the variable. The result is exactly the same:

```raku
say 'Raku'.chars; # 4
```

So the container quietly passes the `.chars` call on to its string. Then it gives the result back to you.

{% include nav.html %}
