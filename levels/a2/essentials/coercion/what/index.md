---
title: Introspection with `WHAT`
---

{% include menu.html %}

You can see the type of the data in a variable. Call the `WHAT` method on it:

```raku
my $n = 42;
my $s = '42';
say $n.WHAT; # (Int)
say $s.WHAT; # (Str)
```

Raku prints the type in parentheses. You can see it in the comments. For example, `(Int)` or `(Str)`.

You can also call a method directly on a literal. A literal is a value written in the code. For example:

```raku
say 42.WHAT;      # (Int)
say (-1).WHAT;    # (Int)
say 'Hello'.WHAT; # (Str)
say True.WHAT;    # (Bool)
```

Note the parentheses around `-1`. We need them here. Look at `say -1.WHAT` without parentheses. Here, Raku calls `1.WHAT` first. Then it tries to put a minus before the result. This leads to an exception, a kind of error.

{% include nav.html %}
