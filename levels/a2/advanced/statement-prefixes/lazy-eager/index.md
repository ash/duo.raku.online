---
title: Laziness and eagerness
---

{% include menu.html %}

Raku computes some lists only when it needs their elements. Such lists are _lazy_. With the `lazy` and `eager` prefixes, you can control this yourself.

The `eager` prefix makes Raku produce a list **all at once**, right now:

```raku
my @squares = eager (1..3).map(* ** 2);
say @squares; # [1 4 9]
```

The `map` also produces the values without `eager`. But `eager` makes sure that Raku computes all of them at once. It does not wait until you need them.

The `lazy` prefix does the opposite. It marks a list as lazy. Then Raku produces each element only when the code asks for it. So a list can, in theory, have no end:

```raku
my $numbers = lazy (1 .. Inf);
say $numbers.is-lazy; # True
```

The `.is-lazy` method shows that the list is lazy. So it does not try to compute all its elements first. And there is no end to these elements.

But in this example, Raku makes the list lazy anyway. A range with no end, like `1 .. Inf`, is already lazy. So `say (1 .. Inf).is-lazy` prints `True` without the prefix. Here, `lazy` changes nothing. It only shows clearly what you want. The prefix is really useful in another case. Sometimes Raku computes a list eagerly, all at once. With the prefix, you can make such a list lazy.

Most of the time, Raku makes a good choice by itself. Ranges and sequences are lazy. A normal assignment to an array is eager. Use these prefixes when you want a different choice. Use `eager` to make a slow computation happen now. Use `lazy` to put off a very large or endless computation.

{% include nav.html %}
