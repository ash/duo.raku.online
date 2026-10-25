---
title: Introspection with `WHAT`
---

{% include menu.html %}

To see the data type in a variable, call the `WHAT` method on it:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

As you can see in the comments, the type is printed in parentheses. For example, `(Int)` or `(Str)`.

It is no problem to call a method on a literal itself. For example:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Note that we put `-1` in parentheses. Without them, `say -1.WHAT` would try to put a minus before the result of `1.WHAT`. This leads to an exception.

{% include nav.html %}
