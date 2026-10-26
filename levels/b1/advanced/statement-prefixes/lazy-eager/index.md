---
title: Laziness and eagerness
---

{% include menu.html %}

Some lists in Raku are computed only when their elements are needed. Such lists are _lazy_. The `lazy` and `eager` prefixes let you control this directly.

The `eager` prefix makes Raku produce a list **all at once**, straight away:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

Without `eager`, the `map` would still produce the values. But `eager` makes sure that they are all computed right away, not later on demand.

The `lazy` prefix does the opposite. It marks a list as lazy. Then its elements are produced only when the code asks for them. This is what allows a list to be infinite, at least in theory:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

The `.is-lazy` method confirms this. The list will not try to compute all of its endless elements in advance.

In this example, though, Raku would make the list lazy anyway. A range with no end, like `1 .. Inf`, is already lazy. So `say (1 .. Inf).is-lazy` prints `True` without the prefix. Writing `lazy` here changes nothing. It only shows your intention clearly. The prefix is really useful for a list that Raku would otherwise compute eagerly. With `lazy`, you can make such a list lazy.

Most of the time, Raku makes a good choice on its own. Ranges and sequences are lazy, and normal assignment to an array is eager. Use these prefixes when you need to change that choice. Use `eager` to make a costly computation happen now. Use `lazy` to delay a computation that might be large or have no end.

{% include nav.html %}
